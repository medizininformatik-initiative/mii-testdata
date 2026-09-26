# Known issues

Validating the test data produces **2,687 errors**, and `advisor.json` suppresses **820**
of them. Almost none of the remainder are defects in the data: they come from the profiles
the data is built against, and no conformant instance can avoid them. This page states what
is suppressed, why the rest cannot be, and what would remove either.

The numbers here are measured, not estimated — one validation run with `advisor.json` and
one without, both with `-tx n/a`, both reproducible without a terminology certificate:

```bash
IGS=$(jq -r '.dependencies|to_entries|map("-ig "+.key+"#"+.value)|join(" ")' kds-testdata/package.json)
RES=kds-testdata/fsh-generated/resources
java -Xmx14g -jar validator_cli.jar $RES/*.json -version 4.0.1 $IGS -ig $RES -tx n/a \
  -output unfiltered.json
java -Xmx14g -jar validator_cli.jar $RES/*.json -version 4.0.1 $IGS -ig $RES -tx n/a \
  -advisor-file kds-testdata/advisor.json -output filtered.json
./scripts/compare-advisor-runs.py unfiltered.json filtered.json
```

`-Xmx14g` is not optional: with the JVM default (a quarter of RAM, so 4 GB on a standard
CI runner) the validator dies with `OutOfMemoryError` at the first resource, after about
a hundred seconds and without writing a report. With enough heap the whole set takes
**85 seconds**.

### Two views of the same data, and they are not redundant

Before reading any count, know what it counts. The resource directory holds both the
individual instances and the bundles that contain them, so the validator sees each instance
twice — once as a file, once as `Bundle.entry[n]`. The obvious conclusion would be that
half the errors are duplicates and could simply be filtered away. Measured per message
class, that is only half true:

| Message id | only as a file | in both views | **only inside a bundle** |
|---|---:|---:|---:|
| `SLICING_CANNOT_BE_EVALUATED` | 0 | 53 | 1 |
| `Terminology_TX_NoValid_12` | 0 | 18 | 0 |
| `_DT_Fixed_Wrong` | 0 | 12 | 0 |
| `Reference_REF_CantMatchChoice` | 2 | 0 | **193** |
| `Validation_VAL_Profile_Minimum_SLICE` | 56 | 10 | **92** |

For slicing, terminology and fixed-value findings the bundle view really is a repetition —
53 of 54 appear in both.

For **references it is the only view that sees anything at all**: 193 of 195 findings exist
*only* inside the bundle. That is mechanics, not coincidence. A `Reference(Observation/xy)`
resolves to a target only when the target sits in the same bundle; validated as a lone file,
the validator cannot resolve it and therefore never checks the target's profile. Filtering
bundle findings would not tidy up a duplicate — it would discard the entire class of
reference defects, which is where the overlapping `targetProfile` slices show up.
`Validation_VAL_Profile_Minimum_SLICE` splits both ways: 56 findings only as files, 92 only
in bundles.

So the two views overlap for structural findings and complement each other for reference
findings. Both are worth validating, and neither count should be read as the number of
distinct defects.

### Why only 820 are suppressed

Because `advisor.json` can only reach the file copy. A rule is a fixed
`MessageId@FHIRPath` pair, and the path of a bundle-embedded finding looks like

```
Bundle.entry[82].resource/*Observation/mii-exa-test-data-patient-1-icu-vent-pip-1*/.result
```

It carries the entry index and the identity of the resource, so it cannot be written as a
fixed string, and the advisor matches the whole path rather than a suffix. The measurement
shows the consequence exactly: of the 440 `MatchMultiple` findings on files, 434 are
suppressed; of the 440 identical ones inside bundles, **none** are.

The practical ceiling for this format is therefore around 50 %, and the 820 suppressed
errors are essentially all of the file-side findings that rules exist for. An earlier
version of this page claimed 66 %; that figure came from a model of how rule matching
works, and the measurement refuted it. Reported as a validator limitation rather than a
ballot issue — a rule that could anchor on a path suffix would close the gap.

### What the rules cover

| Rule | Suppressed | Affected profiles | Cause |
|---|---:|---|---|
| `Validation_VAL_Profile_MatchMultiple@DiagnosticReport.result` | 434 | `mii-pr-lungenfunktion-bodyplethysmographie`, `-diffusion`, `-spirometrie` and 1 more | The `result` slices are not disjoint: several carry the same `targetProfile`, so one entry matches more than one slice. Upstream: [kerndatensatz-lungenfunktion#45](https://github.com/medizininformatik-initiative/kerndatensatz-lungenfunktion/issues/45). |
| `SLICING_CANNOT_BE_EVALUATED@Observation.component` | 289 | `mii-pr-icu-score-sofa`, `-gcs`, `-icdsc`, `mii-pr-mtb-immunohistochemistry-mmr` and 26 more | The profiles slice `Observation.component` with `discriminator: pattern on code`, but no slice defines a pattern at `component.code` — the patterns sit one level lower, on `code.coding:loinc`/`:sct`, where the discriminator does not look. |
| `SLICING_CANNOT_BE_EVALUATED@Observation.code.coding` | 70 | `mii-pr-icu-score-gcs`, `-visuelle-analogskala`, `mii-pr-icu-untersuchung-pupillenbefund` and 8 more | Same class, on the coding slices — among them an `ieee11073` slice whose discriminator cannot be resolved. |
| `Reference_REF_CantMatchChoice@…` (4 paths) | 4 | `mii-pr-lungenfunktion-spirometrie-messung` and others | Reference slices whose allowed target profiles overlap, so the validator cannot decide which slice a reference satisfies. Nearly all occurrences of this class sit inside bundles and are therefore out of reach. |
| 3 further rules (terminology, fixed values) | 23 | ImplementationGuide parameters, `AdverseEvent.event`, `Procedure` extensions | Inherited from the pre-2027 test data. |

The rules deliberately name one path each rather than a broad prefix. Broadening them would
raise the suppressed count and hide future, genuine defects on the same paths — the point
of the exercise was the opposite.

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
