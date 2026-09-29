# Known Issues - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* **Known Issues**

## Known Issues

# Known issues

Validating the test data leaves **917 errors** in CI, down from **1,883** before the two path-free rules below reached the bundle view as well. Almost none of the remainder are defects in the data: they come from the profiles the data is built against, and no conformant instance can avoid them. This page states what is suppressed, why the rest cannot be, and what would remove either.

The numbers here are measured, not estimated — one validation run with `advisor.json` and one without, both with `-tx n/a`, both reproducible without a terminology certificate:

```
IGS=$(jq -r '.dependencies|to_entries|map("-ig "+.key+"#"+.value)|join(" ")' kds-testdata/package.json)
RES=kds-testdata/fsh-generated/resources
java -Xmx14g -jar validator_cli.jar $RES/*.json -version 4.0.1 $IGS -ig $RES -tx n/a \
  -output unfiltered.json
java -Xmx14g -jar validator_cli.jar $RES/*.json -version 4.0.1 $IGS -ig $RES -tx n/a \
  -advisor-file kds-testdata/advisor.json -output filtered.json
./scripts/compare-advisor-runs.py unfiltered.json filtered.json

```

`-Xmx14g` is not optional: with the JVM default (a quarter of RAM, so 4 GB on a standard CI runner) the validator dies with `OutOfMemoryError` at the first resource, after about a hundred seconds and without writing a report. With enough heap the whole set takes **85 seconds**.

One caveat on absolute counts: whether a terminology cache is present changes them. The same validator over the same resources reports 1,887 errors on a developer machine and 1,696 in CI, and the 191-error gap is entirely terminological — 131 communication failures against `tx.fhir.org` (socket timeouts, a stale `cache-id`), 38 value-set membership checks, 16 display checks. A local `~/.fhir` that carries a terminology cache reaches out to `tx.fhir.org` even under `-tx n/a`; the freshly cloned cache in CI does not.

The structural classes are identical down to the count — `SLICING_CANNOT_BE_EVALUATED` 379/379, `Validation_VAL_Profile_MatchMultiple` 446/446, `Validation_VAL_Profile_Minimum_SLICE` 232/232. That is the premise the terminology-free run rests on, and it is measured rather than assumed.

What such a run cannot see is value-set membership: 38 codes that violate their binding stay invisible without a server, among them 26 against **MII VS Prozedur Durchführungsabsicht**. That is the price of a reproducible baseline, and it is not a claim that the data is terminologically clean. Compare CI runs with CI runs only; a figure from a laptop is an orientation, never the baseline.

