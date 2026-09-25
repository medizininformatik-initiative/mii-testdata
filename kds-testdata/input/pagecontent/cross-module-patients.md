# Cross-Module Example Patients

The test data has three layers. The first two already existed:

| Layer | Bundles | What it demonstrates |
|---|---|---|
| **Technically complete** | 16 module bundles (`bundle-<modul>-1`) | Every profile of a module instantiated at least once, every Must-Support element populated. One dedicated patient per module. |
| **Clinically coherent** | 10 patient bundles (`bundle-pat-1` … `-pat-10`) | A plausible course of treatment across the **core** modules: Person, Fall, Diagnose, Prozedur, Labor, Medikation, Consent. |
| **Cross-module** | 4 example patients (`bundle-pat-11` … `-pat-14`) | One patient carrying core modules **and** extension modules — so that cross-module joins become testable. |

The third layer closes a gap the first two leave open by construction. The module bundles are complete, but each has **its own patient**; no question spanning two modules can be answered from them. Patient bundles 1–10 do span modules, but only the core ones.

The four example patients are therefore not driven by profile coverage — that already sits at roughly 98 % across modules — but each by **one concrete analytical question** that needs exactly this connection. Every journey is modelled on a real MII research project.

---

## Patient-11 — Research project, sociodemographics and a PROM course

*Model: observational registry study on cardiovascular risk with structured baseline documentation and PROM assessment (ACRIBiS-style).*

**Modules:** Person · Fall · Diagnose · Prozedur · Labor · Medikation · Consent **+ Studie · Soziodemographie · PRO**

Ingrid Hallermann, 65, left heart failure NYHA III. Inpatient decompensation in January 2025, then enrolment in the registry study MII-CARE-PRO-2025 with a sociodemographic baseline survey and PROM measurement at three time points.

**What only works here:** a **longitudinal PROM course**. The PRO module bundle holds all scores at *one* point in time — a course analysis cannot be tested against it. Here EQ-5D-5L is present at T0/T3/T6 and PHQ-9 at T0/T6, each with its own QuestionnaireResponse correctly bound via `derivedFrom` (EQ-5D-5L index 0.512 → 0.712 → 0.823; PHQ-9 14 → 8).

Also a first: outpatient encounters (`class = AMB`, contact type `ub`) — until now every encounter in the test data was inpatient.

**Modelling limit:** `Observation.partOf` cannot point to `ResearchStudy` in R4. The link between a PROM measurement and the research project therefore runs through the `ResearchSubject` and the visit encounter — not through the individual observation.

## Patient-12 — Sepsis in intensive care

*Model: infection surveillance and antibiotic stewardship (SMITH ASIC / HELP, SmICS).*

**Modules:** Person · Fall · Diagnose · Prozedur · Labor · Medikation · Consent **+ ICU · Mikrobiologie**

Gerhard Woltmann, 71, Klebsiella pneumonia with septic shock. Intubation and ventilation, blood culture, empirical therapy with piperacillin/tazobactam, switched to meropenem once the susceptibility report arrived.

**What only works here:** a **causal edge between microbiology and medication**. The meropenem request carries

```
reasonReference    → Observation/…-mibi-mrgn-1          (3MRGN finding)
reasonReference    → Observation/…-mibi-ast-meropenem   (meropenem susceptible)
priorPrescription  → MedicationRequest/…-medrequest-1   (the discontinued therapy)
```

and the discontinued piperacillin/tazobactam request sits at `status = stopped` with a `statusReason`. The core question of stewardship analyses — *which switch followed which resistance finding, and how many hours lay between them?* — is therefore answerable from the data alone.

On top of that a **SOFA course** across three time points (12 → 9 → 4); the ICU module bundle has exactly one instance per score.

**Terminology gap (ballot candidate):** LOINC 2.83 has no dedicated observable code for the ESBL phenotype — only gene-related LP parts (blaCTX-M, blaSHV, blaTEM …) and answer codes. The generic code 105277-8 "Beta lactamase [Presence] in Isolate" is used instead, with the phenotype carried in text.

