**Bezugsstand: MII Kerndatensatz complete [`2027.0.0-ballot.19`](https://github.com/medizininformatik-initiative/kerndatensatz-complete/releases/tag/v2027.0.0-ballot.19)** — alle Zahlen dieser Seite beziehen sich auf die Profil-Snapshots dieses BOM-Stands.

13834 MS-Elemente über die genutzten Profile · **1977 oberste unbefüllte Knoten**

| Modul | Profile genutzt/gesamt | MS befüllt/gesamt | Coverage | häufigste Lücken |
|---|---|---|---|---|
| bildgebung | 12/12 | 285/383 | 74 % | `bodySite.coding:snomed-ct.version`, `code.coding:ops.extension:Seitenlokalisation`, `code.coding:ops.version` |
| biobank | 11/11 | 230/302 | 76 % | `collection.extension:einstellungBlutversorgung`, `collection.quantity`, `note` |
| consent | 3/3 | 64/77 | 83 % | `content.attachment.extension:physicalDocumentLocation`, `content.attachment.url`, `extension:domainReference` |
| diagnose | 1/1 | 62/77 | 81 % | `abatement[x]`, `abatement[x]:abatementAge`, `abatement[x]:abatementDateTime` |
| dokument | 1/1 | 69/70 | 99 % | `extension:nlp-processing-status` |
| fall | 1/1 | 92/96 | 96 % | `account` |
| icu | 93/94 | 2338/2996 | 78 % | `identifier`, `dataAbsentReason`, `device` |
| kardio | 13/13 | 272/362 | 75 % | `encounter`, `abatement[x]`, `abatement[x]:abatementAge` |
| labor | 3/3 | 120/151 | 79 % | `encounter.identifier`, `specimen`, `subject.identifier` |
| lungenfunktion | 39/48 | 1156/1556 | 74 % | `hasMember`, `derivedFrom`, `referenceRange` |
| medikation | 5/5 | 305/437 | 70 % | `medication[x]:medicationCodeableConcept.coding`, `medication[x]:medicationCodeableConcept.coding:Pharmazentralnummer`, `medication[x]:medicationCodeableConcept.coding:UNII` |
| meta | 0/1 | 0/0 | – | — |
| mikrobio | 21/21 | 1267/1583 | 80 % | `effective[x].extension:QuelleKlinischesBezugsdatum`, `basedOn`, `code.coding.version` |
| molgen | 16/16 | 241/248 | 97 % | `basedOn`, `relationship.coding:snomed.extension:FamiliareLinie`, `relationship.coding:snomed.extension:Verwandtschaftsgrad` |
| mtb | 50/50 | 929/1520 | 61 % | `encounter`, `issued`, `effective[x]` |
| onko | 76/76 | 1385/2035 | 68 % | `encounter`, `note`, `code.coding:ops.extension:Seitenlokalisation` |
| patho | 15/17 | 349/468 | 75 % | `meta.lastUpdated`, `text`, `component.code` |
| person | 5/5 | 161/258 | 62 % | `encounter`, `address:Postfach.city.extension:gemeindeschluessel.url`, `address:Postfach.city.extension:gemeindeschluessel.value[x]` |
| pro | 21/23 | 238/292 | 82 % | `focus`, `note`, `identifier` |
| prozedur | 1/1 | 45/46 | 98 % | `bodySite.coding:snomed-ct.version` |
| seltene | 23/23 | 395/607 | 65 % | `abatement[x]`, `abatement[x]:abatementAge`, `abatement[x]:abatementDateTime` |
| soziodemographie | 15/16 | 148/153 | 97 % | `dataAbsentReason` |
| studie | 7/7 | 73/78 | 94 % | `telecom`, `partOf`, `supportingInfo` |
| symptom | 2/2 | 36/39 | 92 % | `onset[x]:onsetPeriod.end.extension:lebensphase-bis`, `onset[x]:onsetPeriod.start.extension:lebensphase-von`, `specimen` |

Vollständiger Report (je Profil, plus befüllte Nicht-MS-Pfade als Ballot-Feedback-Kandidaten): [docs/ms-coverage-2027.md](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ms-coverage-2027.md)
