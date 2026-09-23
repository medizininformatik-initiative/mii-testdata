# Must-Support-Abdeckung der Testdaten (2027-Ballot)

Generiert von `scripts/ms-coverage.py`. **Source of Truth sind die Snapshot-StructureDefinitions des gepinnten Packages `de.medizininformatikinitiative.kerndatensatz.complete#2027.0.0-ballot.19`** — nicht der Branch-Zustand. Heuristik siehe Skript-Docstring.

MS-Elemente über alle genutzten Profile: **13834** · oberste unbefüllte Knoten: **332**

## Übersicht je Modul

| Modul | Profile genutzt/gesamt | MS befüllt/gesamt | Coverage |
|---|---|---|---|
| modul-bildgebung | 12/12 | 373/383 | 97.4 % |
| modul-biobank | 11/11 | 293/302 | 97.0 % |
| modul-consent | 3/3 | 77/77 | 100.0 % |
| modul-diagnose | 1/1 | 77/77 | 100.0 % |
| modul-dokument | 1/1 | 69/70 | 98.6 % |
| modul-fall | 1/1 | 96/96 | 100.0 % |
| modul-icu | 94/94 | 2787/2996 | 93.0 % |
| modul-kardio | 13/13 | 362/362 | 100.0 % |
| modul-labor | 3/3 | 151/151 | 100.0 % |
| modul-lungenfunktion | 39/48 | 1412/1556 | 90.7 % |
| modul-medikation | 5/5 | 437/437 | 100.0 % |
| modul-meta | 0/1 | 0/0 | – |
| modul-mikrobio | 21/21 | 1520/1583 | 96.0 % |
| modul-molgen | 16/16 | 240/248 | 96.8 % |
| modul-mtb | 50/50 | 1513/1520 | 99.5 % |
| modul-onko | 76/76 | 2028/2035 | 99.7 % |
| modul-patho | 17/17 | 456/468 | 97.4 % |
| modul-person | 5/5 | 254/258 | 98.4 % |
| modul-pro | 21/23 | 290/292 | 99.3 % |
| modul-prozedur | 1/1 | 46/46 | 100.0 % |
| modul-seltene | 23/23 | 606/607 | 99.8 % |
| modul-soziodemographie | 16/16 | 149/153 | 97.4 % |
| modul-studie | 7/7 | 76/78 | 97.4 % |
| modul-symptom | 2/2 | 38/39 | 97.4 % |
| **GESAMT** | 438/450 | 13350/13834 | 96.5 % |

## Richtung A: unbefüllte MS-Elemente je Modul

| Modul | Lücken | häufigste fehlende Elemente |
|---|---|---|
| modul-bildgebung | 2 | `dosage.rate[x]:rateRatio.denominator`, `dosage.rate[x]:rateRatio.numerator` |
| modul-biobank | 9 | `extension:focus`×3, `extension:anzahlAliquots`×2, `processing.extension:temperature-miabis`×2, `extension:collectionDesign`, `extension:collectionSetting` |
| modul-dokument | 1 | `extension:nlp-processing-status` |
| modul-icu | 187 | `dataAbsentReason`×71, `referenceRange`×20, `specimen`×20, `bodySite`×16, `device`×9, `component`×7 |
| modul-lungenfunktion | 44 | `hasMember`×10, `component`×8, `component:predicted`×8, `component:percentPredicted`×7, `component:z-score`×6, `derivedFrom`×2 |
| modul-mikrobio | 45 | `referenceRange`×6, `value[x]:valueQuantity.code`×6, `value[x]:valueQuantity.comparator`×6, `value[x]:valueQuantity.system`×6, `value[x]:valueQuantity.unit`×6, `value[x]:valueQuantity.value`×6 |
| modul-molgen | 8 | `basedOn`, `extension:focus`, `extension:metrics`, `derivedFrom`, `extension:coded-note`, `extension:recommended-action` |
| modul-mtb | 6 | `extension:transformationVon`, `extension:focus`, `extension:metrics`, `extension:qc`, `hasMember`, `action.action` |
| modul-onko | 7 | `modifierExtension:aPraefix`×2, `modifierExtension:rPraefix`×2, `extension:transformationVon`, `dataAbsentReason`, `modifierExtension:yPraefix` |
| modul-patho | 12 | `component.code`×5, `component.dataAbsentReason`×5, `extension:diagnosticReport`, `extension:focus` |
| modul-person | 1 | `extension:birthPlace.value[x].country.extension:countryCode` |
| modul-pro | 2 | `item.answer.item`, `questionnaire.extension:questionnaireDisplay` |
| modul-seltene | 1 | `extension:vonSEBetroffen` |
| modul-soziodemographie | 4 | `dataAbsentReason`×4 |
| modul-studie | 2 | `characteristic.extension:definitionByCombination`, `characteristic.extension:definitionReference` |
| modul-symptom | 1 | `specimen` |