## Patient-13 — Diagnostic odyssey in a rare disease

*Model: CORD-MI (Collaboration on Rare Diseases).*

**Modules:** Person · Fall · Labor · Medikation · Consent **+ Symptom · Seltene Erkrankungen**

Miriam Kastner, 34, Fabry disease. First symptoms from 2011, diagnosis only in December 2023 — triggered not by the symptoms but by incidentally discovered proteinuria.

**What only works here:** the **diagnostic delay as a measurable quantity**. The three symptom complexes carry `onsetPeriod.start` between 2011 and 2016, while their `recordedDate` is 2024 — they were captured retrospectively during history taking. The difference to the assertion date of the diagnosis (2023-12-08) yields **12 years**. That figure is precisely the target of CORD-MI-style analyses, and it only emerges because symptoms (Symptom module) and diagnosis (Seltene module) hang off the same patient.

The respective misattributions are recorded in `note.text`: "growing pains", "irritable bowel syndrome". Without them the data would look like a smooth course — yet the misattribution is exactly what should become visible.

One HPO assessment is deliberately documented as an **exclusion** (no angiokeratomas detectable, frequently absent in heterozygous women): the documented exclusion is informative, not the absence of the resource.

## Patient-14 — Personalised oncology

*Model: PM4Onco / MIRACUM molecular tumor board.*

**Modules:** Person · Fall · Prozedur · Medikation · Consent **+ Onkologie · MTB**

Hartmut Brenneke, 58, adenocarcinoma of the sigmoid colon, pT3 pN2 M1(HEP), G2. The pathology report shows MLH1/PMS2 loss, prompting molecular diagnostics instead of standard chemotherapy.

**What only works here:** a **chain across three modules**:

```
Onko diagnosis → Onko report → TNM → Onko tumor conference
  → MTB treatment episode → NGS (BRAF V600E, MSI-H, TMB 41.3)
  → MTB therapeutic implication → MTB therapy recommendation
  → Onko systemic therapy → Onko course (partial remission)
```

The therapeutic implication derives via `derivedFrom` from **two** findings (MSI and TMB), and the oncological systemic therapy references the MTB therapy plan via `basedOn` — not the pre-therapeutic tumor conference. This makes answerable: *which molecular finding led to which therapy, and what was the response?*

The pre-therapeutic tumor conference records the deferred chemotherapy explicitly with `status = cancelled` and a `statusReason` — the therapy deviation is data, not an omission.

---

## Conventions of the example patients

**One folder per journey.** The resources live in `input/fsh/journey-<name>/` rather than spread across the module folders. Each journey is therefore readable, reviewable and removable as a whole.

**Shared infrastructure is reused.** Organisations, practitioners, laboratory devices and study registries are referenced from the existing module bundles and carried along inside the bundle — only the patient-related resources are new. The bundles remain self-contained nonetheless.

**All references are relative.** No journey bundle contains an absolute reference. Absolute URLs into the MII canonical namespace are not resolvable server addresses: HAPI rejects them as external references (HAPI-0507), while Blaze accepts them — a class of defect that a load test against a single server would hide.

**Codes are verified against the terminology server.** Every SNOMED, LOINC, ICD-10-GM, OPS, ATC, ORPHA and HPO code used was validated individually. Where no suitable code exists, that fact is recorded as a comment in the FSH source instead of an invented code in the data — for medicinal products this explicitly covers PZN, ASK, UNII and CAS, which are deliberately left empty.

**Verified state.** `sushi build` runs without errors; referential integrity within each of the four bundles is closed; `check-coding-quality.py` reports no text-only CodeableConcepts and no codings without system/code; all bundles load into both Blaze and HAPI without error or divergence.

> **Coding disclaimer:** The test data is synthetic. The ICD, OPS and ICD-O-3 codings are plausibility-checked but must not be read as coding guidance.
