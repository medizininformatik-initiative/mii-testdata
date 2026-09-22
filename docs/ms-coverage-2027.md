# Must-Support-Abdeckung der Testdaten (2027-Ballot)

Generiert von `scripts/ms-coverage.py`. **Source of Truth sind die Snapshot-StructureDefinitions des gepinnten Packages `de.medizininformatikinitiative.kerndatensatz.complete#2027.0.0-ballot.19`** — nicht der Branch-Zustand. Heuristik siehe Skript-Docstring.

MS-Elemente über alle genutzten Profile: **13834** · oberste unbefüllte Knoten: **1977**

## Übersicht je Modul

| Modul | Profile genutzt/gesamt | MS befüllt/gesamt | Coverage |
|---|---|---|---|
| modul-bildgebung | 12/12 | 285/383 | 74.4 % |
| modul-biobank | 11/11 | 230/302 | 76.2 % |
| modul-consent | 3/3 | 64/77 | 83.1 % |
| modul-diagnose | 1/1 | 62/77 | 80.5 % |
| modul-dokument | 1/1 | 69/70 | 98.6 % |
| modul-fall | 1/1 | 92/96 | 95.8 % |
| modul-icu | 93/94 | 2338/2996 | 78.0 % |
| modul-kardio | 13/13 | 272/362 | 75.1 % |
| modul-labor | 3/3 | 120/151 | 79.5 % |
| modul-lungenfunktion | 39/48 | 1156/1556 | 74.3 % |
| modul-medikation | 5/5 | 305/437 | 69.8 % |
| modul-meta | 0/1 | 0/0 | – |
| modul-mikrobio | 21/21 | 1267/1583 | 80.0 % |
| modul-molgen | 16/16 | 241/248 | 97.2 % |
| modul-mtb | 50/50 | 929/1520 | 61.1 % |
| modul-onko | 76/76 | 1385/2035 | 68.1 % |
| modul-patho | 15/17 | 349/468 | 74.6 % |
| modul-person | 5/5 | 161/258 | 62.4 % |
| modul-pro | 21/23 | 238/292 | 81.5 % |
| modul-prozedur | 1/1 | 45/46 | 97.8 % |
| modul-seltene | 23/23 | 395/607 | 65.1 % |
| modul-soziodemographie | 15/16 | 148/153 | 96.7 % |
| modul-studie | 7/7 | 73/78 | 93.6 % |
| modul-symptom | 2/2 | 36/39 | 92.3 % |
| **GESAMT** | 434/450 | 10260/13834 | 74.2 % |

## Richtung A: unbefüllte MS-Elemente je Modul

| Modul | Lücken | häufigste fehlende Elemente |
|---|---|---|
| modul-bildgebung | 43 | `bodySite.coding:snomed-ct.version`×2, `code.coding:ops.extension:Seitenlokalisation`×2, `code.coding:ops.version`×2, `encounter`×2, `extension`×2, `extension:Dokumentationsdatum`×2 |
| modul-biobank | 32 | `collection.extension:einstellungBlutversorgung`×3, `collection.quantity`×3, `note`×3, `request`×2, `collection.fastingStatus[x]`×2, `collection.fastingStatus[x]:fastingStatusCodeableConcept.coding.code`×2 |
| modul-consent | 7 | `content.attachment.extension:physicalDocumentLocation`, `content.attachment.url`, `extension:domainReference`, `patient.identifier`, `policyRule`, `source[x]` |
| modul-diagnose | 7 | `abatement[x]`, `abatement[x]:abatementAge`, `abatement[x]:abatementDateTime`, `bodySite.coding:snomed-ct.version`, `extension:Feststellungsdatum`, `onset[x]:onsetAge.extension:Lebensphase-Beginn.url` |
| modul-dokument | 1 | `extension:nlp-processing-status` |
| modul-fall | 1 | `account` |
| modul-icu | 579 | `identifier`×75, `dataAbsentReason`×72, `device`×71, `issued`×61, `encounter`×57, `interpretation`×32 |
| modul-kardio | 29 | `encounter`×4, `abatement[x]`×2, `abatement[x]:abatementAge`×2, `abatement[x]:abatementDateTime`×2, `code.coding:icd10-gm.extension:Diagnosesicherheit`×2, `code.coding:icd10-gm.extension:Mehrfachcodierungs-Kennzeichen`×2 |
| modul-labor | 22 | `encounter.identifier`×3, `specimen`×3, `subject.identifier`×3, `effective[x].extension:QuelleKlinischesBezugsdatum`×2, `code.coding.version`×2, `basedOn.identifier` |
| modul-lungenfunktion | 163 | `hasMember`×23, `derivedFrom`×20, `referenceRange`×20, `component`×8, `component:predicted`×8, `component:percentPredicted`×7 |
| modul-medikation | 64 | `medication[x]:medicationCodeableConcept.coding`×3, `medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer`×3, `medication[x]:medicationCodeableConcept.coding:UNII`×3, `medication[x]:medicationCodeableConcept.coding:atcClassDe`×3, `medication[x]:medicationCodeableConcept.coding:atcClassEn`×3, `reasonCode`×2 |
| modul-mikrobio | 194 | `effective[x].extension:QuelleKlinischesBezugsdatum`×20, `basedOn`×19, `code.coding.version`×19, `referenceRange`×12, `value[x]:valueQuantity.code`×12, `value[x]:valueQuantity.comparator`×12 |
| modul-molgen | 7 | `basedOn`, `relationship.coding:snomed.extension:FamiliareLinie`, `relationship.coding:snomed.extension:Verwandtschaftsgrad`, `relationship.coding:snomed.extension:Verwandtschaftsverhaeltnis`, `derivedFrom`, `media` |
| modul-mtb | 317 | `encounter`×28, `issued`×23, `effective[x]`×22, `focus`×17, `identifier`×17, `derivedFrom`×15 |
| modul-onko | 239 | `encounter`×30, `note`×12, `code.coding:ops.extension:Seitenlokalisation`×11, `extension:Dokumentationsdatum`×11, `extension:durchfuehrungsabsicht`×11, `bodySite`×9 |
| modul-patho | 96 | `meta.lastUpdated`×12, `text`×8, `component.code`×6, `component.dataAbsentReason`×6, `identifier`×6, `method`×6 |
| modul-person | 36 | `encounter`×2, `address:Postfach.city.extension:gemeindeschluessel.url`, `address:Postfach.city.extension:gemeindeschluessel.value[x]`, `address:Postfach.line.extension:Postfach`, `address:Strassenanschrift.city.extension:gemeindeschluessel.url`, `address:Strassenanschrift.city.extension:gemeindeschluessel.value[x]` |
| modul-pro | 53 | `focus`×17, `note`×9, `identifier`×8, `performer`×7, `interpretation`×6, `author` |
| modul-prozedur | 1 | `bodySite.coding:snomed-ct.version` |
| modul-seltene | 73 | `abatement[x]`×2, `abatement[x]:abatementAge`×2, `abatement[x]:abatementDateTime`×2, `code.coding:icd10-gm.extension:Diagnosesicherheit`×2, `code.coding:icd10-gm.extension:Mehrfachcodierungs-Kennzeichen`×2, `code.coding:icd10-gm.extension:Seitenlokalisation`×2 |
| modul-soziodemographie | 5 | `dataAbsentReason`×5 |
| modul-studie | 5 | `telecom`, `partOf`, `supportingInfo`, `supportingInfo:Proband`, `supportingInfo:Studie` |
| modul-symptom | 3 | `onset[x]:onsetPeriod.end.extension:lebensphase-bis`, `onset[x]:onsetPeriod.start.extension:lebensphase-von`, `specimen` |

### Details je Profil

<details><summary>modul-bildgebung</summary>

- **mii-pr-bildgebung-bildgebungsprozedur** (1 Inst.): `Procedure.bodySite.coding:snomed-ct.version`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.code.coding:ops.version`, `Procedure.encounter`, `Procedure.extension`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:durchfuehrungsabsicht`
- **mii-pr-bildgebung-bildgebungsstudie** (1 Inst.): `ImagingStudy.endpoint`
- **mii-pr-bildgebung-kontrastmittelgabe** (1 Inst.): `MedicationAdministration.context`, `MedicationAdministration.dosage.rate[x]`, `MedicationAdministration.dosage.rate[x]:rateQuantity`, `MedicationAdministration.dosage.rate[x]:rateRatio`, `MedicationAdministration.dosage.route`, `MedicationAdministration.dosage.site`, `MedicationAdministration.dosage.text`, `MedicationAdministration.identifier`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:UNII`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassDe`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassEn`, `MedicationAdministration.medication[x]:medicationCodeableConcept.text`, `MedicationAdministration.reasonCode`
- **mii-pr-bildgebung-radiologische-befundungsprozedur** (1 Inst.): `Procedure.bodySite.coding:snomed-ct.version`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.code.coding:ops.version`, `Procedure.encounter`, `Procedure.extension`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:durchfuehrungsabsicht`
- **mii-pr-bildgebung-radiologische-beobachtung** (1 Inst.): `Observation.value[x]:valueCodeableConcept.coding.code`, `Observation.value[x]:valueCodeableConcept.coding.system`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`
- **mii-pr-bildgebung-radiologische-messung** (1 Inst.): `Observation.component`, `Observation.value[x]:valueCodeableConcept.coding.code`, `Observation.value[x]:valueCodeableConcept.coding.system`
- **mii-pr-bildgebung-radiologischer-befund** (1 Inst.): `DiagnosticReport.presentedForm`
- **mii-pr-bildgebung-semistrukt-befundbericht** (1 Inst.): `Composition.section.author`, `Composition.section.text`, `Composition.section:diagRep.author`, `Composition.section:diagRep.text`

</details>

<details><summary>modul-biobank</summary>

