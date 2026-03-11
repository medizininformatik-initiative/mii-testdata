"""
MII KDS SearchParameter Integration Tests

Tests that SearchParameters are correctly loaded and queryable on FHIR servers.
Reads test definitions from search-parameter-tests.yaml and executes them
against the configured FHIR server (HAPI or Blaze).

Environment variables:
    FHIR_BASE_URL:   Base URL of the FHIR server (default: http://localhost:8080/fhir)
    FHIR_SERVER_NAME: Server name for skip logic (default: hapi)
"""

import os
from pathlib import Path

import pytest
import requests
import yaml

# Configuration
FHIR_BASE_URL = os.environ.get("FHIR_BASE_URL", "http://localhost:8080/fhir")
FHIR_SERVER_NAME = os.environ.get("FHIR_SERVER_NAME", "hapi")
TESTS_DIR = Path(__file__).parent
TIMEOUT = 30


def load_test_definitions():
    """Load test definitions from YAML file."""
    yaml_path = TESTS_DIR / "search-parameter-tests.yaml"
    with open(yaml_path) as f:
        data = yaml.safe_load(f)
    return data.get("tests", [])


def make_test_id(test_def):
    """Create a readable test ID from a test definition."""
    return f"{test_def['sp_source']}/{test_def['sp_code']}"


TEST_DEFINITIONS = load_test_definitions()


@pytest.fixture(scope="session")
def fhir_session():
    """Create a requests session for FHIR server communication."""
    session = requests.Session()
    session.headers.update({
        "Accept": "application/fhir+json",
        "Content-Type": "application/fhir+json",
    })
    return session


@pytest.fixture(scope="session")
def server_metadata(fhir_session):
    """Fetch and cache server metadata to verify connectivity."""
    resp = fhir_session.get(f"{FHIR_BASE_URL}/metadata", timeout=TIMEOUT)
    resp.raise_for_status()
    return resp.json()


def test_server_is_reachable(server_metadata):
    """Verify the FHIR server is reachable and returns a CapabilityStatement."""
    assert server_metadata["resourceType"] == "CapabilityStatement"


@pytest.mark.parametrize(
    "test_def",
    TEST_DEFINITIONS,
    ids=[make_test_id(t) for t in TEST_DEFINITIONS],
)
def test_searchparameter(test_def, fhir_session, server_metadata):
    """
    Test a SearchParameter query against the FHIR server.

    Verifies:
    1. The query returns HTTP 200
    2. The response is a valid FHIR Bundle
    3. The total meets the minimum expected count (if specified)
    4. Specific resource IDs are present in results (if specified)
    """
    # Check skip_servers
    skip_servers = test_def.get("skip_servers", [])
    if FHIR_SERVER_NAME in skip_servers:
        pytest.skip(f"Skipped for server: {FHIR_SERVER_NAME}")

    query = test_def["query"]
    expected = test_def.get("expected", {})

    # Execute search query
    url = f"{FHIR_BASE_URL}/{query}"
    resp = fhir_session.get(url, timeout=TIMEOUT)

    # Assert HTTP 200
    assert resp.status_code == 200, (
        f"SP '{test_def['sp_code']}' query failed: "
        f"HTTP {resp.status_code}\n"
        f"URL: {url}\n"
        f"Body: {resp.text[:500]}"
    )

    # Assert valid Bundle
    bundle = resp.json()
    assert bundle.get("resourceType") == "Bundle", (
        f"Expected Bundle, got: {bundle.get('resourceType')}"
    )

    # Assert minimum total
    min_total = expected.get("min_total")
    if min_total is not None and min_total > 0:
        total = bundle.get("total", 0)
        # Some servers don't return total, count entries instead
        if total == 0:
            total = len(bundle.get("entry", []))
        assert total >= min_total, (
            f"SP '{test_def['sp_code']}': expected at least {min_total} results, "
            f"got {total}\nURL: {url}"
        )

    # Assert specific resource IDs in results
    contains_ids = expected.get("contains_id", [])
    if contains_ids:
        result_ids = set()
        for entry in bundle.get("entry", []):
            resource = entry.get("resource", {})
            rid = resource.get("id")
            if rid:
                result_ids.add(rid)

        for expected_id in contains_ids:
            assert expected_id in result_ids, (
                f"SP '{test_def['sp_code']}': expected resource '{expected_id}' "
                f"not found in results.\n"
                f"Found IDs: {sorted(result_ids)}\n"
                f"URL: {url}"
            )
