# Usage

### Obtaining the test data

Every [GitHub release](https://github.com/medizininformatik-initiative/mii-testdata/releases) ships three assets:

| Asset | Contents | Use it for |
|---|---|---|
| `testdata-bundles-ndjson-*.zip` | All transaction bundles as **NDJSON**, one bundle per line | Consumption: bulk load, pipelines, import scripts |
| `kds-testdata-*.zip` | The complete `fsh-generated` output (every individual resource plus the bundles as JSON) | Individual resources, validation, development |
| `de.medizininformatikinitiative.kerndatensatz.testdata-*.tgz` | A FHIR NPM package with all instances under `package/example/` | Tooling: `-ig` for the validator, resolution via the package cache |

The NDJSON contains **28 transaction bundles** — 17 module bundles and 11 patient bundles. The patho document bundle travels inside the patho transaction bundle rather than as its own line, because only `transaction` and `batch` bundles belong at a server's base endpoint.

Example — fetch the latest release and load it into a FHIR server:

```bash
# Download the NDJSON of the latest release
gh release download --repo medizininformatik-initiative/mii-testdata \
  --pattern 'testdata-bundles-ndjson-*.zip' && unzip testdata-bundles-ndjson-*.zip

# POST each bundle as a transaction
while IFS= read -r bundle; do
  curl -sf -X POST -H "Content-Type: application/fhir+json" \
    -d "$bundle" "http://localhost:8080/fhir" > /dev/null && echo "OK"
done < testdata-bundles-*.ndjson
```

### Local FHIR servers (included in the repository)

- **Two-server load test** (`scripts/check-servers.sh`): starts Blaze and HAPI, loads every bundle into both and reports any discrepancy. This is not redundancy — the servers differ in strictness, and a bundle that one accepts may be rejected by the other. The same script runs in CI on every push.
- **Blaze smoke test** (`blaze/`): `docker compose -f blaze/blaze.yml up -d --wait`, then `blaze/load-bundles.sh kds-testdata/fsh-generated/resources` — loads all bundles as transactions **with referential integrity enforced**.
- **Integration tests** (`integration-tests/`): docker-compose with **HAPI** (port 8080) and **Blaze** (port 8082) plus a SearchParameter test suite (`make help` lists all targets).
- **Validator** (`validator-docker/`): the HL7 Java validator as a Docker image with the KDS packages preloaded, for offline validation of your own resources against the 2027 ballot profiles.

No **pre-filled server image** is published. Measured, it would not pay off: a Blaze image with the data baked in comes to roughly 675 MB against 616 MB for the official image, and the data it saves you from loading takes about two seconds. HAPI is configured for in-memory H2 here, so a pre-filled image is not possible at all without switching to a persistent database first.

### Labelling

Every instance carries `meta.security = HTEST` ("test health data", `v3-ActReason`) and a `meta.source` naming the simulated source system. Receiving systems can filter test data reliably on either.

### Licence

The test data is published under **[CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/)** (public domain dedication) — use, modify and redistribute without restriction, including commercially.

This does not extend to the **terminologies used**. The instances contain codes from SNOMED CT, LOINC, ICD-10-GM, OPS, ATC and UCUM among others; using those productively is subject to their own licence terms (for example the SNOMED CT affiliate licence or the German NLC framework, and the BfArM terms for ICD-10-GM and OPS).

### Disclaimer

All data is **entirely synthetic**. There is no relation to real persons; any resemblance to real people, cases or identifiers would be coincidental. The clinical courses shown exist solely to test KDS-conformant systems technically — they are **not suitable for clinical use, diagnosis or treatment decisions** and make no claim to medical correctness or completeness. The data is provided without warranty; liability for damages arising from its use is excluded to the extent permitted by law.

This applies expressly to the **codings** as well. Codes (ICD-10-GM, OPS, SNOMED CT, LOINC, ATC and others) and their combinations were chosen to exercise structure, not to document care. They are syntactically valid and drawn from the real catalogues, but they are **not a coding, billing or documentation recommendation** — neither the clinical fit of a code to the case shown nor the completeness of the coding is warranted. The test data is not a reference for correct coding and is **not suitable as a basis for research or care**.

A concrete illustration of why that matters: several lung function profiles pin a unit by pattern that does not match the quantity — body weight in `ug`, predicted respiratory rate in `L`. Conformant instances have no choice but to carry those units. The findings are documented in [`docs/ballot-findings-2027.md`](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ballot-findings-2027.md) and filed with the module maintainers.