- **Specimen** (21 Inst.): `Specimen.collection.extension:einstellungBlutversorgung`, `Specimen.collection.quantity`, `Specimen.note`, `Specimen.parent`, `Specimen.processing`, `Specimen.processing:lagerprozess`, `Specimen.request`
- **SpecimenCore** (7 Inst.): `Specimen.collection.extension:einstellungBlutversorgung`, `Specimen.collection.fastingStatus[x]`, `Specimen.collection.fastingStatus[x]:fastingStatusCodeableConcept.coding.code`, `Specimen.collection.fastingStatus[x]:fastingStatusCodeableConcept.coding.system`, `Specimen.collection.quantity`, `Specimen.container.capacity`, `Specimen.note`, `Specimen.processing.additive`, `Specimen.processing.time[x]:timePeriod.end`, `Specimen.processing.time[x]:timePeriod.start`, `Specimen.receivedTime`
- **Substance** (1 Inst.): `Substance.ingredient`
- **mii-pr-biobank-zellinie-organoid** (1 Inst.): `Specimen.collection.bodySite`, `Specimen.collection.extension:einstellungBlutversorgung`, `Specimen.collection.fastingStatus[x]`, `Specimen.collection.fastingStatus[x]:fastingStatusCodeableConcept.coding.code`, `Specimen.collection.fastingStatus[x]:fastingStatusCodeableConcept.coding.system`, `Specimen.collection.method`, `Specimen.collection.quantity`, `Specimen.container.additive[x]`, `Specimen.container.capacity`, `Specimen.note`, `Specimen.processing.additive`, `Specimen.receivedTime`, `Specimen.request`

</details>

<details><summary>modul-consent</summary>

- **mii-pr-consent-documentreference** (1 Inst.): `DocumentReference.content.attachment.extension:physicalDocumentLocation`, `DocumentReference.content.attachment.url`
- **mii-pr-consent-einwilligung** (10 Inst.): `Consent.extension:domainReference`, `Consent.patient.identifier`, `Consent.policyRule`, `Consent.source[x]`
- **mii-pr-consent-provenance** (1 Inst.): `Provenance.signature.extension:where`

</details>

<details><summary>modul-diagnose</summary>

- **Diagnose** (17 Inst.): `Condition.abatement[x]`, `Condition.abatement[x]:abatementAge`, `Condition.abatement[x]:abatementDateTime`, `Condition.bodySite.coding:snomed-ct.version`, `Condition.extension:Feststellungsdatum`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.url`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.value[x]`

</details>

<details><summary>modul-dokument</summary>

- **mii-pr-dokument-dokument** (2 Inst.): `DocumentReference.extension:nlp-processing-status`

</details>

<details><summary>modul-fall</summary>

- **KontaktGesundheitseinrichtung** (12 Inst.): `Encounter.account`

</details>

<details><summary>modul-icu</summary>

- **mii-pr-icu-beatmung** (1 Inst.): `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.code.coding:ops.version`, `Procedure.extension`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.recorder`
- **mii-pr-icu-bilanz** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-blutverlust** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-drainage-generisch** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-fluessigkeit-gesamt** (2 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-gallenfluessigkeit** (2 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-haemofiltration-einzelmesswerte** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-magensonde** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-op-drainage** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-pankreasdrainage** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-stuhlgang** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-urin** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-ausfuhr-wunddrainage** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-abgepumpte-muttermilch** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-enterale-fluessigkeit** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-fluessigkeit-gesamt** (3 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-muttermilch** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-orale-fluessigkeit** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-saeuglingsnahrung** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-einfuhr-spendermilch** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-bilanz-tagesbilanz-fluessigkeit** (1 Inst.): `Observation.bodySite`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.referenceRange`, `Observation.specimen`
- **mii-pr-icu-device** (2 Inst.): `Device.identifier`, `Device.property`, `Device.status`, `Device.version`
- **mii-pr-icu-ect-arterieller-druck** (1 Inst.): `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-ect-blutfluss-cardiovasculaeres-geraet** (1 Inst.): `Observation.category`, `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-ect-blutfluss-extrakorporaler-gasaustausch** (1 Inst.): `Observation.category`, `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-ect-blutflussindex-extrakorporaler-gasaustausch** (1 Inst.): `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-ect-dauer-extrakorporaler-gasaustausch** (1 Inst.): `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-ect-dauer-haemodialysesitzung** (1 Inst.): `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-ect-gasfluss** (1 Inst.): `Observation.category`, `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-ect-haemodialyse-blutfluss** (1 Inst.): `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-ect-ionisiertes-kalzium-nierenersatzverfahren** (1 Inst.): `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-ect-substituatfluss** (1 Inst.): `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-ect-substituatvolumen** (1 Inst.): `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-ect-venoeser-druck** (1 Inst.): `Observation.category`, `Observation.device`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-extrakorporales-verfahren** (1 Inst.): `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.code.coding:ops.version`, `Procedure.extension`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.recorder`
- **mii-pr-icu-muv-arterieller-blutdruck** (1 Inst.): `Observation.bodySite`, `Observation.component:DiastolicBP.code.coding:IEEE-11073.display`, `Observation.component:DiastolicBP.code.coding:loinc.display`, `Observation.component:DiastolicBP.code.coding:sct.display`, `Observation.component:DiastolicBP.dataAbsentReason`, `Observation.component:SystolicBP.code.coding:IEEE-11073.display`, `Observation.component:SystolicBP.code.coding:loinc.display`, `Observation.component:SystolicBP.code.coding:sct.display`, `Observation.component:SystolicBP.dataAbsentReason`, `Observation.component:meanBP.code.coding:IEEE-11073.display`, `Observation.component:meanBP.code.coding:loinc.display`, `Observation.component:meanBP.code.coding:sct.display`, `Observation.component:meanBP.dataAbsentReason`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.interpretation`, `Observation.method`, `Observation.referenceRange`, `Observation.value[x]`
- **mii-pr-icu-muv-atemfrequenz** (1 Inst.): `Observation.dataAbsentReason`, `Observation.encounter`, `Observation.identifier`
- **mii-pr-icu-muv-herzfrequenz** (1 Inst.): `Observation.basedOn`, `Observation.bodySite`, `Observation.component`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.interpretation`, `Observation.method`, `Observation.performer`, `Observation.referenceRange`
- **mii-pr-icu-muv-koerpergewicht** (1 Inst.): `Observation.category:VSCat.coding.display`, `Observation.category:sct.coding.display`, `Observation.component`, `Observation.effective[x]:effectivePeriod.end`, `Observation.effective[x]:effectivePeriod.start`
- **mii-pr-icu-muv-koerpergroesse** (1 Inst.): `Observation.category:VSCat.coding.display`, `Observation.category:sct.coding.display`, `Observation.dataAbsentReason`, `Observation.effective[x]:effectivePeriod.end`, `Observation.effective[x]:effectivePeriod.start`
- **mii-pr-icu-muv-koerperlaenge** (1 Inst.): `Observation.basedOn`, `Observation.bodySite`, `Observation.component`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.effective[x]:effectivePeriod.end`, `Observation.effective[x]:effectivePeriod.start`, `Observation.identifier`, `Observation.interpretation`, `Observation.method`, `Observation.performer`, `Observation.referenceRange`
- **mii-pr-icu-muv-kopfumfang** (1 Inst.): `Observation.bodySite`, `Observation.category:sct.coding.display`, `Observation.dataAbsentReason`
- **mii-pr-icu-parameter-von-beatmung** (1 Inst.): `Observation.dataAbsentReason`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-parameter-von-extrakorporalen-verfahren** (1 Inst.): `Observation.identifier`
- **mii-pr-icu-score-cam-icu** (1 Inst.): `Observation.code.coding:sct.version`, `Observation.component.dataAbsentReason`, `Observation.component:feature1-acute-change.dataAbsentReason`, `Observation.component:feature2-inattention.dataAbsentReason`, `Observation.component:feature3-altered-loc.dataAbsentReason`, `Observation.component:feature4-disorganized-thinking.dataAbsentReason`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`, `Observation.interpretation`, `Observation.issued`, `Observation.performer`
- **mii-pr-icu-score-faces-pain-scale-revised** (1 Inst.): `Observation.code.coding:sct.version`, `Observation.component`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`, `Observation.interpretation`, `Observation.issued`, `Observation.performer`
- **mii-pr-icu-score-gcs** (1 Inst.): `Observation.code.coding:sct.version`, `Observation.component.dataAbsentReason`, `Observation.component:GCSeyes.dataAbsentReason`, `Observation.component:GCSmotor.dataAbsentReason`, `Observation.component:GCSverbal.dataAbsentReason`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`, `Observation.interpretation`, `Observation.issued`, `Observation.performer`
- **mii-pr-icu-score-icdsc** (1 Inst.): `Observation.code.coding:sct.version`, `Observation.component.dataAbsentReason`, `Observation.component:altered-consciousness.dataAbsentReason`, `Observation.component:disorientation.dataAbsentReason`, `Observation.component:hallucination-delusion.dataAbsentReason`, `Observation.component:inappropriate-speech-mood.dataAbsentReason`, `Observation.component:inattention.dataAbsentReason`, `Observation.component:psychomotor-agitation-retardation.dataAbsentReason`, `Observation.component:sleep-wake-disturbance.dataAbsentReason`, `Observation.component:symptom-fluctuation.dataAbsentReason`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`, `Observation.interpretation`, `Observation.issued`, `Observation.performer`
- **mii-pr-icu-score-numerische-ratingskala** (1 Inst.): `Observation.code.coding:sct.version`, `Observation.component`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`, `Observation.interpretation`, `Observation.issued`, `Observation.performer`
- **mii-pr-icu-score-rass** (1 Inst.): `Observation.dataAbsentReason`, `Observation.interpretation`, `Observation.issued`, `Observation.note`, `Observation.performer`
- **mii-pr-icu-score-sofa** (1 Inst.): `Observation.code.coding:sct.version`, `Observation.component.dataAbsentReason`, `Observation.component:cardiovascular.dataAbsentReason`, `Observation.component:coagulation.dataAbsentReason`, `Observation.component:hepatic.dataAbsentReason`, `Observation.component:neurological.dataAbsentReason`, `Observation.component:renal.dataAbsentReason`, `Observation.component:respiratory.dataAbsentReason`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`, `Observation.interpretation`, `Observation.issued`, `Observation.performer`
- **mii-pr-icu-score-visuelle-analogskala** (1 Inst.): `Observation.code.coding:sct.version`, `Observation.component`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`, `Observation.interpretation`, `Observation.issued`, `Observation.performer`
- **mii-pr-icu-score-wong-baker-faces-schmerzskala** (1 Inst.): `Observation.performer`
- **mii-pr-icu-score-zopa** (1 Inst.): `Observation.code.coding:sct.version`, `Observation.component`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.device`, `Observation.hasMember`, `Observation.interpretation`, `Observation.issued`, `Observation.performer`
- **mii-pr-icu-untersuchung-pupillenbefund** (1 Inst.): `Observation.dataAbsentReason`, `Observation.identifier`, `Observation.value[x]`
- **mii-pr-icu-untersuchung-pupillenform** (2 Inst.): `Observation.dataAbsentReason`, `Observation.identifier`
- **mii-pr-icu-untersuchung-pupillengroesse** (2 Inst.): `Observation.dataAbsentReason`, `Observation.identifier`
- **mii-pr-icu-untersuchung-pupillenlichtreaktion-direkt** (2 Inst.): `Observation.dataAbsentReason`, `Observation.identifier`
- **mii-pr-icu-untersuchung-pupillenlichtreaktion-indirekt** (2 Inst.): `Observation.dataAbsentReason`, `Observation.identifier`
- **mii-pr-icu-untersuchung-pupillensymmetrie** (1 Inst.): `Observation.identifier`, `Observation.value[x]`, `Observation.value[x]:valueCodeableConcept`
- **mii-pr-icu-vent-atemwegsdruck-bei-mittlerem-expiratorischem-gasfluss** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-atemwegsdruck-bei-null-expiratorischem-gasfluss** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-atemzugvolumen-einstellung** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-atemzugvolumen-waehrend-beatmung** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-beatmungsvolumen-pro-minute-maschineller-beatmung** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-beatmungszeit-hohem-druck** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-beatmungszeit-niedrigem-druck** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-druckdifferenz-beatmung** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-dynamische-kompliance** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-eingestellter-inspiratorischer-gasfluss** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-einstellung-ausatmungszeit-beatmung** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-einstellung-einatmungszeit-beatmung** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-endexpiratorischer-kohlendioxidpartialdruck** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-exspiratorischer-gasfluss** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-exspiratorischer-sauerstoffpartialdruck** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-horowitz-in-arteriellem-blut** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-inspiratorische-sauerstofffraktion** (2 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-inspiratorischer-gasfluss** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-maximaler-beatmungsdruck** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-maximaler-inspiratorischer-beatmungsdruck** (1 Inst.): `Observation.dataAbsentReason`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-mechanische-atemfrequenz-beatmet** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-mittlerer-beatmungsdruck** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-mittlerer-inspiratorischer-beatmungsdruck** (1 Inst.): `Observation.dataAbsentReason`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-plateau-beatmungsdruck** (1 Inst.): `Observation.dataAbsentReason`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-positiv-endexpiratorischer-druck** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-spontane-atemfrequenz-beatmet** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-spontane-mechanische-atemfrequenz-beatmet** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-spontanes-atemzugvolumen** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-spontanes-mechanisches-atemzugvolumen-waehrend-beatmung** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-unterstuetzungsdruck-beatmung** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-icu-vent-zeitverhaeltnis-ein-ausatmung** (1 Inst.): `Observation.dataAbsentReason`, `Observation.device`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`

