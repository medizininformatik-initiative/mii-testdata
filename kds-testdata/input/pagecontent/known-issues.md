# Known issues

Validating the test data currently produces about 2,800 errors. **Most of them are not
defects in the data** — they come from the profiles the data is built against, and no
conformant instance can avoid them. This page lists what is suppressed during validation,
why, and what would remove the suppression.

Every entry here is also filed as a [ballot comment](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ballot-kommentare-2027.csv)
with the module maintainers. The suppressions are meant to be **temporary**: once a
profile is fixed, the corresponding rule should be deleted, and the error count should
stay where it is.

### Why suppress at all

An error list in which 66 % of entries cannot be acted on is not a quality signal — it
buries the 954 remaining findings that *are* actionable. Suppression restores the signal.

The risk is obvious: a rule written too broadly hides future, genuine defects. Two
safeguards address that:

- **Every rule was measured before it was added.** `scripts/advisor-rules.py` reports, for
  a candidate rule, how many errors it hits, in which files and on which profiles. No rule
  entered `advisor.json` without that number.
- **CI validates twice, with and without `advisor.json`,** and reports the difference on
  every run (`validation-advisor-control`). If a suppression starts hiding more than it
  did, the delta shows it. That job exists precisely so that this page cannot quietly
  become a lie.

### The suppressed rules

| Rule | Hits | Affected profiles | Cause |
|---|---:|---|---|
| `SLICING_CANNOT_BE_EVALUATED@Observation.component`<br>`…@component` | 578 | `mii-pr-icu-score-sofa`, `-gcs`, `-icdsc`, `mii-pr-mtb-immunohistochemistry-*` and 26 more | The profiles slice `Observation.component` with `discriminator: pattern on code`, but no slice defines a pattern at `component.code`. The patterns sit one level lower on `code.coding:loinc`/`:sct`, where the discriminator does not look. |
| `SLICING_CANNOT_BE_EVALUATED@Observation.code.coding`<br>`…@code.coding` | 140 | `mii-pr-icu-score-gcs`, `-visuelle-analogskala`, `mii-pr-lungenfunktion-gewicht` and 8 more | Same class, on the coding slices — among them an `ieee11073` slice whose discriminator cannot be resolved. |
| `Validation_VAL_Profile_MatchMultiple@DiagnosticReport.result`<br>`…@result` | 880 | `mii-pr-lungenfunktion-bodyplethysmographie`, `-diffusion`, `-spirometrie` and 2 more | The `result` slices are not disjoint: several slices carry the same `targetProfile`, so one entry matches more than one slice. Reported upstream as [kerndatensatz-lungenfunktion#45](https://github.com/medizininformatik-initiative/kerndatensatz-lungenfunktion/issues/45). |
| `Reference_REF_CantMatchChoice@hasMember`, `@focus`,<br>`@result`, `@derivedFrom` | 263 | `mii-pr-onko-diagnose-primaertumor`, `mii-pr-patho-finding`, `mii-pr-seltene-familienanamnese` and more | Reference slices whose allowed target profiles overlap, so the validator cannot decide which one a reference satisfies. |

Together these hide **1,861 of 2,815 errors (66 %)**. The remaining 954 are reported
normally — and among them are the ones that belong to the test data.

### What is *not* suppressed

Findings that belong to the data stay visible and get fixed:

- **Display names** that do not match the code system (`Assessment` instead of `Survey`,
  `Deutschland` instead of `Germany`, English labels where the MII code system defines
  German ones)
- **Questionnaire answer codes** outside the answer value set bound by the questionnaire
- **Mime types** and LOINC answer codes that cannot be resolved

Nor are the structural contradictions suppressed that make coverage impossible rather than
noisy — `dataAbsentReason` marked Must-Support next to a required `value[x]`, elements at
`max=0` despite Must-Support, placeholder codes (`TODO`) fixed as patterns. Those appear
as *blocked* on the [test coverage](test-coverage.html) page, where they are counted rather
than hidden.

### Reproducing and reviewing the rules

```bash
# What do the clusters look like, and on which profiles?
./scripts/advisor-rules.py validation-unfiltered.json

# What exactly would a candidate rule hide?
./scripts/advisor-rules.py validation-unfiltered.json \
  --test "SLICING_CANNOT_BE_EVALUATED@Observation.component"
```

One caveat on the tooling: `advisor-rules.py` models how the validator matches a rule
against an element path. The authoritative number is the difference reported by the
`validation-advisor-control` job in CI — if it disagrees with the prediction, trust the
job and fix the model.
