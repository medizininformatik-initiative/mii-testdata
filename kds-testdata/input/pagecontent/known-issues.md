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

The risk is obvious: a rule written too broadly hides future, genuine defects. What
addresses that:

- **Every rule was measured before it was added.** `scripts/advisor-rules.py` reports, for
  a candidate rule, how many errors it hits, in which files and on which profiles. No rule
  entered `advisor.json` without that number, and the table below is that measurement.
- **The measurement is repeatable by anyone.** `scripts/compare-advisor-runs.py` diffs a
  validation report produced with `advisor.json` against one produced without it, so the
  suppressed set can be re-derived from any validation run rather than taken on trust.

Being straight about the limit: this is a measurement taken at a point in time, not a
standing gate. An earlier version of this page promised a CI job that validated twice on
every run and reported the delta. That job was removed — validation here follows the same
reusable MII workflow as the KDS modules, and a second, bespoke validation pass alongside
it was more machinery than the repository should carry. So when a profile changes upstream,
re-running `advisor-rules.py` is a deliberate step, not something CI does for you.

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

Findings that belong to the data stay visible — and these have been fixed rather than
hidden:

- **Display names** that did not match the code system. The cause turned out to be
  language, not carelessness: the validator accepts a display in the language of its
  *context* — `Resource.language`, or this IG's default (`en`) where the resource
  carries none. That is why the same run demanded the *German* designations for the
  PHQ-15 answers (their QuestionnaireResponse is `language: de`) and the *English* ones
  for the document status (no `language` at all). `scripts/check-displays.py` models
  exactly that rule and now runs as a build gate, in seconds.
- **Questionnaire answer codes** rejected as outside the bound answer value set. These
  were the same defect seen from the other side — the terminology error on the display
  cascaded into the option check — and disappeared with the display fix.
- **Mime types** and LOINC answer codes that cannot be resolved.

#### One error that stays, and is not suppressed either

`mii-exa-test-data-patient-1-icu-score-wbf-1` reports a wrong display for
`observation-category#survey` and will keep reporting it.
`mii-pr-icu-score-wong-baker-faces-schmerzskala` pins
`Observation.category.coding.display` to the `patternString` `"Assessment"`, while the
code it binds is called `"Survey"` in HL7 terminology. Writing `Survey` violates the
pattern and SUSHI refuses to build; writing `Assessment` produces the terminology error.
**No conformant instance exists** — which is how the defect was found: the correct fix
broke the build.

It would be easy to silence with a rule. It is deliberately left visible: a suppression
on `Display_Name…@Observation.category.coding.display` would also hide every future,
genuine display error on that path, and one named error is worth more than a quiet rule.
Filed as ballot finding 8.

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
against an element path — it is a model, not the validator. The authoritative number is
the difference between two real validation runs, which `compare-advisor-runs.py` computes
from their reports. Where the two disagree, trust the runs and fix the model.
