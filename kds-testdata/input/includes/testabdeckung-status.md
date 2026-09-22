**Bezugsstand: MII Kerndatensatz complete [`2027.0.0-ballot.19`](https://github.com/medizininformatik-initiative/kerndatensatz-complete/releases/tag/v2027.0.0-ballot.19)** — alle Zahlen dieser Seite beziehen sich auf die Profil-Snapshots dieses BOM-Stands.

11862 MS-Elemente über die genutzten Profile · **1610 oberste unbefüllte Knoten**

| Modul | offene MS-Lücken | häufigste fehlende Elemente |
|---|---|---|
| bildgebung | 40 | `bodySite.coding:snomed-ct.version`, `code.coding:ops.extension:Seitenlokalisation`, `code.coding:ops.version`, `encounter` |
| biobank | 8 | `collection.extension:einstellungBlutversorgung`, `collection.quantity`, `note`, `parent` |
| consent | 4 | `extension:domainReference`, `patient.identifier`, `policyRule`, `source[x]` |
| diagnose | 7 | `abatement[x]`, `abatement[x]:abatementAge`, `abatement[x]:abatementDateTime`, `bodySite.coding:snomed-ct.version` |
| dokument | 1 | `extension:nlp-processing-status` |
| fall | 1 | `account` |
| icu | 387 | `encounter`, `identifier`, `device`, `dataAbsentReason` |
| kardio | 29 | `encounter`, `abatement[x]`, `abatement[x]:abatementAge`, `abatement[x]:abatementDateTime` |
| labor | 22 | `encounter.identifier`, `specimen`, `subject.identifier`, `effective[x].extension:QuelleKlinischesBezugsdatum` |
| lungenfunktion | 163 | `hasMember`, `derivedFrom`, `referenceRange`, `component` |
| medikation | 64 | `medication[x]:medicationCodeableConcept.coding`, `medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer`, `medication[x]:medicationCodeableConcept.coding:UNII`, `medication[x]:medicationCodeableConcept.coding:atcClassDe` |
| mikrobio | 163 | `effective[x].extension:QuelleKlinischesBezugsdatum`, `basedOn`, `code.coding.version`, `referenceRange` |
| molgen | 7 | `basedOn`, `relationship.coding:snomed.extension:FamiliareLinie`, `relationship.coding:snomed.extension:Verwandtschaftsgrad`, `relationship.coding:snomed.extension:Verwandtschaftsverhaeltnis` |
| mtb | 312 | `encounter`, `issued`, `effective[x]`, `focus` |
| onko | 241 | `encounter`, `note`, `code.coding:ops.extension:Seitenlokalisation`, `extension:Dokumentationsdatum` |
| person | 29 | `encounter`, `address:Postfach.city.extension:gemeindeschluessel.url`, `address:Postfach.city.extension:gemeindeschluessel.value[x]`, `address:Postfach.line.extension:Postfach` |
| pro | 48 | `focus`, `identifier`, `note`, `performer` |
| prozedur | 1 | `bodySite.coding:snomed-ct.version` |
| seltene | 71 | `abatement[x]`, `abatement[x]:abatementAge`, `abatement[x]:abatementDateTime`, `code.coding:icd10-gm.extension:Diagnosesicherheit` |
| soziodemographie | 5 | `dataAbsentReason` |
| studie | 4 | `telecom`, `supportingInfo`, `supportingInfo:Proband`, `supportingInfo:Studie` |
| symptom | 3 | `onset[x]:onsetPeriod.end.extension:lebensphase-bis`, `onset[x]:onsetPeriod.start.extension:lebensphase-von`, `specimen` |

Vollständiger Report (je Profil, plus befüllte Nicht-MS-Pfade als Ballot-Feedback-Kandidaten): [docs/ms-coverage-2027.md](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ms-coverage-2027.md)
