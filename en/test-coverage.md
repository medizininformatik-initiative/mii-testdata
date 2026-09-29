# Test Coverage - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* **Test Coverage**

## Test Coverage

# Test coverage

This page states what the test data promises to cover and shows the measured state — always against **one specific version of the MII Kerndatensatz complete** (the BOM) that the data is built and measured against (see the reference version below).

### The coverage contract

The test data follows a three-part contract, each part measured against the profile snapshots of the pinned BOM:

**1. Profile coverage** — every instantiable profile in the BOM has at least one example instance declaring it via `meta.profile`. Abstract profiles count as covered through their derived profiles.

**2. Must-Support coverage** — every MS element of a profile in use is populated in **at least one** instance of that profile. This deliberately produces **variant instances** wherever a single example cannot carry every MS element:

* **Choice variants**: if several `value[x]` or `onset[x]` forms are MS (for example `abatementAge` **and** `abatementDateTime`), each form needs its own instance.
* **Slice alternatives**: where MS slices exclude one another (`medicationReference` versus `medicationCodeableConcept`), one instance covers each branch.
* **`dataAbsentReason`**: where DAR itself is MS, **every structurally possible occurrence** gets an absent variant — not just one per profile family. Where a profile requires a value and marks DAR as MS at the same time, no conformant instance exists; those cases appear as **blocked** below.

**3. Invariant coverage** — for profile invariants (FHIRPath constraints) at least one example shows the constraint **satisfied**; for branching invariants, one example **per branch**. Implemented examples:

* `DosageDE` (medication): **either** a fully structured dosage (`timing` plus `doseAndRate`, no free text) **or** pure free text — covered by the patient pair **patient-1 (structured)** / **patient-2 (unstructured)**.
* `mii-pr-mikrobio-resistenzkategorie-status`: positive **and** negative finding.
* `sba-1` (sociodemographics, disability certificate): details only where a certificate exists — a yes branch with degree and marks, a no branch without.

Beyond that: **referential integrity** within every bundle, enforced in CI against Blaze with `ENFORCE_REFERENTIAL_INTEGRITY`, and consistent labelling (`meta.security = HTEST`, `meta.source`).

Since a single server only catches what it happens to be strict about, CI loads every bundle into **both Blaze and HAPI** and reports any discrepancy. That check found a Specimen reference written as an absolute URL into the MII canonical namespace: Blaze accepted it, HAPI rejected it as an external reference.

### Measured state

`scripts/ms-coverage.py` regenerates these figures on every IG build:

