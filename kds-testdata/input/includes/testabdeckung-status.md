**Bezugsstand: MII Kerndatensatz complete [`2027.0.0-ballot.19`](https://github.com/medizininformatik-initiative/kerndatensatz-complete/releases/tag/v2027.0.0-ballot.19)** — alle Zahlen dieser Seite beziehen sich auf die Profil-Snapshots dieses BOM-Stands.

11862 MS-Elemente über die genutzten Profile · **1610 oberste unbefüllte Knoten**

| Modul | Profile genutzt/gesamt | MS befüllt/gesamt | Coverage | häufigste Lücken |
|---|---|---|---|---|
| bildgebung | 11/12 | 250/345 | 72 % | `bodySite.coding:snomed-ct.version`, `code.coding:ops.extension:Seitenlokalisation`, `code.coding:ops.version` |
| biobank | 3/11 | 68/93 | 73 % | `collection.extension:einstellungBlutversorgung`, `collection.quantity`, `note` |
| consent | 1/3 | 41/50 | 82 % | `extension:domainReference`, `patient.identifier`, `policyRule` |
| diagnose | 1/1 | 62/77 | 81 % | `abatement[x]`, `abatement[x]:abatementAge`, `abatement[x]:abatementDateTime` |
| dokument | 1/1 | 69/70 | 99 % | `extension:nlp-processing-status` |
| fall | 1/1 | 92/96 | 96 % | `account` |
| icu | 65/94 | 1693/2142 | 79 % | `encounter`, `identifier`, `device` |
| kardio | 13/13 | 272/362 | 75 % | `encounter`, `abatement[x]`, `abatement[x]:abatementAge` |
| labor | 3/3 | 120/151 | 79 % | `encounter.identifier`, `specimen`, `subject.identifier` |
| lungenfunktion | 39/48 | 1156/1556 | 74 % | `hasMember`, `derivedFrom`, `referenceRange` |
| medikation | 5/5 | 305/437 | 70 % | `medication[x]:medicationCodeableConcept.coding`, `medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer`, `medication[x]:medicationCodeableConcept.coding:UNII` |
| meta | 0/1 | 0/0 | – | — |
| mikrobio | 19/21 | 1200/1442 | 83 % | `effective[x].extension:QuelleKlinischesBezugsdatum`, `basedOn`, `code.coding.version` |
| molgen | 16/16 | 241/248 | 97 % | `basedOn`, `relationship.coding:snomed.extension:FamiliareLinie`, `relationship.coding:snomed.extension:Verwandtschaftsgrad` |
| mtb | 48/50 | 916/1501 | 61 % | `encounter`, `issued`, `effective[x]` |
| onko | 76/76 | 1381/2035 | 68 % | `encounter`, `note`, `code.coding:ops.extension:Seitenlokalisation` |
| patho | 3/17 | 25/25 | 100 % | — |
| person | 3/5 | 113/195 | 58 % | `encounter`, `address:Postfach.city.extension:gemeindeschluessel.url`, `address:Postfach.city.extension:gemeindeschluessel.value[x]` |
| pro | 18/23 | 200/249 | 80 % | `focus`, `identifier`, `note` |
| prozedur | 1/1 | 45/46 | 98 % | `bodySite.coding:snomed-ct.version` |
| seltene | 17/23 | 328/538 | 61 % | `abatement[x]`, `abatement[x]:abatementAge`, `abatement[x]:abatementDateTime` |
| soziodemographie | 15/16 | 148/153 | 97 % | `dataAbsentReason` |
| studie | 2/7 | 8/12 | 67 % | `telecom`, `supportingInfo`, `supportingInfo:Proband` |
| symptom | 2/2 | 36/39 | 92 % | `onset[x]:onsetPeriod.end.extension:lebensphase-bis`, `onset[x]:onsetPeriod.start.extension:lebensphase-von`, `specimen` |

Vollständiger Report (je Profil, plus befüllte Nicht-MS-Pfade als Ballot-Feedback-Kandidaten): [docs/ms-coverage-2027.md](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ms-coverage-2027.md)
