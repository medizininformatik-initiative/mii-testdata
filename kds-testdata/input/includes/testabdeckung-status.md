**Bezugsstand: MII Kerndatensatz complete [`2027.0.0-ballot.19`](https://github.com/medizininformatik-initiative/kerndatensatz-complete/releases/tag/v2027.0.0-ballot.19)** — alle Zahlen dieser Seite beziehen sich auf die Profil-Snapshots dieses BOM-Stands.

13658 MS-Elemente über die genutzten Profile · **306 oberste unbefüllte Knoten**

| Modul | Profile genutzt/gesamt | MS befüllt/gesamt | Coverage | häufigste Lücken |
|---|---|---|---|---|
| bildgebung | 12/12 | 371/381 | 97 % | `dosage.rate[x]:rateRatio.denominator`, `dosage.rate[x]:rateRatio.numerator` |
| biobank | 11/11 | 293/302 | 97 % | `extension:focus`, `extension:anzahlAliquots`, `processing.extension:temperature-miabis` |
| consent | 3/3 | 77/77 | 100 % | — |
| diagnose | 1/1 | 77/77 | 100 % | — |
| dokument | 1/1 | 69/70 | 99 % | `extension:nlp-processing-status` |
| fall | 1/1 | 96/96 | 100 % | — |
| icu | 94/94 | 2785/2994 | 93 % | `dataAbsentReason`, `referenceRange`, `specimen` |
| kardio | 13/13 | 361/361 | 100 % | — |
| labor | 3/3 | 151/151 | 100 % | — |
| lungenfunktion | 39/48 | 1412/1556 | 91 % | `hasMember`, `component`, `component:predicted` |
| medikation | 5/5 | 437/437 | 100 % | — |
| meta | 0/1 | 0/0 | – | — |
| mikrobio | 21/21 | 1386/1427 | 97 % | `referenceRange`, `dataAbsentReason`, `container.additive[x]` |
| molgen | 16/16 | 240/248 | 97 % | `basedOn`, `extension:focus`, `extension:metrics` |
| mtb | 50/50 | 1510/1517 | 100 % | `extension:transformationVon`, `extension:focus`, `extension:metrics` |
| onko | 76/76 | 2016/2023 | 100 % | `modifierExtension:aPraefix`, `modifierExtension:rPraefix`, `extension:transformationVon` |
| patho | 17/17 | 456/468 | 97 % | `component.code`, `component.dataAbsentReason`, `extension:diagnosticReport` |
| person | 5/5 | 254/258 | 98 % | `extension:birthPlace.value[x].country.extension:countryCode` |
| pro | 21/23 | 290/292 | 99 % | `item.answer.item`, `questionnaire.extension:questionnaireDisplay` |
| prozedur | 1/1 | 46/46 | 100 % | — |
| seltene | 23/23 | 606/607 | 100 % | `extension:vonSEBetroffen` |
| soziodemographie | 16/16 | 149/153 | 97 % | `dataAbsentReason` |
| studie | 7/7 | 76/78 | 97 % | `characteristic.extension:definitionByCombination`, `characteristic.extension:definitionReference` |
| symptom | 2/2 | 38/39 | 97 % | `specimen` |

Vollständiger Report (je Profil, plus befüllte Nicht-MS-Pfade als Ballot-Feedback-Kandidaten): [docs/ms-coverage-2027.md](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ms-coverage-2027.md)
