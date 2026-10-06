**Referenzversion: MII Kerndatensatz complete [`2027.0.0-ballot.19`](https://github.com/medizininformatik-initiative/kerndatensatz-complete/releases/tag/v2027.0.0-ballot.19)** — jede Zahl auf dieser Seite bezieht sich auf die Profil-Snapshots dieser BOM-Version.

13658 MS-Elemente über alle genutzten Profile · **95 oberste unbefüllte Knoten**

| Modul | Profile genutzt/gesamt | MS befüllt/gesamt | Abdeckung | häufigste Lücken |
|---|---|---|---|---|
| bildgebung | 12/12 | 381/381 | 100 % | — |
| biobank | 11/11 | 302/302 | 100 % | — |
| consent | 3/3 | 77/77 | 100 % | — |
| diagnose | 1/1 | 77/77 | 100 % | — |
| dokument | 1/1 | 70/70 | 100 % | — |
| fall | 1/1 | 96/96 | 100 % | — |
| icu | 94/94 | 2939/2994 | 98 % | `dataAbsentReason`, `value[x]`, `component.dataAbsentReason` |
| kardio | 13/13 | 360/361 | 100 % | `code.coding:icd10-gm.extension:Seitenlokalisation` |
| labor | 3/3 | 151/151 | 100 % | — |
| lungenfunktion | 39/48 | 1535/1556 | 99 % | `component`, `component:predicted`, `component:percentPredicted` |
| medikation | 5/5 | 437/437 | 100 % | — |
| meta | 0/1 | 0/0 | – | — |
| mikrobio | 21/21 | 1387/1427 | 97 % | `referenceRange`, `container.additive[x]`, `extension:focus` |
| molgen | 16/16 | 247/248 | 100 % | `extension:recommended-action` |
| mtb | 50/50 | 1515/1517 | 100 % | `action.action` |
| onko | 76/76 | 1982/2023 | 98 % | `code.coding:ops.extension:Seitenlokalisation`, `code.coding:ops.version` |
| patho | 17/17 | 468/468 | 100 % | — |
| person | 5/5 | 258/258 | 100 % | — |
| pro | 21/23 | 292/292 | 100 % | — |
| prozedur | 1/1 | 46/46 | 100 % | — |
| seltene | 23/23 | 606/607 | 100 % | `code.coding:icd10-gm.extension:Seitenlokalisation` |
| soziodemographie | 16/16 | 149/153 | 97 % | `dataAbsentReason` |
| studie | 7/7 | 78/78 | 100 % | — |
| symptom | 2/2 | 39/39 | 100 % | — |

Vollständiger Bericht (je Profil, plus befüllte Nicht-MS-Pfade als Kandidaten für Ballot-Feedback): [docs/ms-coverage-2027.md](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ms-coverage-2027.md)