</details>

<details><summary>modul-kardio</summary>

- **mii-pr-kardio-diagnose** (2 Inst.): `Condition.abatement[x]`, `Condition.abatement[x]:abatementAge`, `Condition.abatement[x]:abatementDateTime`, `Condition.bodySite`, `Condition.code.coding:icd10-gm.extension:Diagnosesicherheit`, `Condition.code.coding:icd10-gm.extension:Mehrfachcodierungs-Kennzeichen`, `Condition.code.coding:icd10-gm.extension:Seitenlokalisation`, `Condition.encounter`, `Condition.extension:Feststellungsdatum`, `Condition.extension:ReferenzPrimaerdiagnose`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.url`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.value[x]`
- **mii-pr-kardio-kardiale-deviceimplantation** (1 Inst.): `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.encounter`
- **mii-pr-kardio-klappenvitium** (1 Inst.): `Condition.abatement[x]`, `Condition.abatement[x]:abatementAge`, `Condition.abatement[x]:abatementDateTime`, `Condition.code.coding:icd10-gm.extension:Diagnosesicherheit`, `Condition.code.coding:icd10-gm.extension:Mehrfachcodierungs-Kennzeichen`, `Condition.code.coding:icd10-gm.extension:Seitenlokalisation`, `Condition.encounter`, `Condition.extension:Feststellungsdatum`, `Condition.extension:ReferenzPrimaerdiagnose`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.url`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.value[x]`
- **mii-pr-kardio-observation-rauchen** (1 Inst.): `Observation.component:packungsjahre.value[x].comparator`, `Observation.component:rauchdauer.value[x].comparator`, `Observation.component:zigarettenProTag.value[x].comparator`, `Observation.encounter`

</details>

<details><summary>modul-labor</summary>

- **DiagnosticReportLab** (10 Inst.): `DiagnosticReport.basedOn.identifier`, `DiagnosticReport.effective[x].extension:QuelleKlinischesBezugsdatum`, `DiagnosticReport.encounter.identifier`, `DiagnosticReport.performer.identifier`, `DiagnosticReport.specimen`, `DiagnosticReport.subject.identifier`
- **ObservationLab** (34 Inst.): `Observation.code.coding.version`, `Observation.device.identifier`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.encounter.identifier`, `Observation.modifierExtension`, `Observation.modifierExtension:interpretationsbeeinflussendeEigenschaft`, `Observation.specimen`, `Observation.subject.identifier`, `Observation.value[x]:valueCodeableConcept.coding`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.value.extension:quantityPrecision`
- **ServiceRequestLab** (10 Inst.): `ServiceRequest.category.coding.display`, `ServiceRequest.code.coding.version`, `ServiceRequest.encounter.identifier`, `ServiceRequest.specimen`, `ServiceRequest.subject.identifier`

</details>

<details><summary>modul-lungenfunktion</summary>

