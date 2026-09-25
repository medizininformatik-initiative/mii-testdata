**Reference version: MII Kerndatensatz complete [`2027.0.0-ballot.19`](https://github.com/medizininformatik-initiative/kerndatensatz-complete/releases/tag/v2027.0.0-ballot.19)** — every figure on this page refers to the profile snapshots of that BOM version.

13658 MS elements across the profiles in use · **84 top-level unpopulated nodes**

| Module | Profiles used/total | MS populated/total | Coverage | most frequent gaps |
|---|---|---|---|---|
| bildgebung | 12/12 | 381/381 | 100 % | — |
| biobank | 11/11 | 302/302 | 100 % | — |
| consent | 3/3 | 77/77 | 100 % | — |
| diagnose | 1/1 | 77/77 | 100 % | — |
| dokument | 1/1 | 70/70 | 100 % | — |
| fall | 1/1 | 96/96 | 100 % | — |
| icu | 94/94 | 2939/2994 | 98 % | `dataAbsentReason`, `value[x]`, `component.dataAbsentReason` |
| kardio | 13/13 | 361/361 | 100 % | — |
| labor | 3/3 | 151/151 | 100 % | — |
| lungenfunktion | 39/48 | 1535/1556 | 99 % | `component`, `component:predicted`, `component:percentPredicted` |
| medikation | 5/5 | 437/437 | 100 % | — |
| meta | 0/1 | 0/0 | – | — |
| mikrobio | 21/21 | 1387/1427 | 97 % | `referenceRange`, `container.additive[x]`, `extension:focus` |
| molgen | 16/16 | 247/248 | 100 % | `extension:recommended-action` |
| mtb | 50/50 | 1515/1517 | 100 % | `action.action` |
| onko | 76/76 | 2023/2023 | 100 % | — |
| patho | 17/17 | 468/468 | 100 % | — |
| person | 5/5 | 258/258 | 100 % | — |
| pro | 21/23 | 292/292 | 100 % | — |
| prozedur | 1/1 | 46/46 | 100 % | — |
| seltene | 23/23 | 607/607 | 100 % | — |
| soziodemographie | 16/16 | 149/153 | 97 % | `dataAbsentReason` |
| studie | 7/7 | 78/78 | 100 % | — |
| symptom | 2/2 | 39/39 | 100 % | — |

Full report (per profile, plus populated non-MS paths as ballot feedback candidates): [docs/ms-coverage-2027.md](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ms-coverage-2027.md)