### Details je Profil

<details><summary>modul-bildgebung</summary>

- **mii-pr-bildgebung-kontrastmittelgabe** (1 Inst.): `MedicationAdministration.dosage.rate[x]:rateRatio.denominator`, `MedicationAdministration.dosage.rate[x]:rateRatio.numerator`

</details>

<details><summary>modul-biobank</summary>

- **Organization** (1 Inst.): `Organization.extension:collectionDesign`, `Organization.extension:collectionSetting`
- **Specimen** (21 Inst.): `Specimen.extension:anzahlAliquots`, `Specimen.extension:focus`, `Specimen.processing.extension:temperature-miabis`
- **SpecimenCore** (7 Inst.): `Specimen.extension:focus`
- **mii-pr-biobank-zellinie-organoid** (1 Inst.): `Specimen.extension:anzahlAliquots`, `Specimen.extension:focus`, `Specimen.processing.extension:temperature-miabis`

</details>

<details><summary>modul-dokument</summary>

- **mii-pr-dokument-dokument** (2 Inst.): `DocumentReference.extension:nlp-processing-status`

</details>

<details><summary>modul-icu</summary>

- **mii-pr-icu-bilanz** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-blutverlust** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-drainage-generisch** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-fluessigkeit-gesamt** (2 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-gallenfluessigkeit** (2 Inst.): `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-haemofiltration-einzelmesswerte** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-magensonde** (1 Inst.): `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-op-drainage** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-pankreasdrainage** (1 Inst.): `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-stuhlgang** (1 Inst.): `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-urin** (1 Inst.): `Observation.dataAbsentReason`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-wunddrainage** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-abgepumpte-muttermilch** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-enterale-fluessigkeit** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-fluessigkeit-gesamt** (3 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-muttermilch** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-orale-fluessigkeit** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-saeuglingsnahrung** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-spendermilch** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-tagesbilanz-fluessigkeit** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.specimen`
- **mii-pr-icu-muv-arterieller-blutdruck** (1 Inst.): `Observation.component:DiastolicBP.dataAbsentReason`, `Observation.component:SystolicBP.dataAbsentReason`, `Observation.component:meanBP.dataAbsentReason`, `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.value[x]`
- **mii-pr-icu-muv-atemfrequenz** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-muv-herzfrequenz** (1 Inst.): `Observation.basedOn`, `Observation.component`, `Observation.dataAbsentReason`
- **mii-pr-icu-muv-koerpergewicht** (2 Inst.): `Observation.component`
- **mii-pr-icu-muv-koerpergroesse** (2 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-muv-koerperlaenge** (2 Inst.): `Observation.basedOn`, `Observation.bodySite`, `Observation.component`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.referenceRange`
- **mii-pr-icu-muv-kopfumfang** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-parameter-von-beatmung** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-score-cam-icu** (1 Inst.): `Observation.component.dataAbsentReason`, `Observation.component:feature1-acute-change.dataAbsentReason`, `Observation.component:feature2-inattention.dataAbsentReason`, `Observation.component:feature3-altered-loc.dataAbsentReason`, `Observation.component:feature4-disorganized-thinking.dataAbsentReason`, `Observation.dataAbsentReason`, `Observation.device`
- **mii-pr-icu-score-faces-pain-scale-revised** (1 Inst.): `Observation.component`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`
- **mii-pr-icu-score-gcs** (1 Inst.): `Observation.component.dataAbsentReason`, `Observation.component:GCSeyes.dataAbsentReason`, `Observation.component:GCSmotor.dataAbsentReason`, `Observation.component:GCSverbal.dataAbsentReason`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`
- **mii-pr-icu-score-icdsc** (1 Inst.): `Observation.component.dataAbsentReason`, `Observation.component:altered-consciousness.dataAbsentReason`, `Observation.component:disorientation.dataAbsentReason`, `Observation.component:hallucination-delusion.dataAbsentReason`, `Observation.component:inappropriate-speech-mood.dataAbsentReason`, `Observation.component:inattention.dataAbsentReason`, `Observation.component:psychomotor-agitation-retardation.dataAbsentReason`, `Observation.component:sleep-wake-disturbance.dataAbsentReason`, `Observation.component:symptom-fluctuation.dataAbsentReason`, `Observation.dataAbsentReason`, `Observation.device`
- **mii-pr-icu-score-numerische-ratingskala** (2 Inst.): `Observation.component`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`
- **mii-pr-icu-score-rass** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-score-sofa** (1 Inst.): `Observation.component.dataAbsentReason`, `Observation.component:cardiovascular.dataAbsentReason`, `Observation.component:coagulation.dataAbsentReason`, `Observation.component:hepatic.dataAbsentReason`, `Observation.component:neurological.dataAbsentReason`, `Observation.component:renal.dataAbsentReason`, `Observation.component:respiratory.dataAbsentReason`, `Observation.dataAbsentReason`, `Observation.device`
- **mii-pr-icu-score-visuelle-analogskala** (1 Inst.): `Observation.component`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`
- **mii-pr-icu-score-zopa** (1 Inst.): `Observation.code.coding:sct.version`, `Observation.component`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`
- **mii-pr-icu-untersuchung-pupillenbefund** (1 Inst.): `Observation.dataAbsentReason`, `Observation.value[x]`
- **mii-pr-icu-untersuchung-pupillenform** (2 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-untersuchung-pupillengroesse** (2 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-untersuchung-pupillenlichtreaktion-direkt** (2 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-untersuchung-pupillenlichtreaktion-indirekt** (2 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-untersuchung-pupillensymmetrie** (1 Inst.): `Observation.value[x]`, `Observation.value[x]:valueCodeableConcept`
- **mii-pr-icu-vent-atemwegsdruck-bei-mittlerem-expiratorischem-gasfluss** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-atemwegsdruck-bei-null-expiratorischem-gasfluss** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-atemzugvolumen-einstellung** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-atemzugvolumen-waehrend-beatmung** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-beatmungsvolumen-pro-minute-maschineller-beatmung** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-beatmungszeit-hohem-druck** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-beatmungszeit-niedrigem-druck** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-druckdifferenz-beatmung** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-dynamische-kompliance** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-eingestellter-inspiratorischer-gasfluss** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-einstellung-ausatmungszeit-beatmung** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-einstellung-einatmungszeit-beatmung** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-endexpiratorischer-kohlendioxidpartialdruck** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-exspiratorischer-gasfluss** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-exspiratorischer-sauerstoffpartialdruck** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-horowitz-in-arteriellem-blut** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-inspiratorische-sauerstofffraktion** (2 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-inspiratorischer-gasfluss** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-maximaler-beatmungsdruck** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-maximaler-inspiratorischer-beatmungsdruck** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-mechanische-atemfrequenz-beatmet** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-mittlerer-beatmungsdruck** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-mittlerer-inspiratorischer-beatmungsdruck** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-plateau-beatmungsdruck** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-positiv-endexpiratorischer-druck** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-spontane-atemfrequenz-beatmet** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-spontane-mechanische-atemfrequenz-beatmet** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-spontanes-atemzugvolumen** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-spontanes-mechanisches-atemzugvolumen-waehrend-beatmung** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-unterstuetzungsdruck-beatmung** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-icu-vent-zeitverhaeltnis-ein-ausatmung** (1 Inst.): `Observation.dataAbsentReason`

</details>

<details><summary>modul-lungenfunktion</summary>

- **mii-pr-lungenfunktion-bf** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.hasMember`
- **mii-pr-lungenfunktion-dlco** (1 Inst.): `Observation.hasMember`
- **mii-pr-lungenfunktion-dlcoc** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`
- **mii-pr-lungenfunktion-dosis-gabe** (3 Inst.): `MedicationAdministration.reasonReference`
- **mii-pr-lungenfunktion-fvc** (1 Inst.): `Observation.hasMember`
- **mii-pr-lungenfunktion-gewicht** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`, `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-hb** (1 Inst.): `Observation.component`, `Observation.component:predicted`, `Observation.derivedFrom`, `Observation.hasMember`
- **mii-pr-lungenfunktion-ic** (1 Inst.): `Observation.hasMember`
- **mii-pr-lungenfunktion-irv-erv** (1 Inst.): `Observation.hasMember`
- **mii-pr-lungenfunktion-kcoc** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`
- **mii-pr-lungenfunktion-mef** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`, `Observation.hasMember`
- **mii-pr-lungenfunktion-rv** (1 Inst.): `Observation.hasMember`
- **mii-pr-lungenfunktion-sg-total** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`
- **mii-pr-lungenfunktion-spirometrie-messung** (1 Inst.): `Procedure.code.coding:ops.extension:Seitenlokalisation`
- **mii-pr-lungenfunktion-va** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`, `Observation.hasMember`

</details>

<details><summary>modul-mikrobio</summary>

- **mii-pr-mikrobio-bartlett-score** (4 Inst.): `Observation.referenceRange.high`
- **mii-pr-mikrobio-probe** (2 Inst.): `Specimen.container.additive[x]`, `Specimen.extension:focus`, `Specimen.parent`, `Specimen.processing.additive`
- **mii-pr-mikrobio-resistenzkategorie-status** (3 Inst.): `Observation.dataAbsentReason`, `Observation.referenceRange`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-resistenzmechanismen-determinanten** (3 Inst.): `Observation.referenceRange`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-spezifische-bestimmung** (3 Inst.): `Observation.referenceRange`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-spezifische-mikroskopie** (1 Inst.): `Observation.dataAbsentReason`, `Observation.modifierExtension`, `Observation.modifierExtension:interpretationsbeeinflussendeEigenschaft`, `Observation.referenceRange`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-virulenzfaktor** (3 Inst.): `Observation.referenceRange`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-voraussichtliche-empfindlichkeit** (3 Inst.): `Observation.referenceRange`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`

</details>

<details><summary>modul-molgen</summary>

- **anforderung-genetischer-test** (3 Inst.): `ServiceRequest.basedOn`
- **mii-pr-molgen-genomic-study-analysis** (2 Inst.): `Procedure.extension:focus`, `Procedure.extension:metrics`
- **mii-pr-molgen-molekularer-biomarker** (1 Inst.): `Observation.derivedFrom`
- **molekulargenetischer-befundbericht** (2 Inst.): `DiagnosticReport.extension:coded-note`, `DiagnosticReport.extension:recommended-action`, `DiagnosticReport.media`
- **polygener-risiko-score** (1 Inst.): `RiskAssessment.prediction.extension:whenCodeableConcept`

</details>

<details><summary>modul-mtb</summary>

- **mii-pr-mtb-diagnose-primaertumor** (3 Inst.): `Condition.extension:transformationVon`
- **mii-pr-mtb-genomic-study-analysis** (1 Inst.): `Procedure.extension:focus`, `Procedure.extension:metrics`, `Procedure.extension:qc`
- **mii-pr-mtb-response-befund** (1 Inst.): `Observation.hasMember`
- **mii-pr-mtb-therapieempfehlung-kombination** (1 Inst.): `RequestGroup.action.action`

</details>

<details><summary>modul-onko</summary>

- **mii-pr-onko-diagnose-primaertumor** (5 Inst.): `Condition.extension:transformationVon`
- **mii-pr-onko-melanom-ulzeration** (2 Inst.): `Observation.dataAbsentReason`
- **mii-pr-onko-tnm-m-kategorie** (3 Inst.): `Observation.modifierExtension:aPraefix`, `Observation.modifierExtension:rPraefix`
- **mii-pr-onko-tnm-n-kategorie** (4 Inst.): `Observation.modifierExtension:aPraefix`, `Observation.modifierExtension:yPraefix`
- **mii-pr-onko-tnm-t-kategorie** (4 Inst.): `Observation.modifierExtension:rPraefix`

</details>

<details><summary>modul-patho</summary>

- **mii-pr-patho-additional-specified-grouper** (1 Inst.): `Observation.component.code`, `Observation.component.dataAbsentReason`
- **mii-pr-patho-composition** (2 Inst.): `Composition.extension:diagnosticReport`
- **mii-pr-patho-diagnostic-conclusion-grouper** (1 Inst.): `Observation.component.code`, `Observation.component.dataAbsentReason`
- **mii-pr-patho-intraoperative-grouper** (1 Inst.): `Observation.component.code`, `Observation.component.dataAbsentReason`
- **mii-pr-patho-macroscopic-grouper** (1 Inst.): `Observation.component.code`, `Observation.component.dataAbsentReason`
- **mii-pr-patho-microscopic-grouper** (1 Inst.): `Observation.component.code`, `Observation.component.dataAbsentReason`
- **mii-pr-patho-specimen** (6 Inst.): `Specimen.extension:focus`

</details>

<details><summary>modul-person</summary>

- **Patient** (11 Inst.): `Patient.extension:birthPlace.value[x].country.extension:countryCode`

</details>

<details><summary>modul-pro</summary>

- **mii-pr-pro-questionnaire-response** (5 Inst.): `QuestionnaireResponse.item.answer.item`, `QuestionnaireResponse.questionnaire.extension:questionnaireDisplay`

</details>

<details><summary>modul-seltene</summary>

- **mii-pr-seltene-familienanamnese** (3 Inst.): `FamilyMemberHistory.extension:vonSEBetroffen`

</details>

<details><summary>modul-soziodemographie</summary>

- **mii-pr-sdd-betreuungssituation** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-sdd-haushaltsgroesse** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-sdd-partnerschaft** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-sdd-vertrauensperson** (1 Inst.): `Observation.dataAbsentReason`

</details>

<details><summary>modul-studie</summary>

- **mii-pr-studie-ein-auschluss-kriterium** (1 Inst.): `EvidenceVariable.characteristic.extension:definitionByCombination`, `EvidenceVariable.characteristic.extension:definitionReference`

</details>

<details><summary>modul-symptom</summary>

- **finding-observation** (4 Inst.): `Observation.specimen`

</details>

## Richtung B: befüllte Nicht-MS-Pfade (Ballot-Feedback-Kandidaten)

| Modul | Pfade | Top (Anzahl Profile, die den Pfad befüllen) |
|---|---|---|
| modul-bildgebung | 9 | `extension`×3, `extension.url`×3, `extension.valueId`×2, `extension.valueString` |
| modul-biobank | 12 | `status`×6, `effectiveDateTime`×3, `accessionIdentifier`, `accessionIdentifier.value`, `accessionIdentifier.system` |
| modul-consent | 3 | `date`, `scope`, `scope.coding` |
| modul-fall | 4 | `serviceProvider.identifier`, `serviceProvider.display`, `serviceProvider`, `serviceProvider.reference` |
| modul-icu | 73 | `status`×30, `code`×7, `encounter.reference`×7, `encounter`×7, `subject`×6, `subject.reference`×6 |
| modul-kardio | 33 | `status`×7, `performer.display`×2, `performer`×2, `code`, `deviceName.type`, `deviceName.name` |
| modul-labor | 4 | `reasonCode.coding`, `requester.reference`, `requester`, `reasonCode` |
| modul-lungenfunktion | 2 | `effectiveDateTime`, `name` |
| modul-medikation | 2 | `status`, `title` |
| modul-molgen | 56 | `status`×5, `category.coding`×4, `category`×4, `specimen.reference`×4, `specimen`×4, `basedOn`×4 |
| modul-mtb | 73 | `status`×24, `subject`×7, `subject.reference`×7, `intent`×4, `effectiveDateTime`×3, `valueCodeableConcept`×2 |
| modul-onko | 94 | `status`×40, `effectiveDateTime`×9, `method.coding`×4, `method`×4, `note.text`×3, `note`×3 |
| modul-patho | 31 | `performer.reference`×6, `performer`×6, `encounter.reference`×3, `encounter`×3, `date`×2, `valueString`×2 |
| modul-person | 2 | `extension`, `extension.url` |
| modul-pro | 58 | `subject.reference`×18, `subject`×18, `encounter.reference`×11, `encounter`×11 |
| modul-prozedur | 2 | `recorder.reference`, `recorder` |
| modul-seltene | 25 | `status`×3, `subject`×3, `subject.reference`×3, `code.coding`×2, `code`×2, `intent`×2 |
| modul-soziodemographie | 17 | `valueCodeableConcept`×6, `valueCodeableConcept.coding`×6, `valueCodeableConcept.text`×2, `code.coding`, `code`, `code.text` |
| modul-studie | 15 | `active`, `extension`, `status`, `extension.url`, `extension.valueBoolean`, `title` |
| modul-symptom | 5 | `extension.valueReference`, `bodySite.coding`, `bodySite`, `extension`, `extension.url` |

## Abdeckungs-Index

Maschinenlesbarer Index (MS-Element → Zeugen-Instanzen, max. 5) unter `../docs/ms-coverage-index.json`. Einzel-Zeugen sind per Policy ausreichend; die Zählung dient als Regressions-Radar (Instanz löschen → Abdeckung prüfen). Einzel-Zeugen je Modul: icu 2502, onko 1619, mtb 1360, lungenfunktion 1262, seltene 410, mikrobio 338, bildgebung 328, patho 312, kardio 302, pro 279.