The terminology-free run is the baseline because it is reproducible by anyone, not because it is the whole picture. A nightly matrix does validate the full set against the MII SU-TermServ; [what it adds](#what-a-terminology-server-adds), and why it takes thirteen hours to do so, is set out below.

### Two views of the same data, and they are not redundant

Before reading any count, know what it counts. The resource directory holds both the individual instances and the bundles that contain them, so the validator sees each instance twice — once as a file, once as `Bundle.entry[n]`. The obvious conclusion would be that half the errors are duplicates and could simply be filtered away. Measured per message class, that is only half true:

| | | | |
| :--- | :--- | :--- | :--- |
| `SLICING_CANNOT_BE_EVALUATED` | 0 | 53 | 1 |
| `Terminology_TX_NoValid_12` | 0 | 18 | 0 |
| `_DT_Fixed_Wrong` | 0 | 12 | 0 |
| `Reference_REF_CantMatchChoice` | 2 | 0 | **193** |
| `Validation_VAL_Profile_Minimum_SLICE` | 56 | 10 | **92** |

For slicing, terminology and fixed-value findings the bundle view really is a repetition — 53 of 54 appear in both.

For **references it is the only view that sees anything at all**: 193 of 195 findings exist **only** inside the bundle. That is mechanics, not coincidence. A `Reference(Observation/xy)` resolves to a target only when the target sits in the same bundle; validated as a lone file, the validator cannot resolve it and therefore never checks the target's profile. Filtering bundle findings would not tidy up a duplicate — it would discard the entire class of reference defects, which is where the overlapping `targetProfile` slices show up. `Validation_VAL_Profile_Minimum_SLICE` splits both ways: 56 findings only as files, 92 only in bundles.

So the two views overlap for structural findings and complement each other for reference findings. Both are worth validating, and neither count should be read as the number of distinct defects.

### Why a rule sometimes has no path

`advisor.json` knows only `MessageId@FHIRPath` pairs, and a rule with a path reaches the file view of a resource but never its copy inside a bundle. The bundle path looks like

```
Bundle.entry[82].resource/*Observation/mii-exa-test-data-patient-1-icu-vent-pip-1*/.result

```

It carries the entry index and the identity of the resource, so no fixed string matches it. Measured against one bundle, every path-shaped attempt changes nothing:

| | |
| :--- | :--- |
| `SLICING_CANNOT_BE_EVALUATED@Bundle.entry.resource.component` | 256 (unchanged) |
| `…@Bundle.entry.resource.ofType(Observation).component` | 256 (unchanged) |
| `…@*.component`,`…@**.component`,`…@Bundle.entry[*]…` | 256 (unchanged) |
| `SLICING_CANNOT_BE_EVALUATED`—**message id alone, no path** | **59** |

Only dropping the path works, and then the rule applies everywhere: every path, every resource, and every future finding of that class. That is a blunt instrument, so it is used for exactly two message ids, chosen because **no instance can cause or avoid them**:

* `SLICING_CANNOT_BE_EVALUATED` is emitted when the validator cannot evaluate a slicing discriminator. That is a statement about the profile; data has no influence on it.
* `Validation_VAL_Profile_MatchMultiple` is emitted when an element matches more than one slice. With disjoint slices this cannot happen whatever the data says.

Two neighbouring classes are deliberately **not** suppressed this way, and the reason is concrete rather than theoretical. `Reference_REF_CantMatchChoice` would hide a genuinely wrong reference target alongside the overlapping-`targetProfile` defects. And `Validation_VAL_Profile_Minimum_SLICE` caught a real defect in this very repository — a missing `category:VSCat` slice on an ICU observation. A path-free rule on that id would have swallowed it.

### What the rules cover

| | | |
| :--- | :--- | :--- |
| `SLICING_CANNOT_BE_EVALUATED`**(no path)** | `mii-pr-icu-score-sofa`,`-gcs`,`-icdsc`,`mii-pr-mtb-immunohistochemistry-mmr`,`mii-pr-icu-vent-*`and ~30 more | The profiles slice on a`pattern`discriminator while the slice defines no pattern at the discriminator's path — often because the patterns sit one level lower, on`code.coding:loinc`/`:sct`. |
| `Validation_VAL_Profile_MatchMultiple`**(no path)** | `mii-pr-lungenfunktion-bodyplethysmographie`,`-diffusion`,`-spirometrie`,`-provokationstest` | Slices that are not disjoint: several carry the same`targetProfile`, so one entry matches more than one. Upstream:[kerndatensatz-lungenfunktion#45](https://github.com/medizininformatik-initiative/kerndatensatz-lungenfunktion/issues/45). |
| `Reference_REF_CantMatchChoice@hasMember`,`@focus`,`@result`,`@derivedFrom` | `mii-pr-lungenfunktion-spirometrie-messung`and others | Reference slices whose allowed target profiles overlap. Kept path-bound on purpose — see above. |
| 4 further rules (terminology, fixed values) | ImplementationGuide parameters,`AdverseEvent.event`,`Procedure`extensions | Inherited from the pre-2027 test data. |

### What is not suppressed

Findings that belong to the data stay visible — and these have been fixed rather than hidden:

* **Display names** that did not match the code system. The cause turned out to be language, not carelessness: the validator accepts a display in the language of its **context** — `Resource.language`, or this IG's default (`en`) where the resource carries none. That is why the same run demanded the **German** designations for the PHQ-15 answers (their QuestionnaireResponse is `language: de`) and the **English** ones for the document status (no `language` at all). `scripts/check-displays.py` models exactly that rule and now runs as a build gate, in seconds.
* **Questionnaire answer codes** rejected as outside the bound answer value set. These were the same defect seen from the other side — the terminology error on the display cascaded into the option check — and disappeared with the display fix.
* **Mime types** and LOINC answer codes that cannot be resolved.

#### One error that stays, and is not suppressed either

`mii-exa-test-data-patient-1-icu-score-wbf-1` reports a wrong display for `observation-category#survey` and will keep reporting it. `mii-pr-icu-score-wong-baker-faces-schmerzskala` pins `Observation.category.coding.display` to the `patternString` `"Assessment"`, while the code it binds is called `"Survey"` in HL7 terminology. Writing `Survey` violates the pattern and SUSHI refuses to build; writing `Assessment` produces the terminology error. **No conformant instance exists** — which is how the defect was found: the correct fix broke the build.

It would be easy to silence with a rule. It is deliberately left visible: a suppression on `Display_Name…@Observation.category.coding.display` would also hide every future, genuine display error on that path, and one named error is worth more than a quiet rule. Filed as ballot finding 8.

Nor are the structural contradictions suppressed that make coverage impossible rather than noisy — `dataAbsentReason` marked Must-Support next to a required `value[x]`, elements at `max=0` despite Must-Support, placeholder codes (`TODO`) fixed as patterns. Those appear as **blocked** on the [test coverage](test-coverage.md) page, where they are counted rather than hidden.

### What a terminology server adds

The baseline above runs with `-tx n/a`, and that was once the only run there was. It is no longer: a nightly matrix validates all 33 work packages against the MII SU-TermServ (Ontoserver 6.25.3), and since run 36420354901 it completes — all 33 packages, no timeouts. That run reports **1,100 errors**, against 917 without a server.

The difference is not simply "183 more". Some 520 of the 1,100 are terminological — they cannot arise without a server at all — and a further 55 are transport failures that only a server run can produce. Both are worth separating by cause, because three very different things end up in the same list:

**Findings in the data or its profiles.** A `Coding` that is genuinely outside its binding — for example `http://snomed.info/sct#368208006` (**Left upper arm structure**, a perfectly real concept) rejected by **MII VS Biobank BodyStructures SCT**. Those are the errors this run exists for.

**Defects in the tooling, which no change to the data would fix.** Two large groups:

* 21 errors reading `Unknown code '/nL' in the CodeSystem 'http://unitsofmeasure.org'`. `/nL` — per nanolitre, the customary German unit for platelet and leukocyte counts — is valid UCUM. Measured against the same server: `/mL`, `/dL` and `/uL` validate, while `/nL`, `/pL` and `/fL` do not, and neither do `/ng` or `/nm`, although `nL` on its own does. Every prefix below **micro** fails in the per-expression form, whatever the base unit. That is an implementation defect, not a unit our data got wrong.
* 41 errors reading `There is no declared filter called LIST on code system http://loinc.org`. A profile binds a value set whose `compose` uses a LOINC `LIST` filter that the server does not implement. Neither side is wrong about the data; they disagree about a filter.

**Infrastructure noise.** 55 `java.net.SocketTimeoutException: timeout` — the client giving up on a request that the server was still working on. They carry no statement about the resource they are attached to, and they are a symptom of the runtime problem below.

Read the terminology run accordingly: as a list to triage, not as a count to minimise.

### Why the terminology run takes thirteen hours

Because of a single resource, and not one of ours.

The validator attaches every loaded supplement of a code system to **every** `$validate-code` request against that code system, as `tx-resource` parameters. One supplement in the BOM, `mii-cs-kardio-supplement-snomedct`, carries three SNOMED post-coordinated expressions as its `concept.code` and binds `supplements` to a pinned SNOMED version. The server re-classifies those expressions on every single request, and for an inline resource the result is not cached.

Replaying one real request from the proxy log verbatim and varying it:

| | | |
| :--- | :--- | :--- |
| post-coordinated expressions | **59.9 s** | 0.56 s |
| plain SNOMED codes | 0.53 s | 0.53 s |

Without the `tx-resource` parameter at all: 0.25 s. One expression is enough — it is the classification, not the volume. Of the six supplements in the BOM, only this one carries both traits.

Across the full run, **10.1 of 10.3 hours of terminology wait — 98 % — went to 730 such requests**; the other 3,293 requests cost ten minutes together. Every package holding SNOMED-bound resources pays it, microbiology and pulmonary function included, not just cardiology. The test data itself contains no post-coordinated codes: all 1,835 SNOMED codings are plain SCTIDs, and no resource here references that supplement. It arrives through package resolution and rides along regardless.

Filed as finding 11 in `docs/ballot-findings-2027.md`, with two addressees: the module, to drop the version pin (the other five MII supplements bind unversioned, which alone accounts for the factor of 110), and the Service Unit, for a cache keyed on `tx-resource` content.

### Reproducing and reviewing the rules

```
# What do the clusters look like, and on which profiles?
./scripts/advisor-rules.py validation-unfiltered.json

# What exactly would a candidate rule hide?
./scripts/advisor-rules.py validation-unfiltered.json \
  --test "SLICING_CANNOT_BE_EVALUATED@Observation.component"

```

One caveat on the tooling: `advisor-rules.py` models how the validator matches a rule against an element path — it is a model, not the validator. The authoritative number is the difference between two real validation runs, which `compare-advisor-runs.py` computes from their reports. Where the two disagree, trust the runs and fix the model.