**Reference version: MII Kerndatensatz complete [`2027.0.0-ballot.19`](https://github.com/medizininformatik-initiative/kerndatensatz-complete/releases/tag/v2027.0.0-ballot.19)** — every figure on this page refers to the profile snapshots of that BOM version.

13658 MS elements across the profiles in use · **95 top-level unpopulated nodes**

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| bildgebung | 12/12 | 381/381 | 100 % | — |
| biobank | 11/11 | 302/302 | 100 % | — |
| consent | 3/3 | 77/77 | 100 % | — |
| diagnose | 1/1 | 77/77 | 100 % | — |
| dokument | 1/1 | 70/70 | 100 % | — |
| fall | 1/1 | 96/96 | 100 % | — |
| icu | 94/94 | 2939/2994 | 98 % | `dataAbsentReason`,`value[x]`,`component.dataAbsentReason` |
| kardio | 13/13 | 360/361 | 100 % | `code.coding:icd10-gm.extension:Seitenlokalisation` |
| labor | 3/3 | 151/151 | 100 % | — |
| lungenfunktion | 39/48 | 1535/1556 | 99 % | `component`,`component:predicted`,`component:percentPredicted` |
| medikation | 5/5 | 437/437 | 100 % | — |
| meta | 0/1 | 0/0 | – | — |
| mikrobio | 21/21 | 1387/1427 | 97 % | `referenceRange`,`container.additive[x]`,`extension:focus` |
| molgen | 16/16 | 247/248 | 100 % | `extension:recommended-action` |
| mtb | 50/50 | 1515/1517 | 100 % | `action.action` |
| onko | 76/76 | 1982/2023 | 98 % | `code.coding:ops.extension:Seitenlokalisation`,`code.coding:ops.version` |
| patho | 17/17 | 468/468 | 100 % | — |
| person | 5/5 | 258/258 | 100 % | — |
| pro | 21/23 | 292/292 | 100 % | — |
| prozedur | 1/1 | 46/46 | 100 % | — |
| seltene | 23/23 | 606/607 | 100 % | `code.coding:icd10-gm.extension:Seitenlokalisation` |
| soziodemographie | 16/16 | 149/153 | 97 % | `dataAbsentReason` |
| studie | 7/7 | 78/78 | 100 % | — |
| symptom | 2/2 | 39/39 | 100 % | — |

Full report (per profile, plus populated non-MS paths as ballot feedback candidates): [docs/ms-coverage-2027.md](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ms-coverage-2027.md)

**How to read it.** Not every gap is a defect in an instance. The remaining open nodes fall into four documented categories:

1. **Upstream contradictions**— profiles with`value[x] 1..1`**and**MS`dataAbsentReason`(ICU balances, sociodemographics, microbiology resistance status): a DAR instance would be invalid under obs-6. Filed as ballot feedback.
1. **Not meaningfully populatable**—`valueQuantity`variants on purely qualitative microbiology profiles, where a number would not constitute a finding. Reference ranges and specimen links are expressly**no longer**in this group: they are populated with plausible values, even without a literature source.
1. **Unverifiable terminology**— where no defensible code exists, no guessed one enters the test data. This mainly affects predicted and percent-predicted values: neither LOINC nor SNOMED has a predicted concept for respiratory rate or haemoglobin, and**percent of predicted**does not exist for the body plethysmography quantities in any of the three code systems checked.
1. **Measurement limits**— extensions on primitives (`_effectiveDateTime`and similar) are only partly recognised by the heuristic; the data is largely present there.

One witness is enough. The machine-readable coverage index (`docs/ms-coverage-index.json` in the repository) names the instances backing each MS element and serves as a regression radar when test data is restructured.

### Where nothing has been written yet

The view below lists every Must-Support node without a backing instance. Click a module bar to filter the table; the search box matches element, profile and module.

The distinction in the status column is the important part. **Feasible** means the profile permits population and only the instance is missing. **Blocked** means the profile itself prevents it — because it requires a value while marking `dataAbsentReason` as Must-Support (obs-6 excludes the two), because an element sits at `max=0` despite being Must-Support, or because a placeholder code (`TODO`) is fixed as a pattern. Those cases are documented in the [ballot findings](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ballot-findings-2027.md) and addressed to the module maintainers.

covered
98,8 %
13.492 of 13.658 MS elements

feasible
111
open, but populatable

blocked
55
the profile prevents population

**covered
**feasible
**blocked

all
feasible only
blocked only

|
|

### Reading a validation result

Two conditions decide what a validation run means, and both are easy to get wrong.

**Which terminology server was used.** Counter-intuitively, an **incomplete** terminology server is worse than none at all. Without one, unknown code systems produce warnings; with one, they become hard errors. Measured on four bundles: 185 errors with `-tx n/a` against 382 with a server carrying only LOINC and SNOMED. Of the 2,266 required bindings in the BOM only 73 point at BfArM systems (OPS, ICD-10-GM, ATC, Alpha-ID, ICD-O-3) — but those are the axes on which test data codes most densely, so every diagnosis, procedure and medication turns into an error at once.

**How many errors belong to the data.** A large share does not. The 132 slicing errors on the ICU score profiles are byte-identical with and without a terminology server: the profiles slice `Observation.component` on a discriminator that no slice defines a pattern for. No instance can satisfy that, and it is also what drives the validator into an `OutOfMemoryError` while assembling its slicing summary.

So a bare error count says little. The number worth reporting is how many errors remain after separating terminology conditions from structural defects in the profiles — and those defects are filed as [ballot findings](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ballot-findings-2027.md).

### Limits and next steps

The MS measurement is heuristic (base path matching, extension slices via their URL; details in the script docstring). Invariant coverage is **curated** rather than measured — evaluating each constraint in FHIRPath against all instances, including branch detection, is the next step.