- **mii-pr-lungenfunktion-bf** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.derivedFrom`, `Observation.hasMember`
- **mii-pr-lungenfunktion-bodyplethysmographie** (1 Inst.): `DiagnosticReport.conclusionCode`, `DiagnosticReport.presentedForm`
- **mii-pr-lungenfunktion-bodyplethysmographie-messung** (1 Inst.): `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.extension`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.partOf`
- **mii-pr-lungenfunktion-diffusion** (1 Inst.): `DiagnosticReport.conclusionCode`, `DiagnosticReport.presentedForm`
- **mii-pr-lungenfunktion-diffusion-messung** (1 Inst.): `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.extension`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.partOf`
- **mii-pr-lungenfunktion-dlco** (1 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-dlcoc** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-dosis-gabe** (2 Inst.): `MedicationAdministration.category`, `MedicationAdministration.context`, `MedicationAdministration.dosage.rate[x]`, `MedicationAdministration.dosage.rate[x]:rateQuantity`, `MedicationAdministration.dosage.rate[x]:rateRatio`, `MedicationAdministration.dosage.route`, `MedicationAdministration.dosage.site`, `MedicationAdministration.dosage.text`, `MedicationAdministration.identifier`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:UNII`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassDe`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassEn`, `MedicationAdministration.medication[x]:medicationCodeableConcept.text`, `MedicationAdministration.note`, `MedicationAdministration.performer`, `MedicationAdministration.reasonCode`, `MedicationAdministration.reasonReference`, `MedicationAdministration.request`
- **mii-pr-lungenfunktion-fev** (3 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange.high`
- **mii-pr-lungenfunktion-fev-fvc** (1 Inst.): `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-frc** (2 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-fvc** (1 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-gewicht** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`, `Observation.derivedFrom`, `Observation.hasMember`, `Observation.method`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-hb** (1 Inst.): `Observation.component`, `Observation.component:predicted`, `Observation.derivedFrom`, `Observation.hasMember`, `Observation.method`
- **mii-pr-lungenfunktion-ic** (1 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-irv-erv** (1 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-kco** (1 Inst.): `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-kcoc** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-mef** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`, `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-methacholine** (1 Inst.): `Medication.code.text`, `Medication.form`, `Medication.ingredient.extension`, `Medication.ingredient.extension:Wirkstoffrelation`, `Medication.ingredient.extension:Wirkstofftyp`, `Medication.ingredient.item[x]:itemCodeableConcept.text`, `Medication.ingredient:Loesung.extension`, `Medication.ingredient:Loesung.extension:Wirkstoffrelation`, `Medication.ingredient:Loesung.extension:Wirkstofftyp`, `Medication.ingredient:Loesung.item[x]:itemCodeableConcept.text`, `Medication.ingredient:Wirkstoff.extension`, `Medication.ingredient:Wirkstoff.extension:Wirkstoffrelation`, `Medication.ingredient:Wirkstoff.extension:Wirkstofftyp`, `Medication.ingredient:Wirkstoff.item[x]:itemCodeableConcept.text`
- **mii-pr-lungenfunktion-pef** (2 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-provokationstest** (1 Inst.): `DiagnosticReport.presentedForm`
- **mii-pr-lungenfunktion-provokationstest-messung** (1 Inst.): `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.extension`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.partOf`
- **mii-pr-lungenfunktion-r** (2 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange.low`
- **mii-pr-lungenfunktion-r-effektiv** (1 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-r-spezifisch** (2 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-rv** (1 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-rvl-tlc** (1 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-sg-total** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`, `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-spirometrie-messung** (1 Inst.): `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.extension`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.partOf`
- **mii-pr-lungenfunktion-tlc** (1 Inst.): `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-va** (1 Inst.): `Observation.component`, `Observation.component:percentPredicted`, `Observation.component:predicted`, `Observation.component:z-score`, `Observation.derivedFrom`, `Observation.hasMember`, `Observation.referenceRange`
- **mii-pr-lungenfunktion-vc** (1 Inst.): `Observation.derivedFrom`, `Observation.referenceRange`

</details>

<details><summary>modul-medikation</summary>

- **Medication** (27 Inst.): `Medication.ingredient.extension`, `Medication.ingredient.extension:Wirkstoffrelation`, `Medication.ingredient.extension:Wirkstofftyp`, `Medication.ingredient.item[x]:itemCodeableConcept.text`
- **MedicationAdministration** (23 Inst.): `MedicationAdministration.medication[x]:medicationCodeableConcept.coding`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:UNII`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassDe`, `MedicationAdministration.medication[x]:medicationCodeableConcept.coding:atcClassEn`, `MedicationAdministration.medication[x]:medicationCodeableConcept.text`, `MedicationAdministration.performer`, `MedicationAdministration.reasonCode`, `MedicationAdministration.reasonReference`
- **MedicationRequest** (26 Inst.): `MedicationRequest.basedOn`, `MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateQuantity.unit`, `MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.high.unit`, `MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange.low.unit`, `MedicationRequest.dosageInstruction.site`, `MedicationRequest.dosageInstruction.timing.repeat.bounds[x]`, `MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsDuration`, `MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsPeriod`, `MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange`, `MedicationRequest.dosageInstruction.timing.repeat.count`, `MedicationRequest.dosageInstruction.timing.repeat.countMax`, `MedicationRequest.dosageInstruction.timing.repeat.dayOfWeek`, `MedicationRequest.dosageInstruction.timing.repeat.duration`, `MedicationRequest.dosageInstruction.timing.repeat.durationMax`, `MedicationRequest.dosageInstruction.timing.repeat.durationUnit`, `MedicationRequest.dosageInstruction.timing.repeat.offset`, `MedicationRequest.dosageInstruction.timing.repeat.periodMax`, `MedicationRequest.dosageInstruction.timing.repeat.timeOfDay`, `MedicationRequest.medication[x]:medicationCodeableConcept.coding`, `MedicationRequest.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer`, `MedicationRequest.medication[x]:medicationCodeableConcept.coding:UNII`, `MedicationRequest.medication[x]:medicationCodeableConcept.coding:atcClassDe`, `MedicationRequest.medication[x]:medicationCodeableConcept.coding:atcClassEn`, `MedicationRequest.note`, `MedicationRequest.reasonCode`, `MedicationRequest.reasonReference`, `MedicationRequest.requester`
- **MedicationStatement** (28 Inst.): `MedicationStatement.dosage.doseAndRate.rate[x]:rateQuantity.unit`, `MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.high`, `MedicationStatement.dosage.doseAndRate.rate[x]:rateRange.low`, `MedicationStatement.dosage.sequence`, `MedicationStatement.dosage.timing.repeat.bounds[x]`, `MedicationStatement.dosage.timing.repeat.bounds[x]:boundsDuration`, `MedicationStatement.dosage.timing.repeat.bounds[x]:boundsPeriod`, `MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange`, `MedicationStatement.dosage.timing.repeat.countMax`, `MedicationStatement.dosage.timing.repeat.dayOfWeek`, `MedicationStatement.dosage.timing.repeat.durationMax`, `MedicationStatement.dosage.timing.repeat.frequencyMax`, `MedicationStatement.dosage.timing.repeat.offset`, `MedicationStatement.dosage.timing.repeat.periodMax`, `MedicationStatement.dosage.timing.repeat.timeOfDay`, `MedicationStatement.medication[x]:medicationCodeableConcept.coding`, `MedicationStatement.medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer`, `MedicationStatement.medication[x]:medicationCodeableConcept.coding:UNII`, `MedicationStatement.medication[x]:medicationCodeableConcept.coding:atcClassDe`, `MedicationStatement.medication[x]:medicationCodeableConcept.coding:atcClassEn`, `MedicationStatement.note`
- **medikationsliste** (21 Inst.): `List.date`, `List.encounter`, `List.identifier`

</details>

<details><summary>modul-mikrobio</summary>

- **mii-pr-mikrobio-allgemeine-bestimmung** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.device`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding.version`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-allgemeine-kultur** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.device`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding.version`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-antigen-antikoerper-quantitativ** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.value[x]:valueCodeableConcept.coding`, `Observation.value[x]:valueQuantity.value.extension:quantityPrecision`
- **mii-pr-mikrobio-aviditaet** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.value[x]:valueCodeableConcept.coding`, `Observation.value[x]:valueQuantity.value.extension:quantityPrecision`
- **mii-pr-mikrobio-bartlett-score** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.device`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding.version`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-ct-wert** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.value[x]:valueCodeableConcept.coding`, `Observation.value[x]:valueQuantity.value.extension:quantityPrecision`
- **mii-pr-mikrobio-diagnostic-report** (1 Inst.): `DiagnosticReport.effective[x].extension:QuelleKlinischesBezugsdatum`
- **mii-pr-mikrobio-empfindlichkeit** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.device`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.value[x]:valueCodeableConcept.coding`, `Observation.value[x]:valueCodeableConcept.extension:Norm`, `Observation.value[x]:valueQuantity.value.extension:quantityPrecision`
- **mii-pr-mikrobio-keimzahl** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.device`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.value[x]:valueCodeableConcept.coding`, `Observation.value[x]:valueQuantity.value.extension:quantityPrecision`
- **mii-pr-mikrobio-mikroskopie** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.component:menge`, `Observation.device`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding.version`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-molekulare-pathogenlast** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding`, `Observation.value[x]:valueQuantity.value.extension:quantityPrecision`
- **mii-pr-mikrobio-mrgn-klasse** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.derivedFrom`, `Observation.device`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.interpretation`, `Observation.method`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding.version`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-nugent-score** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.device`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.value[x]:valueCodeableConcept.coding`, `Observation.value[x]:valueQuantity.value.extension:quantityPrecision`
- **mii-pr-mikrobio-probe** (1 Inst.): `Specimen.collection.bodySite`, `Specimen.collection.extension:einstellungBlutversorgung`, `Specimen.collection.fastingStatus[x]`, `Specimen.collection.fastingStatus[x]:fastingStatusCodeableConcept.coding.code`, `Specimen.collection.fastingStatus[x]:fastingStatusCodeableConcept.coding.system`, `Specimen.collection.quantity`, `Specimen.container`, `Specimen.extension:focus`, `Specimen.extension:infektiositaetsstatus`, `Specimen.extension:probenebene`, `Specimen.note`, `Specimen.parent`, `Specimen.processing`, `Specimen.processing:lagerprozess`, `Specimen.request`
- **mii-pr-mikrobio-resistenzkategorie-status** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.dataAbsentReason`, `Observation.derivedFrom`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.interpretation`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding.version`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-resistenzmechanismen-determinanten** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding.version`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-spezifische-bestimmung** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding.version`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-spezifische-mikroskopie** (1 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.extension:triggeredBy-r5`, `Observation.method`, `Observation.modifierExtension`, `Observation.modifierExtension:interpretationsbeeinflussendeEigenschaft`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding.version`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-titer** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.device`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.value[x]:valueCodeableConcept.coding`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-virulenzfaktor** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding.version`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`
- **mii-pr-mikrobio-voraussichtliche-empfindlichkeit** (3 Inst.): `Observation.basedOn`, `Observation.code.coding.version`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.referenceRange`, `Observation.value[x]:valueCodeableConcept.coding.version`, `Observation.value[x]:valueQuantity.code`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.system`, `Observation.value[x]:valueQuantity.unit`, `Observation.value[x]:valueQuantity.value`

</details>

<details><summary>modul-molgen</summary>

- **anforderung-genetischer-test** (3 Inst.): `ServiceRequest.basedOn`
- **familienanamnese** (2 Inst.): `FamilyMemberHistory.relationship.coding:snomed.extension:FamiliareLinie`, `FamilyMemberHistory.relationship.coding:snomed.extension:Verwandtschaftsgrad`, `FamilyMemberHistory.relationship.coding:snomed.extension:Verwandtschaftsverhaeltnis`
- **mii-pr-molgen-molekularer-biomarker** (1 Inst.): `Observation.derivedFrom`
- **molekulargenetischer-befundbericht** (2 Inst.): `DiagnosticReport.media`
- **polygener-risiko-score** (1 Inst.): `RiskAssessment.prediction.extension:whenCodeableConcept`

</details>

<details><summary>modul-mtb</summary>

- **genomic-study-device** (1 Inst.): `Device.type`
- **mii-pr-mtb-antrag-kostenuebernahme** (1 Inst.): `Claim.related.claim`
- **mii-pr-mtb-antwort-kostenuebernahme** (1 Inst.): `ClaimResponse.extension`, `ClaimResponse.extension:Entscheidung`
- **mii-pr-mtb-behandlungsepisode** (1 Inst.): `ClinicalImpression.extension:LeitlinienbehandlungStatus`, `ClinicalImpression.supportingInfo:Vortherapie.extension:LeitlinieDokumentation`
- **mii-pr-mtb-biomarker-her2-status** (1 Inst.): `Observation.component`, `Observation.component:biomarker-category`, `Observation.component:gene-studied`, `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.issued`
- **mii-pr-mtb-brcaness** (1 Inst.): `Observation.component`, `Observation.component:biomarker-category`, `Observation.component:gene-studied`, `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.identifier`, `Observation.issued`, `Observation.specimen`
- **mii-pr-mtb-consent-given** (1 Inst.): `Observation.encounter`
- **mii-pr-mtb-copy-number-variant** (1 Inst.): `Observation.device`, `Observation.effective[x]`, `Observation.issued`, `Observation.method`, `Observation.specimen`
- **mii-pr-mtb-diagnose-primaertumor** (1 Inst.): `Condition.abatement[x]`, `Condition.abatement[x]:abatementAge`, `Condition.abatement[x]:abatementDateTime`, `Condition.bodySite.coding:snomed-ct.version`, `Condition.code.coding:icd10-gm.extension:Diagnosesicherheit`, `Condition.code.coding:icd10-gm.extension:Mehrfachcodierungs-Kennzeichen`, `Condition.code.coding:icd10-gm.extension:Seitenlokalisation`, `Condition.encounter`, `Condition.evidence`, `Condition.extension:ReferenzPrimaerdiagnose`, `Condition.extension:dueTo`, `Condition.extension:morphology-behavior-icdo3`, `Condition.extension:occurredFollowing`, `Condition.identifier`, `Condition.note`, `Condition.onset[x]`, `Condition.onset[x]:onsetAge`, `Condition.onset[x]:onsetDateTime`
- **mii-pr-mtb-diagnostische-implikation** (1 Inst.): `Observation.effective[x]`, `Observation.encounter`, `Observation.extension:workflow-relatedArtifact`, `Observation.focus`, `Observation.issued`
- **mii-pr-mtb-dna-fusion** (1 Inst.): `Observation.device`, `Observation.effective[x]`, `Observation.issued`, `Observation.method`, `Observation.specimen`
- **mii-pr-mtb-einfache-variante** (1 Inst.): `Observation.device`, `Observation.effective[x]`, `Observation.issued`, `Observation.method`, `Observation.specimen`
- **mii-pr-mtb-follow-up-clinicalimpression** (1 Inst.): `ClinicalImpression.statusReason`
- **mii-pr-mtb-genomic-study** (1 Inst.): `Procedure.code`, `Procedure.encounter`, `Procedure.identifier`, `Procedure.performed[x]`, `Procedure.reasonReference`
- **mii-pr-mtb-genomic-study-analysis** (1 Inst.): `Procedure.identifier`, `Procedure.performed[x]`
- **mii-pr-mtb-hrd-score** (1 Inst.): `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.identifier`, `Observation.issued`, `Observation.specimen`
- **mii-pr-mtb-humangenetische-beratung-auftrag** (1 Inst.): `ServiceRequest.specimen`
- **mii-pr-mtb-immunohistochemistry** (1 Inst.): `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`
- **mii-pr-mtb-immunohistochemistry-her2** (1 Inst.): `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`
- **mii-pr-mtb-immunohistochemistry-mmr** (1 Inst.): `Observation.component`, `Observation.component:biomarker-category`, `Observation.component:gene-studied`, `Observation.component:mmr-mlh1`, `Observation.component:mmr-mlh3`, `Observation.component:mmr-msh2`, `Observation.component:mmr-msh3`, `Observation.component:mmr-msh6`, `Observation.component:mmr-pms2`, `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.identifier`, `Observation.issued`
- **mii-pr-mtb-immunohistochemistry-pdl1** (1 Inst.): `Observation.component`, `Observation.component:biomarker-category`, `Observation.component:cps-score`, `Observation.component:gene-studied`, `Observation.component:ics-score`, `Observation.component:tc-score`, `Observation.component:tps-score`, `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.identifier`, `Observation.issued`
- **mii-pr-mtb-immunohistochemistry-phosphorylation** (1 Inst.): `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.identifier`, `Observation.interpretation`, `Observation.issued`
- **mii-pr-mtb-insituhybridization** (1 Inst.): `Observation.component`, `Observation.component:biomarker-category`, `Observation.component:gene-studied`, `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.identifier`, `Observation.issued`
- **mii-pr-mtb-insituhybridization-her2** (1 Inst.): `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.identifier`, `Observation.issued`
- **mii-pr-mtb-mikrosatelliteninstabilitaet** (1 Inst.): `Observation.component`, `Observation.component:biomarker-category`, `Observation.component:gene-studied`, `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.interpretation`, `Observation.issued`, `Observation.method`, `Observation.specimen`
- **mii-pr-mtb-molecular-pathology-report** (1 Inst.): `DiagnosticReport.issued`, `DiagnosticReport.specimen`
- **mii-pr-mtb-molekularer-biomarker** (1 Inst.): `Observation.component`, `Observation.component:biomarker-category`, `Observation.component:gene-studied`, `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.issued`
- **mii-pr-mtb-msi** (1 Inst.): `Observation.component`, `Observation.component:biomarker-category`, `Observation.component:gene-studied`, `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.identifier`, `Observation.issued`
- **mii-pr-mtb-mutationslast** (1 Inst.): `Observation.component`, `Observation.component:biomarker-category`, `Observation.component:gene-studied`, `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.issued`, `Observation.specimen`
- **mii-pr-mtb-oncotree** (1 Inst.): `Observation.encounter`
- **mii-pr-mtb-panel-devicedefinition** (1 Inst.): `DeviceDefinition.capability`, `DeviceDefinition.extension:geneList`, `DeviceDefinition.note`, `DeviceDefinition.onlineInformation`
- **mii-pr-mtb-ploidie** (1 Inst.): `Observation.component`, `Observation.component:biomarker-category`, `Observation.component:gene-studied`, `Observation.derivedFrom`, `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.interpretation`, `Observation.issued`
- **mii-pr-mtb-response-befund** (1 Inst.): `Observation.encounter`, `Observation.hasMember`, `Observation.identifier`
- **mii-pr-mtb-rna-fusion** (1 Inst.): `Observation.device`, `Observation.effective[x]`, `Observation.issued`, `Observation.method`, `Observation.specimen`
- **mii-pr-mtb-rna-seq** (1 Inst.): `Observation.device`, `Observation.effective[x]`, `Observation.issued`, `Observation.method`, `Observation.specimen`
- **mii-pr-mtb-studie** (1 Inst.): `ResearchStudy.arm`, `ResearchStudy.category`, `ResearchStudy.extension`, `ResearchStudy.extension:Akronym`, `ResearchStudy.extension:AssociatedParty`, `ResearchStudy.extension:Eligibility`, `ResearchStudy.extension:Ethikvotum`, `ResearchStudy.extension:Finanzierung`, `ResearchStudy.extension:Label`, `ResearchStudy.extension:Rekrutierung`, `ResearchStudy.extension:Studienregister`, `ResearchStudy.focus`, `ResearchStudy.keyword`, `ResearchStudy.partOf`
- **mii-pr-mtb-studieneinschluss-anfrage** (1 Inst.): `ServiceRequest.reasonReference`
- **mii-pr-mtb-systemische-therapie** (1 Inst.): `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.encounter`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:Intention.value[x].text`, `Procedure.extension:StellungZurOp`, `Procedure.extension:causedBy`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.outcome`, `Procedure.partOf`, `Procedure.reasonReference`, `Procedure.usedCode`
- **mii-pr-mtb-systemische-vortherapie** (1 Inst.): `Procedure.basedOn`, `Procedure.basedOn:tumorkonferenz`, `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.code.coding:ops.version`, `Procedure.encounter`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:Intention.value[x].text`, `Procedure.extension:StellungZurOp`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.partOf`, `Procedure.reasonReference`, `Procedure.statusReason`, `Procedure.usedCode`
- **mii-pr-mtb-systemtherapie-medication-statement** (1 Inst.): `MedicationStatement.category`, `MedicationStatement.context`, `MedicationStatement.dateAsserted`, `MedicationStatement.dosage.asNeeded[x]`, `MedicationStatement.dosage.asNeeded[x]:asNeededBoolean`, `MedicationStatement.dosage.asNeeded[x]:asNeededCodeableConcept`, `MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.high.code`, `MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.high.system`, `MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.high.unit`, `MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.high.value`, `MedicationStatement.dosage.doseAndRate.dose[x]:doseRange.low`, `MedicationStatement.dosage.doseAndRate.rate[x]`, `MedicationStatement.dosage.doseAndRate.rate[x]:rateQuantity`, `MedicationStatement.dosage.doseAndRate.rate[x]:rateRange`, `MedicationStatement.dosage.doseAndRate.rate[x]:rateRatio`, `MedicationStatement.dosage.doseAndRate.type`, `MedicationStatement.dosage.maxDosePerAdministration`, `MedicationStatement.dosage.maxDosePerPeriod`, `MedicationStatement.dosage.route`, `MedicationStatement.dosage.sequence`, `MedicationStatement.dosage.site`, `MedicationStatement.dosage.text`, `MedicationStatement.dosage.timing.event`, `MedicationStatement.dosage.timing.repeat.bounds[x]`, `MedicationStatement.dosage.timing.repeat.bounds[x]:boundsDuration`, `MedicationStatement.dosage.timing.repeat.bounds[x]:boundsPeriod`, `MedicationStatement.dosage.timing.repeat.bounds[x]:boundsRange`, `MedicationStatement.dosage.timing.repeat.count`, `MedicationStatement.dosage.timing.repeat.countMax`, `MedicationStatement.dosage.timing.repeat.dayOfWeek`, `MedicationStatement.dosage.timing.repeat.duration`, `MedicationStatement.dosage.timing.repeat.durationMax`, `MedicationStatement.dosage.timing.repeat.durationUnit`, `MedicationStatement.dosage.timing.repeat.frequencyMax`, `MedicationStatement.dosage.timing.repeat.offset`, `MedicationStatement.dosage.timing.repeat.periodMax`, `MedicationStatement.dosage.timing.repeat.timeOfDay`, `MedicationStatement.dosage.timing.repeat.when`, `MedicationStatement.identifier`, `MedicationStatement.informationSource`, `MedicationStatement.medication[x]:medicationCodeableConcept.text`, `MedicationStatement.reasonCode`, `MedicationStatement.reasonReference`
- **mii-pr-mtb-therapeutische-implikation** (1 Inst.): `Observation.effective[x]`, `Observation.encounter`, `Observation.focus`, `Observation.issued`
- **mii-pr-mtb-therapieempfehlung** (3 Inst.): `MedicationRequest.dosageInstruction`, `MedicationRequest.encounter`, `MedicationRequest.identifier`, `MedicationRequest.medication[x]:medicationCodeableConcept.text`, `MedicationRequest.note`, `MedicationRequest.priorPrescription`, `MedicationRequest.reasonCode`, `MedicationRequest.requester`, `MedicationRequest.substitution`, `MedicationRequest.supportingInformation`
- **mii-pr-mtb-therapieempfehlung-kombination** (1 Inst.): `RequestGroup.action.action`, `RequestGroup.action.code`, `RequestGroup.encounter`, `RequestGroup.identifier`, `RequestGroup.reasonReference`
- **mii-pr-mtb-therapieplan** (1 Inst.): `CarePlan.activity:extended.progress`, `CarePlan.activity:obds.detail`, `CarePlan.encounter`
- **mii-pr-mtb-who-grad-tumor-zns** (1 Inst.): `Observation.encounter`

</details>

<details><summary>modul-onko</summary>

- **mii-pr-onko-allgemeiner-leistungszustand-ecog** (1 Inst.): `Observation.focus`
- **mii-pr-onko-allgemeiner-leistungszustand-karnofsky** (1 Inst.): `Observation.focus`
- **mii-pr-onko-diagnose-primaertumor** (3 Inst.): `Condition.abatement[x]`, `Condition.abatement[x]:abatementAge`, `Condition.abatement[x]:abatementDateTime`, `Condition.bodySite.coding:snomed-ct.version`, `Condition.code.coding:icd10-gm.extension:Diagnosesicherheit`, `Condition.code.coding:icd10-gm.extension:Mehrfachcodierungs-Kennzeichen`, `Condition.code.coding:icd10-gm.extension:Seitenlokalisation`, `Condition.evidence`, `Condition.extension:ReferenzPrimaerdiagnose`, `Condition.extension:dueTo`, `Condition.extension:morphology-behavior-icdo3`, `Condition.identifier`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.url`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.value[x]`
- **mii-pr-onko-fernmetastasen** (1 Inst.): `Observation.bodySite`
- **mii-pr-onko-genetische-variante** (2 Inst.): `Observation.component:allelic-read-depth`, `Observation.component:allelic-state`, `Observation.component:alt-allele`, `Observation.component:chromosome-identifier`, `Observation.component:coding-change-type`, `Observation.component:conclusion-string`, `Observation.component:copy-number`, `Observation.component:cytogenetic-location`, `Observation.component:detection-limit`, `Observation.component:dna-region`, `Observation.component:exact-start-end`, `Observation.component:gene-fusion`, `Observation.component:gene-studied`, `Observation.component:genomic-hgvs`, `Observation.component:genomic-ref-seq`, `Observation.component:genomic-source-class`, `Observation.component:inner-start-end`, `Observation.component:outer-start-end`, `Observation.component:ref-allele`, `Observation.component:reference-sequence-assembly`, `Observation.component:representative-coding-hgvs`, `Observation.component:representative-protein-hgvs`, `Observation.component:representative-transcript-ref-seq`, `Observation.component:sample-allelic-frequency`, `Observation.component:variant-confidence-status`, `Observation.component:variant-inheritance`, `Observation.component:variation-code`, `Observation.device`, `Observation.focus`, `Observation.issued`, `Observation.method`, `Observation.specimen`
- **mii-pr-onko-krk-abstand-aboral** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-krk-abstand-anokutan** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-krk-abstand-circumferelle-resektionsebene** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-krk-anastomoseninsuffizienz** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-krk-mrt-mesorektale-faszie** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-krk-operation** (1 Inst.): `Procedure.basedOn`, `Procedure.basedOn:tumorkonferenz`, `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.complication`, `Procedure.complication:compl_icd10`, `Procedure.complication:compl_obds`, `Procedure.encounter`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:Intention.value[x].text`, `Procedure.extension:Urgency`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.outcome`, `Procedure.partOf`
- **mii-pr-onko-krk-specimen** (1 Inst.): `Specimen.accessionIdentifier`
- **mii-pr-onko-krk-stoma-markierung** (1 Inst.): `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.code.coding:ops.version`, `Procedure.encounter`, `Procedure.extension`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`
- **mii-pr-onko-mamma-her2neu-status** (2 Inst.): `Observation.encounter`
- **mii-pr-onko-mamma-menopause-status** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-mamma-operation** (1 Inst.): `Procedure.basedOn`, `Procedure.basedOn:tumorkonferenz`, `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.complication`, `Procedure.complication:compl_icd10`, `Procedure.complication:compl_obds`, `Procedure.encounter`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:Intention.value[x].text`, `Procedure.extension:Urgency`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.outcome`, `Procedure.partOf`
- **mii-pr-onko-mamma-praeoperative-markierung** (1 Inst.): `Procedure.encounter`
- **mii-pr-onko-mamma-rezeptorstatus-estrogen** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-mamma-rezeptorstatus-progesteron** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-mamma-sozialdienst** (1 Inst.): `Procedure.basedOn`, `Procedure.basedOn:tumorkonferenz`, `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.code.coding:ops.version`, `Procedure.complication`, `Procedure.complication:compl_icd10`, `Procedure.complication:compl_obds`, `Procedure.encounter`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:Intention.value[x].text`, `Procedure.extension:Urgency`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.outcome`, `Procedure.partOf`
- **mii-pr-onko-melanom-exzision** (1 Inst.): `Procedure.basedOn`, `Procedure.basedOn:tumorkonferenz`, `Procedure.bodySite.coding:snomed-ct.version`, `Procedure.category`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.code.coding:ops.version`, `Procedure.complication`, `Procedure.complication:compl_icd10`, `Procedure.complication:compl_obds`, `Procedure.encounter`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:Intention.value[x].text`, `Procedure.extension:Urgency`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.outcome`, `Procedure.partOf`
- **mii-pr-onko-melanom-ldh** (2 Inst.): `Observation.encounter`
- **mii-pr-onko-melanom-ulzeration** (2 Inst.): `Observation.dataAbsentReason`, `Observation.method`
- **mii-pr-onko-nebenwirkung-adverse-event** (2 Inst.): `AdverseEvent.extension:ctcaeVersion`
- **mii-pr-onko-operation** (1 Inst.): `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:Intention.value[x].text`, `Procedure.extension:Urgency.value[x].text`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`
- **mii-pr-onko-prostata-operation** (1 Inst.): `Procedure.basedOn`, `Procedure.basedOn:tumorkonferenz`, `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.complication`, `Procedure.complication:compl_icd10`, `Procedure.complication:compl_obds`, `Procedure.encounter`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:Intention.value[x].text`, `Procedure.extension:Urgency`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`, `Procedure.outcome`, `Procedure.partOf`
- **mii-pr-onko-prostate-anzahl-positive-stanzen** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-prostate-anzahl-stanzen** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-prostate-ca-befall-stanze** (1 Inst.): `Observation.encounter`, `Observation.specimen`
- **mii-pr-onko-prostate-clavien-dindo** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-prostate-gleason-grade-group** (1 Inst.): `Observation.encounter`
- **mii-pr-onko-prostate-gleason-patterns** (2 Inst.): `Observation.encounter`
- **mii-pr-onko-prostate-gleason-score-gesamt** (1 Inst.): `Observation.encounter`, `Observation.focus`, `Observation.specimen`
- **mii-pr-onko-prostate-psa** (2 Inst.): `Observation.encounter`
- **mii-pr-onko-strahlentherapie** (1 Inst.): `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:Intention.value[x].text`, `Procedure.extension:StellungZurOp.value[x].text`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`
- **mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin** (1 Inst.): `Procedure.bodySite.coding:snomed-ct.version`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.encounter`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`
- **mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie** (1 Inst.): `Procedure.bodySite.coding:snomed-ct.version`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.encounter`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`
- **mii-pr-onko-studienteilnahme** (2 Inst.): `Observation.encounter`
- **mii-pr-onko-systemische-therapie** (1 Inst.): `Procedure.bodySite`, `Procedure.code.coding:ops.extension:Seitenlokalisation`, `Procedure.extension:Dokumentationsdatum`, `Procedure.extension:Intention.value[x].text`, `Procedure.extension:StellungZurOp.value[x].text`, `Procedure.extension:durchfuehrungsabsicht`, `Procedure.note`
- **mii-pr-onko-systemische-therapie-medikation** (3 Inst.): `MedicationStatement.basedOn`, `MedicationStatement.basedOn:therapieempfehlung`, `MedicationStatement.basedOn:tumorkonferenz`, `MedicationStatement.category`, `MedicationStatement.context`, `MedicationStatement.dateAsserted`, `MedicationStatement.dosage`, `MedicationStatement.identifier`, `MedicationStatement.informationSource`, `MedicationStatement.medication[x]:medicationCodeableConcept.text`, `MedicationStatement.reasonCode`, `MedicationStatement.reasonReference`
- **mii-pr-onko-therapieempfehlung-kombinationstherapie** (2 Inst.): `RequestGroup.action.code`
- **mii-pr-onko-therapieempfehlung-medikation** (3 Inst.): `MedicationRequest.basedOn`, `MedicationRequest.dosageInstruction`, `MedicationRequest.encounter`, `MedicationRequest.identifier`, `MedicationRequest.medication[x]:medicationCodeableConcept.text`, `MedicationRequest.priorPrescription`, `MedicationRequest.reasonCode`, `MedicationRequest.requester`, `MedicationRequest.substitution`
- **mii-pr-onko-therapieempfehlung-operation** (1 Inst.): `ServiceRequest.encounter`
- **mii-pr-onko-tnm-klassifikation-synthetisiert** (1 Inst.): `Observation.device`, `Observation.hasMember`, `Observation.specimen`
- **mii-pr-onko-tumormarker** (1 Inst.): `Observation.basedOn`, `Observation.category.coding.display`, `Observation.dataAbsentReason`, `Observation.device`, `Observation.effective[x].extension:QuelleKlinischesBezugsdatum`, `Observation.encounter.identifier`, `Observation.focus`, `Observation.issued`, `Observation.method`, `Observation.modifierExtension`, `Observation.modifierExtension:interpretationsbeeinflussendeEigenschaft`, `Observation.note`, `Observation.referenceRange`, `Observation.specimen`, `Observation.subject.identifier`, `Observation.value[x]:valueCodeableConcept.coding`, `Observation.value[x]:valueQuantity.comparator`, `Observation.value[x]:valueQuantity.value.extension:quantityPrecision`

</details>

<details><summary>modul-patho</summary>

- **mii-pr-patho-additional-specified-grouper** (1 Inst.): `Observation.basedOn`, `Observation.bodySite`, `Observation.component.code`, `Observation.component.dataAbsentReason`, `Observation.derivedFrom`, `Observation.derivedFrom:attached-image`, `Observation.derivedFrom:dicom-image`, `Observation.identifier`, `Observation.meta.lastUpdated`, `Observation.method`, `Observation.specimen`, `Observation.text`
- **mii-pr-patho-attached-image** (1 Inst.): `Media.meta.lastUpdated`, `Media.partOf`, `Media.text`
- **mii-pr-patho-bundle** (1 Inst.): `Bundle.meta.lastUpdated`
- **mii-pr-patho-composition** (1 Inst.): `Composition.meta.lastUpdated`, `Composition.relatesTo`, `Composition.section.section`, `Composition.section:diagnostische-schlussfolgerung.section`, `Composition.section:intraoperativ.section`, `Composition.section:makroskopie.section`, `Composition.section:mikroskopie.section`, `Composition.section:patho-diagnostic-report.section`, `Composition.section:zusaetzliche-beobachtung.section`, `Composition.type.text`
- **mii-pr-patho-diagnostic-conclusion-grouper** (1 Inst.): `Observation.bodySite`, `Observation.component.code`, `Observation.component.dataAbsentReason`, `Observation.identifier`, `Observation.meta.lastUpdated`, `Observation.method`, `Observation.note`, `Observation.specimen`, `Observation.text`
- **mii-pr-patho-finding** (38 Inst.): `Observation.component.code`, `Observation.component.dataAbsentReason`, `Observation.hasMember`, `Observation.identifier`, `Observation.meta.lastUpdated`, `Observation.method`
- **mii-pr-patho-intraoperative-grouper** (1 Inst.): `Observation.basedOn`, `Observation.bodySite`, `Observation.component.code`, `Observation.component.dataAbsentReason`, `Observation.derivedFrom`, `Observation.derivedFrom:attached-image`, `Observation.derivedFrom:dicom-image`, `Observation.identifier`, `Observation.meta.lastUpdated`, `Observation.method`, `Observation.specimen`, `Observation.text`
- **mii-pr-patho-macroscopic-grouper** (1 Inst.): `Observation.basedOn`, `Observation.component.code`, `Observation.component.dataAbsentReason`, `Observation.derivedFrom`, `Observation.derivedFrom:attached-image`, `Observation.derivedFrom:dicom-image`, `Observation.identifier`, `Observation.meta.lastUpdated`, `Observation.method`, `Observation.specimen`, `Observation.text`
- **mii-pr-patho-microscopic-grouper** (1 Inst.): `Observation.basedOn`, `Observation.component.code`, `Observation.component.dataAbsentReason`, `Observation.derivedFrom`, `Observation.derivedFrom:attached-image`, `Observation.derivedFrom:dicom-image`, `Observation.identifier`, `Observation.meta.lastUpdated`, `Observation.method`, `Observation.specimen`, `Observation.text`
- **mii-pr-patho-report** (1 Inst.): `DiagnosticReport.imagingStudy`, `DiagnosticReport.meta.lastUpdated`, `DiagnosticReport.presentedForm`, `DiagnosticReport.text`
- **mii-pr-patho-service-request** (1 Inst.): `ServiceRequest.meta.lastUpdated`, `ServiceRequest.requisition`
- **mii-pr-patho-specimen** (6 Inst.): `Specimen.collection.bodySite.extension:bodyStructure`, `Specimen.collection.extension:einstellungBlutversorgung`, `Specimen.collection.fastingStatus[x]`, `Specimen.collection.fastingStatus[x]:fastingStatusCodeableConcept.coding.code`, `Specimen.collection.fastingStatus[x]:fastingStatusCodeableConcept.coding.system`, `Specimen.collection.quantity`, `Specimen.container.capacity`, `Specimen.container.specimenQuantity`, `Specimen.meta.lastUpdated`, `Specimen.note`, `Specimen.processing.additive`, `Specimen.processing.time[x]:timePeriod.end`, `Specimen.processing.time[x]:timePeriod.start`, `Specimen.receivedTime`, `Specimen.text`

</details>

<details><summary>modul-person</summary>

- **AllergieUnvertraeglichkeit** (1 Inst.): `AllergyIntolerance.extension:abatement.value[x]:valueDateTime`
- **Patient** (11 Inst.): `Patient.address:Postfach.city.extension:gemeindeschluessel.url`, `Patient.address:Postfach.city.extension:gemeindeschluessel.value[x]`, `Patient.address:Postfach.line.extension:Postfach`, `Patient.address:Strassenanschrift.city.extension:gemeindeschluessel.url`, `Patient.address:Strassenanschrift.city.extension:gemeindeschluessel.value[x]`, `Patient.address:Strassenanschrift.line.extension:Adresszusatz`, `Patient.address:Strassenanschrift.line.extension:Hausnummer`, `Patient.address:Strassenanschrift.line.extension:Postfach`, `Patient.address:Strassenanschrift.line.extension:Strasse`, `Patient.birthDate.extension:data-absent-reason`, `Patient.extension:birthPlace`, `Patient.extension:patient-citizenship`, `Patient.extension:patient-nationality`, `Patient.extension:recordedSexOrGender`, `Patient.gender.extension:other-amtlich.url`, `Patient.gender.extension:other-amtlich.value[x]`, `Patient.link`, `Patient.name:geburtsname.family.extension:nachname`, `Patient.name:geburtsname.family.extension:namenszusatz`, `Patient.name:geburtsname.family.extension:vorsatzwort`, `Patient.name:geburtsname.prefix.extension:prefix-qualifier`, `Patient.name:name.family.extension:nachname`, `Patient.name:name.family.extension:namenszusatz`, `Patient.name:name.family.extension:vorsatzwort`, `Patient.name:name.prefix.extension:prefix-qualifier`
- **PatientPseudonymisiert** (1 Inst.): `Patient.active`, `Patient.address`, `Patient.address:Strassenanschrift`, `Patient.gender.extension:other-amtlich`, `Patient.identifier:MaskierterVersichertenIdentifer.assigner`, `Patient.identifier:MaskierterVersichertenIdentifer.value.extension:data-absent-reason`
- **Todesursache** (3 Inst.): `Condition.code.text`, `Condition.encounter`
- **Vitalstatus** (10 Inst.): `Observation.encounter`, `Observation.note`

</details>

<details><summary>modul-pro</summary>

- **mii-pr-pro-observation-bdi-ii** (1 Inst.): `Observation.focus`
- **mii-pr-pro-observation-eq5d5l-index** (1 Inst.): `Observation.focus`
- **mii-pr-pro-observation-eq5d5l-profile** (1 Inst.): `Observation.focus`
- **mii-pr-pro-observation-eq5d5l-vas** (1 Inst.): `Observation.focus`
- **mii-pr-pro-observation-phq-15** (1 Inst.): `Observation.focus`
- **mii-pr-pro-observation-phq-9** (1 Inst.): `Observation.focus`, `Observation.note`
- **mii-pr-pro-observation-whodas12** (1 Inst.): `Observation.focus`, `Observation.note`
- **mii-pr-pro-promis-29-anxiety-tscore** (1 Inst.): `Observation.focus`
- **mii-pr-pro-promis-29-depression-tscore** (1 Inst.): `Observation.focus`, `Observation.identifier`, `Observation.interpretation`, `Observation.note`, `Observation.performer`
- **mii-pr-pro-promis-29-fatigue-tscore** (1 Inst.): `Observation.focus`, `Observation.identifier`, `Observation.interpretation`, `Observation.note`, `Observation.performer`
- **mii-pr-pro-promis-29-pain-intensity** (1 Inst.): `Observation.focus`, `Observation.identifier`, `Observation.note`, `Observation.performer`
- **mii-pr-pro-promis-29-pain-interference-tscore** (1 Inst.): `Observation.focus`, `Observation.identifier`, `Observation.interpretation`, `Observation.note`, `Observation.performer`
- **mii-pr-pro-promis-29-physical-function-tscore** (1 Inst.): `Observation.focus`, `Observation.identifier`, `Observation.interpretation`, `Observation.note`, `Observation.performer`
- **mii-pr-pro-promis-29-sleep-disturbance-tscore** (1 Inst.): `Observation.focus`, `Observation.identifier`, `Observation.interpretation`, `Observation.note`, `Observation.performer`
- **mii-pr-pro-promis-29-social-function-tscore** (1 Inst.): `Observation.focus`, `Observation.identifier`, `Observation.interpretation`, `Observation.note`, `Observation.performer`
- **mii-pr-pro-promis-cognitive-function-sf4a-raw-score** (1 Inst.): `Observation.focus`
- **mii-pr-pro-promis-cognitive-function-sf4a-tscore** (1 Inst.): `Observation.focus`
- **mii-pr-pro-questionnaire-response** (4 Inst.): `QuestionnaireResponse.author`, `QuestionnaireResponse.identifier`, `QuestionnaireResponse.item.answer.item`, `QuestionnaireResponse.item.answer.value[x]:valueCoding.display.extension:translation`, `QuestionnaireResponse.item.item`, `QuestionnaireResponse.item.text`, `QuestionnaireResponse.questionnaire.extension:questionnaireDisplay`

</details>

<details><summary>modul-prozedur</summary>

- **Procedure** (23 Inst.): `Procedure.bodySite.coding:snomed-ct.version`

</details>

<details><summary>modul-seltene</summary>

- **mii-pr-seltene-clinical-diagnosis** (1 Inst.): `Condition.abatement[x]`, `Condition.abatement[x]:abatementAge`, `Condition.abatement[x]:abatementDateTime`, `Condition.bodySite.coding:snomed-ct.version`, `Condition.code.coding:icd10-gm.extension:Diagnosesicherheit`, `Condition.code.coding:icd10-gm.extension:Mehrfachcodierungs-Kennzeichen`, `Condition.code.coding:icd10-gm.extension:Seitenlokalisation`, `Condition.extension:Feststellungsdatum`, `Condition.extension:ReferenzPrimaerdiagnose`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.url`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.value[x]`
- **mii-pr-seltene-consanguinity** (1 Inst.): `Observation.focus`
- **mii-pr-seltene-familienanamnese** (2 Inst.): `FamilyMemberHistory.age[x]`, `FamilyMemberHistory.date`, `FamilyMemberHistory.reasonCode`, `FamilyMemberHistory.reasonReference`, `FamilyMemberHistory.relationship.coding:snomed.extension:FamiliareLinie`, `FamilyMemberHistory.relationship.coding:snomed.extension:Verwandtschaftsgrad`, `FamilyMemberHistory.relationship.coding:snomed.extension:Verwandtschaftsverhaeltnis`
- **mii-pr-seltene-genetic-diagnosis** (1 Inst.): `Condition.abatement[x]`, `Condition.abatement[x]:abatementAge`, `Condition.abatement[x]:abatementDateTime`, `Condition.bodySite`, `Condition.code.coding:alpha-id.version`, `Condition.code.coding:icd10-gm.extension:Diagnosesicherheit`, `Condition.code.coding:icd10-gm.extension:Mehrfachcodierungs-Kennzeichen`, `Condition.code.coding:icd10-gm.extension:Seitenlokalisation`, `Condition.code.coding:icd10-gm.version`, `Condition.code.coding:sct.version`, `Condition.extension:Feststellungsdatum`, `Condition.extension:ReferenzPrimaerdiagnose`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.url`, `Condition.onset[x]:onsetAge.extension:Lebensphase-Beginn.value[x]`
- **mii-pr-seltene-gestationsalter** (1 Inst.): `Observation.category`
- **mii-pr-seltene-therapieempfehlung** (1 Inst.): `MedicationRequest.authoredOn`, `MedicationRequest.basedOn`, `MedicationRequest.dosageInstruction.asNeeded[x]`, `MedicationRequest.dosageInstruction.asNeeded[x]:asNeededBoolean`, `MedicationRequest.dosageInstruction.asNeeded[x]:asNeededCodeableConcept`, `MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.high`, `MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseRange.low`, `MedicationRequest.dosageInstruction.doseAndRate.rate[x]`, `MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateQuantity`, `MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRange`, `MedicationRequest.dosageInstruction.doseAndRate.rate[x]:rateRatio`, `MedicationRequest.dosageInstruction.maxDosePerAdministration`, `MedicationRequest.dosageInstruction.maxDosePerPeriod`, `MedicationRequest.dosageInstruction.route`, `MedicationRequest.dosageInstruction.sequence`, `MedicationRequest.dosageInstruction.site`, `MedicationRequest.dosageInstruction.timing.event`, `MedicationRequest.dosageInstruction.timing.repeat.bounds[x]`, `MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsDuration`, `MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsPeriod`, `MedicationRequest.dosageInstruction.timing.repeat.bounds[x]:boundsRange`, `MedicationRequest.dosageInstruction.timing.repeat.count`, `MedicationRequest.dosageInstruction.timing.repeat.countMax`, `MedicationRequest.dosageInstruction.timing.repeat.dayOfWeek`, `MedicationRequest.dosageInstruction.timing.repeat.duration`, `MedicationRequest.dosageInstruction.timing.repeat.durationMax`, `MedicationRequest.dosageInstruction.timing.repeat.durationUnit`, `MedicationRequest.dosageInstruction.timing.repeat.frequencyMax`, `MedicationRequest.dosageInstruction.timing.repeat.offset`, `MedicationRequest.dosageInstruction.timing.repeat.periodMax`, `MedicationRequest.dosageInstruction.timing.repeat.timeOfDay`, `MedicationRequest.dosageInstruction.timing.repeat.when`, `MedicationRequest.identifier`, `MedicationRequest.medication[x]:medicationCodeableConcept.text`, `MedicationRequest.note`, `MedicationRequest.priorPrescription`, `MedicationRequest.reasonCode`, `MedicationRequest.requester`, `MedicationRequest.substitution`

</details>

<details><summary>modul-soziodemographie</summary>

- **mii-pr-sdd-betreuungssituation** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-sdd-haushaltsgroesse** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-sdd-partnerschaft** (1 Inst.): `Observation.dataAbsentReason`
- **mii-pr-sdd-schwerbehindertenausweis** (2 Inst.): `Observation.dataAbsentReason`
- **mii-pr-sdd-vertrauensperson** (1 Inst.): `Observation.dataAbsentReason`

</details>

<details><summary>modul-studie</summary>

- **mii-pr-studie-beteiligte-person** (1 Inst.): `PractitionerRole.telecom`
- **mii-pr-studie-studie** (1 Inst.): `ResearchStudy.partOf`
- **mii-pr-studie-studieneinschluss-anfrage** (1 Inst.): `ServiceRequest.supportingInfo`, `ServiceRequest.supportingInfo:Proband`, `ServiceRequest.supportingInfo:Studie`

</details>

<details><summary>modul-symptom</summary>

- **finding-condition** (2 Inst.): `Condition.onset[x]:onsetPeriod.end.extension:lebensphase-bis`, `Condition.onset[x]:onsetPeriod.start.extension:lebensphase-von`
- **finding-observation** (4 Inst.): `Observation.specimen`

</details>

## Richtung B: befüllte Nicht-MS-Pfade (Ballot-Feedback-Kandidaten)

| Modul | Pfade | Top (Anzahl Profile, die den Pfad befüllen) |
|---|---|---|
| modul-bildgebung | 9 | `extension`×3, `extension.url`×3, `extension.valueId`×2, `extension.valueString` |
| modul-biobank | 12 | `status`×6, `effectiveDateTime`×3, `accessionIdentifier.system`, `accessionIdentifier.value`, `accessionIdentifier` |
| modul-consent | 3 | `date`, `scope`, `scope.coding` |
| modul-fall | 4 | `serviceProvider.identifier`, `serviceProvider.reference`, `serviceProvider.display`, `serviceProvider` |
| modul-icu | 71 | `status`×30, `code`×7, `encounter`×7, `encounter.reference`×7, `subject.reference`×6, `subject`×6 |
| modul-kardio | 33 | `status`×7, `performer`×2, `performer.display`×2, `code`, `deviceName.name`, `deviceName` |
| modul-labor | 4 | `requester`, `reasonCode`, `reasonCode.coding`, `requester.reference` |
| modul-lungenfunktion | 2 | `effectiveDateTime`, `name` |
| modul-medikation | 2 | `status`, `title` |
| modul-molgen | 56 | `status`×5, `specimen.reference`×4, `category.coding`×4, `category`×4, `specimen`×4, `basedOn`×4 |
| modul-mtb | 73 | `status`×24, `subject.reference`×7, `subject`×7, `intent`×4, `effectiveDateTime`×3, `valueCodeableConcept`×2 |
| modul-onko | 94 | `status`×40, `effectiveDateTime`×9, `method`×4, `method.coding`×4, `note`×3, `note.text`×3 |
| modul-patho | 30 | `performer`×6, `performer.reference`×6, `encounter`×3, `encounter.reference`×3, `date`×2, `valueString`×2 |
| modul-pro | 58 | `subject`×18, `subject.reference`×18, `encounter`×11, `encounter.reference`×11 |
| modul-prozedur | 2 | `recorder`, `recorder.reference` |
| modul-seltene | 25 | `subject.reference`×3, `subject`×3, `status`×3, `code`×2, `code.coding`×2, `intent`×2 |
| modul-soziodemographie | 17 | `valueCodeableConcept`×6, `valueCodeableConcept.coding`×6, `valueCodeableConcept.text`×2, `code.coding`, `code`, `code.text` |
| modul-studie | 15 | `active`, `extension.url`, `extension`, `title`, `status`, `extension.valueBoolean` |
| modul-symptom | 5 | `extension`, `bodySite.coding`, `bodySite`, `extension.url`, `extension.valueReference` |
