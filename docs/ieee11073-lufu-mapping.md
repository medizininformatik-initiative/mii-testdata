# IEEE 11073 (MDC) für Lungenfunktion und Beatmung — Code-Erhebung

**Stichtag:** 2026-09-25
**Zweck:** Vorlage für ein Ballotierungs-Ticket am MII-Modul **Lungenfunktion** — Prüfung, ob ISO/IEEE 11073-10101 als drittes Coding-Slice neben SNOMED CT und LOINC aufgenommen werden sollte.

> **Entstehung.** Dieses Dokument ist die zusammengeführte Fassung dreier unabhängiger Erhebungen, die parallel liefen und versehentlich dieselbe Datei beschrieben haben. Die Zusammenführung war fachlich ein Gewinn: Zwei Fehlanzeigen der einen Erhebung (Atemwegswiderstand, Plateaudruck) wurden von den anderen widerlegt, und die vollständige Enumeration des CodeSystems aus einer dritten stützt nun alle Negativaussagen. Wo sich die Fassungen widersprachen, wurde jeder strittige Code erneut per `/lookup` geprüft; es steht jeweils der bestätigte Befund.

---

## 1. Methode

| | |
|---|---|
| Terminologieserver | SU-TermServ (`ontoserver.mii-termserv.de/fhir`) über lokalen mTLS-Proxy `http://localhost:3000` |
| CodeSystem | `urn:iso:std:iso:11073:10101` (ISO/IEEE 11073-10101, MDC-Nomenklatur) |
| CodeSystem-Version | **`2024-12-05`** (vom Server in jeder Antwort mitgeliefert) |
| Operationen | `POST /search` (≙ `ValueSet/$expand` mit `filter`), `POST /lookup` (≙ `CodeSystem/$lookup`), `POST /hierarchy` |
| Umfang | **48 287 Konzepte** mit `MDC_`-Bezeichner, vollständig lokal indiziert |
| Abgleichspaket | `de.medizininformatikinitiative.kerndatensatz.complete#2027.0.0-ballot.19` |

### Suchstrategie

Das `display` eines MDC-Konzepts ist der **symbolische Bezeichner** (`MDC_VENT_RESP_RATE`), keine Klartextphrase. Klartextsuchen laufen daher ins Leere — „vital capacity" liefert null Treffer, `MDC_VOL` dagegen 534. Die fachliche Bedeutung steckt in der Property `definition` und in den Designationen `common-term` und `acronym`:

```
POST /lookup {"system":"urn:iso:std:iso:11073:10101","code":"151586"}
→ display     MDC_VENT_RESP_RATE
  definition  "Rate of mechanical ventilation; method not specified."
  common-term "Ventilation rate"
  acronym     "RR"
```

**Zwei Eigenheiten des Zugangs**, die die Erhebung geprägt haben:

1. **`/search` filtert clientseitig auf das `display`.** Konzepte, die nur über eine Designation passen, werden in `expansion.total` gezählt, aber nicht ausgeliefert. Beispiel: Filter `RESIST` meldet `total: 20` und liefert 2 Konzepte. Der Server selbst filtert als Wort-Präfix, nicht als Substring.
2. **`offset` wird vom Proxy ignoriert.** Paginierung ist nicht möglich; zwei Anfragen mit `offset: 0` und `offset: 2` liefern identische Ergebnisse.

Daraus folgt die tragende Methode: Das **vollständige CodeSystem wurde in einer einzigen Expansion** gezogen (`filter: "MDC"`, `count: 50000` → 48 287 von 48 287) und lokal indiziert. **Alle Negativaussagen dieses Dokuments („kein Treffer") beruhen auf diesem vollständigen Index**, nicht auf einer gefilterten Serverantwort. Ergänzend wurden 472 Konzepte des respiratorischen Namensraums einzeln per `/lookup` aufgelöst und ihre Definitionen und Designationen nach den gesuchten Fachbegriffen durchsucht.

**Warum eine Stichwortsuche allein nicht reicht — und was das für die Belastbarkeit heißt.** Eine erste Erhebung meldete „kein Treffer" für den Atemwegswiderstand, weil sie nach dem Stichwort `RESIST` gesucht hatte. Die Nomenklatur benennt ihn aber `MDC_RES_AWAY`. Derselbe Fehler trat beim Plateaudruck auf (`MDC_VENT_PRESS_RESP_PLAT`, gesucht worden war `PLATEAU`). Beide Fehlanzeigen waren falsch und wurden durch die Parallelerhebungen aufgedeckt. Konsequenz für die Methode: Negativaussagen wurden anschließend **nicht** über Stichwörter geführt, sondern über die **vollständige Auflistung ganzer Namensfamilien** aus dem lokalen Index. Dazu wurden alle Namenspräfixe der Partition 2 (Messgrößen) ausgezählt und die einschlägigen Familien vollständig gelesen — `MDC_RES` (9), `MDC_COEF` (2), `MDC_ELASTANCE` (2), `MDC_IMPED` (1), `MDC_CAPAC` (1), `MDC_COMPL` (5), `MDC_AWAY` (34), `MDC_VOL_AWAY` (65), `MDC_FLOW_AWAY` (40), `MDC_RATIO` (33), `MDC_RESP` (21). Nur so sind die verbliebenen Fehlanzeigen belastbar.

**Bestätigungsgrad.** Jeder in den Tabellen genannte Code wurde einzeln per `/lookup` bestätigt; `display` und `definition` sind wörtlich übernommen (Definitionen gekürzt, HTML-Markup der Designationen entfernt). Kein Code ist hergeleitet oder geraten. Der Server war durchgehend erreichbar; keine Angabe musste als „nicht abgefragt" gekennzeichnet werden.

Eine anfängliche Vermutung, die Sollwert-Codes ließen sich rechnerisch aus den Mess-Codes ableiten (Partition 514 = Partition 2 + Offset), erwies sich als **falsch** — `33706112` existiert nicht — und wurde durch die vollständige Enumeration der Partition ersetzt.

### Der entscheidende Fund

Das CodeSystem enthält eine eigene Partition für Sollwerte:

```
POST /lookup {"system":"urn:iso:std:iso:11073:10101","code":"514"}
→ display     "Predicted Values"
  definition  "Partition 514 is populated with codes for predicted values"
```

Diese Partition umfasst **51 Konzepte**, die per Code-Arithmetik (`code >> 16 == 514`) aus dem lokalen Index vollständig isoliert und einzeln aufgelöst wurden (51 von 51 bestätigt). `/hierarchy` liefert für `514` weder Eltern noch Kinder — die Zugehörigkeit ist ausschließlich numerisch kodiert. Der Partitionscode `514` selbst erscheint nicht in der `MDC`-Expansion, weil sein `display` keinen `MDC_`-Bezeichner trägt.

### Display-Konvention des ICU-Moduls

Die ICU-ValueSets führen nicht den symbolischen Namen als `display`, sondern die Designation `common-term`: `151586` steht dort als „Ventilation rate", nicht als `MDC_VENT_RESP_RATE`. Das ist die zu übernehmende Konvention — mit einer Einschränkung: Ein erheblicher Teil der Spirometrie-Codes hat **gar keinen** `common-term` (etwa `MDC_VOL_AWAY_EXP_FORCED_CAPACITY`). Dort bleibt nur der Rückgriff auf die `definition`.

---

## 2. Messgrößen des Moduls Lungenfunktion

Die Spalte „in ICU-VS?" gibt an, ob der Code bereits in einem der drei kuratierten ICU-ValueSets vorkommt (Monitoring und Vitaldaten: 46 Codes, Observation Beatmung: 20, Bilanzen: 1).

| MII-Parameter | MDC-Code | display | definition (gekürzt) | in ICU-VS? | Bewertung |
|---|---|---|---|---|---|
| FEV1 | `152586` | `MDC_VOL_AWAY_EXP_FORCED_1S` | It is a measure of expiratory volume of a subject under forced conditions at 1 s, measured fro… — Kurzname: forced expiratory volume at 1s | nein | **passt** |
| FVC | `188928` | `MDC_VOL_AWAY_EXP_FORCED_CAPACITY` | Forced vital capacity | nein | **passt** |
| FEV1/FVC (Tiffeneau) | `188948` | `MDC_RATIO_AWAY_EXP_FORCED_1S_FVC` | Ratio forced expiratory volume, Ratio after 1 sec/FVC | nein | **passt** |
| VC (allgemein) | `151680` | `MDC_CAPAC_VITAL` | Difference in volume between maximum inspiration and maximum expiration. — Kurzname: Vital capacity | nein | **passt** |
| VC — langsam (SVC) | `188932` | `MDC_VOL_AWAY_SLOW_CAPACITY` | Slow vital capacity | nein | **passt** |
| VC — inspiratorisch (IVC) | `189012` | `MDC_VOL_AWAY_INSP_SLOW_CAPACITY` | Inspiratory vital capacity measured from maximum exhalation | nein | **passt** |
| VC — exspiratorisch (EVC) | `189036` | `MDC_VOL_AWAY_EXP_SLOW_CAPACITY` | Slow expiratory vital capacity measured from maximum in halation | nein | **passt** |
| IC | `189000` | `MDC_VOL_AWAY_INSP_CAPACITY` | Inspiratory capacity measured from tidal volume | nein | **passt** |
| IRV | `189008` | `MDC_VOL_AWAY_INSP_RESERVE` | Inspiratory Reserve Volume | nein | **passt** |
| ERV | `189004` | `MDC_VOL_AWAY_EXP_RESERVE` | Expiratory Reserve Volume | nein | **passt** |
| PEF | `152584` | `MDC_FLOW_AWAY_EXP_FORCED_PEAK` | 1. force starting immediately after achieving maximum lung inflation. 2. Peak Expiratory Flow… — Kurzname: peak expiratory flow | nein | **passt** |
| MEF75 / FEF25 | `188964` | `MDC_FLOW_AWAY_EXP_FORCED_25_FVC` | Forced expiratory flow at 25% of FVC | nein | **passt** — Nomenklatur beachten |
| MEF50 / FEF50 | `188968` | `MDC_FLOW_AWAY_EXP_FORCED_50_FVC` | Forced expiratory flow at 50% of FVC | nein | **passt** |
| MEF25 / FEF75 | `188972` | `MDC_FLOW_AWAY_EXP_FORCED_75_FVC` | Forced expiratory flow at 75% of FVC | nein | **passt** — Nomenklatur beachten |
| MMEF / FEF25-75 | `188960` | `MDC_FLOW_AWAY_EXP_FORCED_25_75_FVC` | Forced expiratory flow mean 25 to 75% of FVC | nein | **passt** |
| R (Atemwegswiderstand) | `151840` | `MDC_RES_AWAY` | Resistance to gas flow within the airway. — Kurzname: Airway Resistance | nein | **passt** |
| R — exspiratorisch | `151844` | `MDC_RES_AWAY_EXP` | Resistance to gas flow in airway during expiration. — Kurzname: Expiratory Airway Resistance | nein | **passt** (Zusatzangebot) |
| R — inspiratorisch | `151848` | `MDC_RES_AWAY_INSP` | Resistance to gas flow within the airway during inspiration. — Kurzname: Inspiratory Airway Resistance | nein | **passt** (Zusatzangebot) |
| R — dynamisch | `152596` | `MDC_RES_AWAY_DYNAMIC` | Resistance to gas flow within the airway, dynamically calculated using a least squares or othe… — Kurzname: Dynamic airway resistance | nein | **passt** (Zusatzangebot) |
| TLC | — | — | — | — | **kein Treffer** |
| RV | — | — | — | — | **kein Treffer** |
| RV/TLC | — | — | — | — | **kein Treffer** |
| FRC | `203370` | `MDC_EVT_ADVIS_CAPAC_FUNC_RESIDUAL_CALC_FAIL` | Unable to calculate Functional Residual Capacity (FRC). | nein | **kein Treffer** — nur dieser Alarm-/Ereigniscode nennt FRC; keine Messgröße |
| DLCO | — | — | — | — | **kein Treffer** |
| DLCOc (Hb-korrigiert) | — | — | — | — | **kein Treffer** |
| KCO | — | — | — | — | **kein Treffer** |
| KCOc | — | — | — | — | **kein Treffer** |
| (diffusionsnah, kein Ersatz) | `152020` | `MDC_COEF_GAS_TRAN` | Coefficient relating partial pressures of gas between alveoli and pulmonary capillaries. — Kurzname: Gas transport coefficient | nein | **kein Ersatz** — kein Gas benannt, keine Hb-Korrektur |
| VA (Alveolarvolumen) | `152436` | `MDC_VENT_VOL_LUNG_ALV` | Volume of gas exchanged per breath in alveoli; difference between tidal volume and dead space. — Kurzname: Alveolar ventilation | nein | **nicht verwendbar** — alveoläre *Ventilation* pro Atemzug, nicht das Alveolarvolumen der Diffusionsmessung |
| sR (spezifisch) | — | — | — | — | **kein Treffer** |
| sR-effektiv | — | — | — | — | **kein Treffer** |
| sG_Total (spez. Conductance) | — | — | — | — | **kein Treffer** |
| Viskosität | — | — | — | — | **kein Treffer** |

**Bilanz der Messgrößen.** Von den 22 angefragten MII-Parametern sind **9 abgedeckt** (FEV1, FVC, FEV1/FVC, VC, IC, IRV/ERV, PEF, MEF-Reihe, R) und **13 nicht** (TLC, RV, RV/TLC, FRC, DLCO, DLCOc, KCO, KCOc, VA, sR, sR-effektiv, sG_Total, Viskosität) — **41 %**. Die Trennlinie verläuft entlang der Untersuchungsmethode, mit einer Ausnahme:

| Methode | Parameter | abgedeckt |
|---|---|---|
| Spirometrie | FEV1, FVC, FEV1/FVC, VC, IC, IRV/ERV, PEF, MEF | **8 von 8** |
| Bodyplethysmographie | R | **1 von 8** (TLC, RV, RV/TLC, FRC, sR, sR-eff, sG_Total fehlen) |
| Diffusionsmessung | — | **0 von 5** |
| Sonstiges | — | **0 von 1** (Viskosität) |

Alles, was ein Spirometer am Mund misst, ist vorhanden. Vom Bodyplethysmographen kennt MDC nur den **totalen** Atemwegswiderstand — die spezifischen Größen und sämtliche statischen Volumina fehlen. Die Diffusionsmessung fehlt vollständig.

**Zu den Fehlanzeigen im Einzelnen.** Diese Aussagen beruhen auf dem vollständigen Index aller 48 287 Konzepte und auf der vollständigen Lektüre der oben genannten Namensfamilien:

- **TLC, RV, RV/TLC:** Kein Konzept im gesamten CodeSystem nennt „total lung capacity" oder „residual volume" in `display`, `definition` oder Designation.
- **FRC:** Die Zeichenkette `CAPAC_FUNC_RESIDUAL` existiert — aber ausschließlich in vier Alarm-/Ereigniscodes der Partition 3 (`MDC_EVT_ADVIS_CAPAC_FUNC_RESIDUAL_CALC_FAIL`, `…_CALC_MISSED`), deren Definition lautet: *„Unable to calculate Functional Residual Capacity (FRC)."* Ein Beatmungsgerät kann also melden, dass es die FRC **nicht** berechnen konnte, aber es gibt keinen Code, um die berechnete FRC selbst zu übermitteln. Die gesamte Familie `MDC_CAPAC*` besteht aus genau einem Konzept: `MDC_CAPAC_VITAL`.
- **sR, sR-effektiv, sG_Total:** Die vollständige Familie `MDC_RES*` umfasst neun Konzepte — vier davon vaskulär (`MDC_RES_VASC*`), vier für den Atemwegswiderstand (`MDC_RES_AWAY`, `_EXP`, `_INSP`, `_DYNAMIC`), eines ein Index. Eine „spezifische" Variante gibt es nicht. Der Wortstamm `CONDUCT` liefert im gesamten CodeSystem **null** Treffer.
- **DLCO, DLCOc, KCO, KCOc:** `DIFFUS` trifft im Gesamtindex nur visuell evozierte Potentiale (`MDC_EVOK_POTL_CRTX_DIFFUSE_*`) und einen CO₂-Diffusionskoeffizienten der Hochfrequenzbeatmung. Entscheidend: MDC kennt **kein Kohlenmonoxid als Atemgas** — die einzigen CO-Konzepte sind Carboxyhämoglobin im Blut (`MDC_CONC_HB_CO_ART`, `_VEN`, `_GEN`, `MDC_PULS_OXIM_HB_CO_ART`). Ohne CO-Atemgaskonzentration ist die Diffusionsmessung terminologisch nicht darstellbar. Der einzige diffusionsnahe Code ist `152020` `MDC_COEF_GAS_TRAN` („Coefficient relating partial pressures of gas between alveoli and pulmonary capillaries", common-term „Gas transport coefficient") — er benennt **kein Gas**, trägt keine Einheit und keine Hb-Korrektur und ist als Ersatz für DLCO oder KCO nicht tragfähig.
- **VA:** `MDC_VENT_VOL_LUNG_ALV` klingt passend, meint aber ausweislich der Definition etwas anderes: *„Volume of gas exchanged per breath in alveoli; difference between tidal volume and dead space"*, common-term „Alveolar ventilation". Das ist die alveoläre Ventilation pro Atemzug, nicht das Alveolarvolumen der Single-Breath-Diffusionsmessung. Die Verwendung wäre eine fachliche Fehlzuordnung.
- **Viskosität:** `VISCOS` liefert null Treffer im gesamten CodeSystem.

**Tracergase ohne Ergebnisgrößen.** Auffällig ist, dass MDC die *Eingangsgrößen* der Volumenbestimmung kennt — Helium (`MDC_CONC_AWAY_HE`, `_HE_ET`, `_HE_EXP`, `_HE_INSP`) und Stickstoff (`MDC_CONC_AWAY_N2`, `_N2_ET`) als Atemgaskonzentrationen —, aber keine der damit bestimmten Zielgrößen (FRC, RV, TLC). Das Nomenklatur-Design ist erkennbar am Messgerät orientiert, nicht am Befund.

**Hinweis zur MEF-Nomenklatur.** MDC benennt `MDC_FLOW_AWAY_EXP_FORCED_25_FVC` als „Forced expiratory flow at 25% of FVC". Die Prozentangabe bezieht sich auf das **bereits ausgeatmete** Volumen, was der deutschen Konvention **MEF75** entspricht (75 % der FVC noch in der Lunge). Beim Mapping ist die Verwechslungsgefahr zwischen MEF25 und MEF75 real und muss im Guide benannt werden.

---

## 3. Zusätzliche Codes ohne Entsprechung im Modul

MDC bietet in der Spirometrie mehr, als das Modul derzeit modelliert. Diese Codes sind bestätigt und stehen für eine spätere Erweiterung bereit; keiner davon kommt in den ICU-ValueSets vor.

| MII-Parameter | MDC-Code | display | definition (gekürzt) | in ICU-VS? | Bewertung |
|---|---|---|---|---|---|
| FEV6 | `152587` | `MDC_VOL_AWAY_EXP_FORCED_6S` | It is a measure of expiratory volume of a subject under forced conditions at 6 s, measured fro… | nein | — |
| FEV1/FEV6 | `188936` | `MDC_RATIO_AWAY_EXP_FORCED_FEV1_FEV6` | Ratio forced expiratory volume, Ratio FEV1/FEV6 | nein | — |
| FEV0,5 | `188940` | `MDC_VOL_AWAY_EXP_FORCED_0_5S` | Forced expiratory volume after .5 sec | nein | — |
| FEV0,75 | `188944` | `MDC_VOL_AWAY_EXP_FORCED_0_75S` | Forced expiratory volume after .75 sec | nein | — |
| FEV2 | `189040` | `MDC_VOL_AWAY_EXP_FORCED_2S` | Forced expiratory volume after 2 sec | nein | — |
| FEV3 | `189044` | `MDC_VOL_AWAY_EXP_FORCED_3S` | Forced expiratory volume after 3 sec | nein | — |
| FEV5 | `189048` | `MDC_VOL_AWAY_EXP_FORCED_5S` | Forced expiratory volume after 5 sec | nein | — |
| FEV2/FVC | `189052` | `MDC_RATIO_AWAY_EXP_FORCED_2S_FVC` | Ratio forced expiratory volume Ratio after 2 sec/FVC | nein | — |
| FEV3/FVC | `189056` | `MDC_RATIO_AWAY_EXP_FORCED_3S_FVC` | Ratio forced expiratory volume Ratio after 3 sec/FVC | nein | — |
| FEV5/FVC | `189060` | `MDC_RATIO_AWAY_EXP_FORCED_5S_FVC` | Ratio forced expiratory volume Ratio after 5 sec/FVC | nein | — |
| FEV6/FVC | `189064` | `MDC_RATIO_AWAY_EXP_FORCED_6S_FVC` | Ratio forced expiratory volume Ratio after 6 sec/FVC | nein | — |
| FEF85 | `189084` | `MDC_FLOW_AWAY_EXP_FORCED_85` | Forced expiratory flow at 85% of FVC | nein | — |
| FEF25-50 | `189072` | `MDC_FLOW_AWAY_EXP_FORCED_25_50` | Forced expiratory flow mean 25 to 50% of FVC | nein | — |
| FEF75-85 | `189076` | `MDC_FLOW_AWAY_EXP_FORCED_75_85` | Forced expiratory flow mean 75 to 85% of FVC | nein | — |
| FEF 0,2-1,2 L | `189080` | `MDC_FLOW_AWAY_EXP_FORCED_0_2L_1_2L` | Forced expiratory flow mean 0.2L to 1.2L | nein | — |
| PIF | `188976` | `MDC_FLOW_AWAY_INSP_FORCED_PEAK` | Peak inspiratory flow | nein | — |
| FIVC | `188980` | `MDC_VOL_AWAY_INSP_FORCED_CAPACITY` | Forced inspiratory vital capacity | nein | — |
| FIV1 | `188984` | `MDC_VOL_AWAY_INSP_FORCED_1S` | Forced inspiratory volume after 1 sec | nein | — |
| FIV1/FIVC | `189108` | `MDC_RATIO_AWAY_INSP_FORCED_1S_FIVC` | Ratio forced inspiratory volume Ratio after 1 sec/FIVC | nein | — |
| FIF25 | `188988` | `MDC_FLOW_AWAY_INSP_FORCED_25` | Forced inspiratory flow at 25% of FIV | nein | — |
| FIF50 | `188992` | `MDC_FLOW_AWAY_INSP_FORCED_50` | Forced inspiratory flow at 50% of FIV | nein | — |
| FIF75 | `188996` | `MDC_FLOW_AWAY_INSP_FORCED_75` | Forced inspiratory flow at 75% of FIV | nein | — |
| FIF25-50 | `189100` | `MDC_FLOW_AWAY_INSP_FORCED_25_50` | Forced inspiratory flow mean 25 to 50% of FIV | nein | — |
| FIF25-75 | `189104` | `MDC_FLOW_AWAY_INSP_FORCED_25_75` | Forced inspiratory flow mean 25 to 75% of FIV | nein | — |
| MVV (12 s) | `189112` | `MDC_VOL_AWAY_CAPACITY_VOLUNTARY_MAX_12S` | Maximal voluntary ventilation, volume exhaled during fixed period of 12 seconds | nein | — |
| MVV (15 s) | `189116` | `MDC_VOL_AWAY_CAPACITY_VOLUNTARY_MAX_15S` | Maximal voluntary ventilation, volume exhaled during fixed period of 15 seconds | nein | — |
| Back-extrapoliertes Volumen | `189020` | `MDC_VOL_AWAY_EXTRAP` | Extrapolated volume | nein | — |
| Forcierte Exspirationszeit (FET) | `189016` | `MDC_VOL_AWAY_EXP_FORCED_TIME` | Forced expiratory time | nein | — |
| BTPS-Faktor | `189024` | `MDC_AWAY_BTPS` | Adjusted temperature-pressure-saturated factor | nein | — |
| Respiratorischer Quotient (RQ) | `151828` | `MDC_QUO_RESP` | Ratio of carbon dioxide expired to oxygen used. — Kurzname: Respiratory quotient | nein | — |
| Elastance statisch | `183324` | `MDC_ELASTANCE_LUNG_STATIC` | Change of airway pressure per unit change of lung volume, measured statically at expiration en… — Kurzname: Lung elastance, static | nein | — |
| Elastance dynamisch | `183328` | `MDC_ELASTANCE_LUNG_DYNAMIC` | Change of airway pressure per unit change of lung volume, dynamically calculated using a least… — Kurzname: Dynamic elastance | nein | — |
| Totraumvolumen | `151872` | `MDC_VOL_AWAY_DEADSP` | Volume of gas in airway per breath not involved in respiratory gas exchange with no ventilator… — Kurzname: Airway dead space | nein | — |
| VD/VT | `151836` | `MDC_RATIO_AWAY_DEADSP_TIDAL` | Ratio of dead space in respiratory tract to tidal volume. — Kurzname: Dead space tidal volume ratio | nein | — |

---

## 4. Sollwerte und Prozent vom Soll

Hier liegt der eigentliche Bedarf des Moduls. Die 48 Profile modellieren je Messgröße zwei Komponenten-Slices — `Observation.component:predicted` und `Observation.component:percentPredicted`, jeweils mit einem `sct`- und einem `loinc`-Coding — und an genau diesen Stellen stehen die meisten der **114 `TODO`-Platzhalter**, weil SNOMED CT Sollwertkonzepte nur für FEV1, FVC und PEF kennt.

### 4.1 Sollwerte: vorhanden, als eigene Partition

ISO/IEEE 11073-10101 löst das Sollwert-Problem strukturell sauberer als SNOMED CT: Statt Sollwerte als Qualifier oder Methode anzuhängen, führt die Nomenklatur die eigene **Partition 514 „Predicted Values"** mit 51 Konzepten. Die Codes tragen das Suffix `_PRED` und liegen in zwei geschlossenen Nummernblöcken — `33707016`–`33707019` und `33743360`–`33743560` (Schrittweite 4). Die Blockgrenzen sind verifiziert: `33707017`, `33707020`, `33743456`, `33743460` und `33743564` liefern `not-found`.

Jeder dieser Codes hat eine direkte Entsprechung unter den Mess-Codes — die Zuordnung ist für **alle 51** eindeutig über den Namen ohne das Suffix `_PRED` herzustellen.

| MDC-Code (Sollwert) | display | definition (gekürzt) | Mess-Code derselben Größe |
|---|---|---|---|
| `33743512` | `MDC_FLOW_AWAY_EXP_FORCED_0_2L_1_2L_PRED` | Forced expiratory flow mean 0.2L to 1.2L | `189080` |
| `33743504` | `MDC_FLOW_AWAY_EXP_FORCED_25_50_PRED` | Forced expiratory flow mean 25 to 50% of FVC | `189072` |
| `33743392` | `MDC_FLOW_AWAY_EXP_FORCED_25_75_FVC_PRED` | Forced expiratory flow mean 25 to 75% of FVC | `188960` |
| `33743396` | `MDC_FLOW_AWAY_EXP_FORCED_25_FVC_PRED` | Forced expiratory flow at 25% of FVC | `188964` |
| `33743400` | `MDC_FLOW_AWAY_EXP_FORCED_50_FVC_PRED` | Forced expiratory flow at 50% of FVC | `188968` |
| `33743508` | `MDC_FLOW_AWAY_EXP_FORCED_75_85_PRED` | Forced expiratory flow mean 75 to 85% of FVC | `189076` |
| `33743404` | `MDC_FLOW_AWAY_EXP_FORCED_75_FVC_PRED` | Forced expiratory flow at 75% of FVC | `188972` |
| `33743516` | `MDC_FLOW_AWAY_EXP_FORCED_85_PRED` | Forced expiratory flow at 85% of FVC | `189084` |
| `33743500` | `MDC_FLOW_AWAY_EXP_FORCED_MAX_PRED` | Maximal expiratory flow | `189068` |
| `33707016` | `MDC_FLOW_AWAY_EXP_FORCED_PEAK_PRED` | Peak Expiratory Flow (PEF): maximum flow measured at the mouth during an expira… | `152584` |
| `33743556` | `MDC_FLOW_AWAY_EXP_PEAK_TIME_PRED` | Time to peak expiratory flow | `189124` |
| `33743560` | `MDC_FLOW_AWAY_EXP_TIDAL_MEAN_PRED` | Mean tidal flow | `189128` |
| `33743532` | `MDC_FLOW_AWAY_INSP_FORCED_25_50_PRED` | Forced inspiratory flow mean 25 to 50% of FIV | `189100` |
| `33743536` | `MDC_FLOW_AWAY_INSP_FORCED_25_75_PRED` | Forced inspiratory flow mean 25 to 75% of FIV | `189104` |
| `33743420` | `MDC_FLOW_AWAY_INSP_FORCED_25_PRED` | Forced inspiratory flow at 25% of FIV | `188988` |
| `33743424` | `MDC_FLOW_AWAY_INSP_FORCED_50_PRED` | Forced inspiratory flow at 50% of FIV | `188992` |
| `33743428` | `MDC_FLOW_AWAY_INSP_FORCED_75_PRED` | Forced inspiratory flow at 75% of FIV | `188996` |
| `33743408` | `MDC_FLOW_AWAY_INSP_FORCED_PEAK_PRED` | Peak inspiratory flow | `188976` |
| `33743384` | `MDC_RATIO_AWAY_EXP_FORCED_0_5S_FVC_PRED` | Ratio forced expiratory volume, Ratio after 0.5 sec/FVC | `188952` |
| `33743388` | `MDC_RATIO_AWAY_EXP_FORCED_0_75S_FVC_PRED` | Ratio forced expiratory volume, Ratio after 0.5 sec/FVC | `188956` |
| `33743380` | `MDC_RATIO_AWAY_EXP_FORCED_1S_FVC_PRED` | Ratio forced expiratory volume, Ratio after 1 sec/FVC | `188948` |
| `33743484` | `MDC_RATIO_AWAY_EXP_FORCED_2S_FVC_PRED` | Ratio forced expiratory volume Ratio after 2 sec/FVC | `189052` |
| `33743488` | `MDC_RATIO_AWAY_EXP_FORCED_3S_FVC_PRED` | Ratio forced expiratory volume Ratio after 3 sec/FVC | `189056` |
| `33743492` | `MDC_RATIO_AWAY_EXP_FORCED_5S_FVC_PRED` | Ratio forced expiratory volume Ratio after 5 sec/FVC | `189060` |
| `33743496` | `MDC_RATIO_AWAY_EXP_FORCED_6S_FVC_PRED` | Ratio forced expiratory volume Ratio after 6 sec/FVC | `189064` |
| `33743368` | `MDC_RATIO_AWAY_EXP_FORCED_FEV1_FEV6_PRED` | Ratio forced expiratory volume, Ratio FEV1/FEV6 | `188936` |
| `33743540` | `MDC_RATIO_AWAY_INSP_FORCED_1S_FIVC_PRED` | Ratio forced inspiratory volume Ratio after 1 sec/FIVC | `189108` |
| `33743528` | `MDC_RATIO_AWAY_TIN_TEX_PRED` | Ratio of Tin/Tex | `189096` |
| `33743544` | `MDC_VOL_AWAY_CAPACITY_VOLUNTARY_MAX_12S_PRED` | Maximal voluntary ventilation, volume exhaled during fixed period of 12 seconds | `189112` |
| `33743548` | `MDC_VOL_AWAY_CAPACITY_VOLUNTARY_MAX_15S_PRED` | Maximal voluntary ventilation, volume exhaled during fixed period of 15 seconds | `189116` |
| `33743552` | `MDC_VOL_AWAY_EXP_25_75_TIME_PRED` | Mean Expiratory Time at 25%‐75% | `189120` |
| `33743372` | `MDC_VOL_AWAY_EXP_FORCED_0_5S_PRED` | Forced expiratory volume after .5 sec | `188940` |
| `33743376` | `MDC_VOL_AWAY_EXP_FORCED_0_75S_PRED` | Forced expiratory volume after .75 sec | `188944` |
| `33707018` | `MDC_VOL_AWAY_EXP_FORCED_1S_PRED` | It is a measure of expiratory volume of a subject under forced conditions at 1… | `152586` |
| `33743472` | `MDC_VOL_AWAY_EXP_FORCED_2S_PRED` | Forced expiratory volume after 2 sec | `189040` |
| `33743476` | `MDC_VOL_AWAY_EXP_FORCED_3S_PRED` | Forced expiratory volume after 3 sec | `189044` |
| `33743480` | `MDC_VOL_AWAY_EXP_FORCED_5S_PRED` | Forced expiratory volume after 5 sec | `189048` |
| `33707019` | `MDC_VOL_AWAY_EXP_FORCED_6S_PRED` | It is a measure of expiratory volume of a subject under forced conditions at 6… | `152587` |
| `33743360` | `MDC_VOL_AWAY_EXP_FORCED_CAPACITY_PRED` | Forced vital capacity | `188928` |
| `33743448` | `MDC_VOL_AWAY_EXP_FORCED_TIME_PRED` | Forced expiratory time | `189016` |
| `33743436` | `MDC_VOL_AWAY_EXP_RESERVE_PRED` | Expiratory Reserve Volume | `189004` |
| `33743468` | `MDC_VOL_AWAY_EXP_SLOW_CAPACITY_PRED` | Slow expiratory vital capacity measured from maximum in halation | `189036` |
| `33743520` | `MDC_VOL_AWAY_EXP_TIDAL_TIME_PRED` | Tidal breathing expiration time (Tex) | `189088` |
| `33743452` | `MDC_VOL_AWAY_EXTRAP_PRED` | Extrapolated volume | `189020` |
| `33743432` | `MDC_VOL_AWAY_INSP_CAPACITY_PRED` | Inspiratory capacity measured from tidal volume | `189000` |
| `33743416` | `MDC_VOL_AWAY_INSP_FORCED_1S_PRED` | Forced inspiratory volume after 1 sec | `188984` |
| `33743412` | `MDC_VOL_AWAY_INSP_FORCED_CAPACITY_PRED` | Forced inspiratory vital capacity | `188980` |
| `33743440` | `MDC_VOL_AWAY_INSP_RESERVE_PRED` | Inspiratory Reserve Volume | `189008` |
| `33743444` | `MDC_VOL_AWAY_INSP_SLOW_CAPACITY_PRED` | Inspiratory vital capacity measured from maximum exhalation | `189012` |
| `33743524` | `MDC_VOL_AWAY_INSP_TIDAL_TIME_PRED` | Tidal breathing inspiration time (Tin) | `189092` |
| `33743364` | `MDC_VOL_AWAY_SLOW_CAPACITY_PRED` | Slow vital capacity | `188932` |

**Abdeckung gegenüber dem Modulbedarf.** Für alle acht spirometrischen Parameter, die MDC überhaupt kennt, existiert auch ein Sollwert-Code. Fett markiert sind die Fälle, in denen **SNOMED CT nichts anbietet** — dort schließt MDC eine echte Lücke:

| MII-Parameter | Mess-Code | Sollwert-Code |
|---|---|---|
| FEV1 | `152586` | `33707018` |
| FVC | `188928` | `33743360` |
| FEV1/FVC | `188948` | **`33743380`** |
| VC (langsam) | `188932` | **`33743364`** (exsp. `33743468`, insp. `33743444`) |
| IC | `189000` | **`33743432`** |
| ERV | `189004` | **`33743436`** |
| IRV | `189008` | **`33743440`** |
| PEF | `152584` | `33707016` |
| MEF75 / FEF25 | `188964` | **`33743396`** |
| MEF50 / FEF50 | `188968` | **`33743400`** |
| MEF25 / FEF75 | `188972` | **`33743404`** |
| MMEF / FEF25-75 | `188960` | **`33743392`** |

Für die bodyplethysmographischen und Diffusions-Größen gibt es erwartungsgemäß keine Sollwerte — dort fehlt bereits die Messgröße. Auch der vorhandene Atemwegswiderstand `MDC_RES_AWAY` hat **keine** `_PRED`-Variante; ebenso wenig `MDC_COMPL_LUNG`. Die Partition 514 ist rein spirometrisch und flussbezogen.

**Wichtige Einschränkung.** Die `definition` eines `_PRED`-Codes ist **wortgleich mit der des zugehörigen Mess-Codes**. `33743360` `MDC_VOL_AWAY_EXP_FORCED_CAPACITY_PRED` ist definiert als „Forced vital capacity" — genau wie `188928`. Die Sollwert-Semantik steckt ausschließlich im symbolischen Namen und in der Partitionszugehörigkeit, nicht im Definitionstext. Für einen Validator oder ein Mapping-Werkzeug, das `definition` auswertet, sind Messwert und Sollwert ununterscheidbar. Das ist ein Mangel der Nomenklatur und gehört ins Ballot.

### 4.2 Prozent vom Soll: kein Treffer

**ISO/IEEE 11073-10101 kennt kein Konzept „Prozent vom Sollwert" für Lungenfunktionsgrößen.** Die Suche nach `_PCT`, `PERCENT`, `_NORM`, `_REF` und `_EXPECT` über den vollständigen Index liefert 73 Treffer, von denen kein einziger ein prozentualer Sollwertbezug einer Lungenfunktionsgröße ist. Sie verteilen sich auf:

- Maßeinheiten der Partition 4 (`MDC_DIM_PERCENT`, `MDC_DIM_VOL_PERCENT`, `MDC_DIM_RELATIVE_PERCENT` …) — Dimensionen, keine Messgrößen,
- EKG-Statistiken (`MDC_ECG_PACED_BEAT_PCT`, `MDC_ECG_BIGEM_PCT` …),
- Implantat-Statistiken der Partition 11 (`MDC_IDC_STAT_*_PERCENT`),
- Beatmungsparameter, bei denen „Prozent" eine Einstellgröße beschreibt (`MDC_VENT_TIME_PD_INSP_PERCENT`, `MDC_VENT_VOL_LEAK_PERCENT`).

Das einzige Konzept im gesamten CodeSystem, das überhaupt „Prozent eines Referenzwertes" ausdrückt, ist `153232` `MDC_VOL_MINUTE_AWAY_IBW_PCTOF_REF` — *„The percentage of the reference minute volume (calculated for the patient based on the patient's ideal body weight)"*. Das ist ein Beatmungsparameter mit Bezug auf das ideale Körpergewicht, kein spirometrischer Sollwertbezug, und als Vorlage nicht verwendbar.

**Konsequenz für das Modul:** MDC kann die `component:predicted`-Slices der acht spirometrischen Parameter füllen, die `component:percentPredicted`-Slices dagegen **für keinen einzigen Parameter**.

---

## 5. Beatmungsgrößen

Beleg für die Abdeckungstiefe im Nachbargebiet. MDC ist hier eine Nomenklatur des Beatmungsgeräts und entsprechend dicht — alle 42 Größen sind per `/lookup` bestätigt, 17 davon werden bereits von den ICU-ValueSets geführt.

| MII-Parameter | MDC-Code | display | definition (gekürzt) | in ICU-VS? | Bewertung |
|---|---|---|---|---|---|
| Tidalvolumen (Beatmung) | `151980` | `MDC_VENT_VOL_TIDAL` | Volume of gas delivered through the patient-connection port during a respiratory cycle. — Kurzname: Ventilation tidal volume | ja | passt |
| Tidalvolumen (Einstellwert) | `16929196` | `MDC_VENT_VOL_TIDAL_SETTING` |  | ja | passt — eigener Setting-Code |
| Tidalvolumen (Atemweg) | `151868` | `MDC_VOL_AWAY_TIDAL` | Volume of gas leaving the patient through the patient connection port during an expiratory pha… — Kurzname: Respiratory tidal volume | nein | passt |
| Tidalvolumen je idealem Körpergewicht | `153208` | `MDC_VOL_AWAY_TIDAL_PER_IBW` | Volume of gas leaving the patient through the patient connection port, normalized by the patie… — Kurzname: Tidal volume per body mass | nein | passt |
| Atemfrequenz (Beatmung) | `151586` | `MDC_VENT_RESP_RATE` | Rate of mechanical ventilation; method not specified. — Kurzname: Ventilation rate | ja | passt |
| Atemfrequenz gesamt | `152490` | `MDC_VENT_RESP_BTSD_PSAZC_RATE` | Total rate of breaths or inspiratory gas flow comprised of unassisted (P), supported (S), assi… — Kurzname: Total respiratory rate; total breath rate | ja | passt |
| Atemfrequenz spontan | `152498` | `MDC_VENT_RESP_BTSD_P_RATE` | Rate of breaths or inspiratory gas flow initiated and terminated by the patient where pressure… — Kurzname: Unassisted spontaneous breath rate; respiration rate | ja | passt |
| PEEP (extrinsisch, angewandt) | `151976` | `MDC_VENT_PRESS_AWAY_END_EXP_POS` | Positive end expiratory pressure applied to the airway. — Kurzname: Applied PEEP | ja | passt |
| PEEP intrinsisch (Auto-PEEP) | `151808` | `MDC_PRESS_AWAY_END_EXP_POS_INTRINSIC` | The component of alveolar pressure in the lungs above extrinsic PEEP due to physiologic causes… — Kurzname: Intrinsic PEEP (aka Auto PEEP) | nein | passt — **fehlt im ICU-VS** |
| PEEP total | `152788` | `MDC_PRESS_AWAY_END_EXP_POS_TOTAL` | The sum of the extrinsic PEEPe and intrinsic PEEPi, representing the total pressure in the lun… — Kurzname: Total PEEP | nein | passt — **fehlt im ICU-VS** |
| Spitzendruck (Ppeak) | `151973` | `MDC_VENT_PRESS_AWAY_MAX` | Maximum inspiratory airway pressure. — Kurzname: Pinsp max | ja | passt |
| Plateaudruck (Pplat) | `152424` | `MDC_VENT_PRESS_RESP_PLAT` | Pressure in airway in plateau phase during mechanical ventilation. — Kurzname: Ventilation plateau pressure | nein | passt — **fehlt im ICU-VS**; `151960` ist deprecated |
| Mitteldruck (Pmean) | `151975` | `MDC_VENT_PRESS_AWAY_MEAN` | Mean inspiratory airway pressure. — Kurzname: Pinsp mean | ja | passt |
| Endinspiratorischer Druck | `152712` | `MDC_PRESS_AWAY_INSP_END` | Pressure of gas in airway measured at the end of the inspiratory phase (this may be coincident… — Kurzname: End inspiratory pressure | nein | passt |
| Driving Pressure (Zero-Flow) | `183316` | `MDC_VENT_PRESS_AWAY_DIFF_INSP_END_EXP_END_AT_ZERO_FLOW` | Measured difference between end-inspiratory pressure and end-expiratory pressure during zero f… | nein | passt — **fehlt im ICU-VS** |
| Druckunterstützung (ΔP über PEEP) | `152720` | `MDC_VENT_PRESS_AWAY_DELTA` | Inspiratory airway pressure relative to PEEP or BAP. — Kurzname: Inspiratory airway pressure relative to PEEP or BAP | ja | passt |
| FiO2 (inspiratorisch, Atemweg) | `152196` | `MDC_CONC_AWAY_O2_INSP` | Partial pressure of oxygen in airway gas measured during inspiration. — Kurzname: Inspiratory oxygen concentration (or partial pressure) in airway gas | nein | passt — **fehlt im ICU-VS** |
| FiO2 (Gaszuleitung) | `153144` | `MDC_CONC_GASDLV_O2_INSP` | Concentration of oxygen in airway gas measured during inspiration in the system or circuit con… — Kurzname: Concentration airway oxygen inspiratory (gas delivery system or circuit) | nein | passt — **fehlt im ICU-VS** |
| O2-Konzentration exspiratorisch | `153132` | `MDC_CONC_AWAY_O2_EXP` | Partial pressure of oxygen in airway gas measured during expiration. — Kurzname: Expired oxygen concentration (or partial pressure) in airway gas | ja | passt |
| Horovitz-Index (PaO2/FiO2) | `150656` | `MDC_O2_OXYGENATION_RATIO` | Oxygenation Ratio, calculated as the ratio of PaO2 (partial pressure of arterial oxygen) divid… — Kurzname: Oxygenation Ratio | ja | passt |
| I:E-Verhältnis | `151832` | `MDC_RATIO_IE` | Ratio of durations of inspiratory and expiratory phases. — Kurzname: Ratio inspiration expiration time | ja | passt |
| E:I-Verhältnis | `153480` | `MDC_RATIO_EI` | Ratio of durations of expiratory and inspiratory phases. | nein | passt |
| Inspiratorischer Zeitanteil (%) | `152640` | `MDC_RATIO_INSP` | Inspiratory time divided by the total respiratory cycle time, expressed as a percent. — Kurzname: Inspiratory Percent | nein | passt |
| Compliance Atemsystem | `151688` | `MDC_COMPL_LUNG` | Change of tidal volume per unit change of airway pressure. — Kurzname: Compliance of respiratory system | nein | passt — **fehlt im ICU-VS** |
| Compliance statisch (Lunge) | `151696` | `MDC_COMPL_LUNG_STATIC` | Change of tidal volume per unit change in esophageal pressure measured statically at expiratio… — Kurzname: Lung compliance, static | nein | passt — **fehlt im ICU-VS** |
| Compliance dynamisch | `152600` | `MDC_COMPL_LUNG_DYNAMIC` | Change of tidal volume per unit change of airway pressure, dynamically calculated using a leas… — Kurzname: Dynamic compliance | nein | passt — **fehlt im ICU-VS** |
| Thorakale Compliance | `151692` | `MDC_COMPL_LUNG_DYN` | Change of tidal volume per unit change of transthoracic pressure. — Kurzname: Thoracic compliance | ja | passt |
| Minutenvolumen (Atemweg, gesamt) | `151880` | `MDC_VOL_MINUTE_AWAY` | Total volume of gas breathed in 1 min. — Kurzname: Minute volume | nein | passt |
| Minutenvolumen inspiratorisch | `152004` | `MDC_VENT_VOL_MINUTE_INSP` | Total volume of gas breathed in during 1 min during mechanical ventilation. — Kurzname: Ventilation inspiratory minute volume | ja | passt |
| Minutenvolumen exspiratorisch | `152000` | `MDC_VENT_VOL_MINUTE_EXP` | Volume of gas per minute exhaled by the patient. — Kurzname: Expired minute volume | nein | passt — **fehlt im ICU-VS** |
| Minutenvolumen (Ventilator) | `152008` | `MDC_VENT_VOL_MINUTE_AWAY` | Total volume of gas delivered by ventilator during mechanical ventilation. — Kurzname: Ventilation minute volume | nein | passt |
| Alveoläres Minutenvolumen | `153240` | `MDC_VENT_VOL_MINUTE_LUNG_ALV` | Volume of gas exchanged per minute in alveoli; difference between tidal volume and dead space. — Kurzname: Alveolar minute ventilation | nein | passt |
| Inspiratorischer Fluss | `151948` | `MDC_VENT_FLOW_INSP` | Inspiratory gas flow in airway during mechanical ventilation. — Kurzname: Ventilation inspiratory flow | ja | passt |
| Exspiratorischer Fluss | `151944` | `MDC_VENT_FLOW_EXP` | Expiratory gas flow during mechanical ventilation. — Kurzname: Ventilation expiratory flow | ja | passt |
| etCO2 | `151708` | `MDC_CONC_AWAY_CO2_ET` | Partial pressure of carbon dioxide in airway gas measured at the end of expiration. — Kurzname: End tidal carbon dioxide concentration (or partial pressure) in airway gas | ja | passt |
| Totraum (Beatmung) | `151984` | `MDC_VENT_VOL_AWAY_DEADSP` | Volume of gas in airway per breath during mechanical ventilation not involved in respiratory e… — Kurzname: Ventilation dead space | nein | passt |
| Relativer Totraum VD/VT | `151988` | `MDC_VENT_VOL_AWAY_DEADSP_REL` | Ratio of dead space to tidal volume during mechanical ventilation. — Kurzname: Ventilation relative dead space | nein | passt |
| Leckagevolumen (%) | `153224` | `MDC_VENT_VOL_LEAK_PERCENT` | Relative volume of gas lost per minute by leakage in ventilation system, tubing, connectors, e… — Kurzname: Leakage volume, percent | nein | passt |
| RSBI (Tobin-Index) | `152860` | `MDC_RESP_RAPID_SHALLOW_BREATHING_INDEX` | The rapid shallow breathing index (RSBI) is calculated by dividing the spontaneous breath rate… — Kurzname: Rapid Shallow Breathing Index | nein | passt |
| Atemarbeit (Patient) | `153276` | `MDC_WORK_OF_BREATHING_PATIENT` | The work expended by the patient over one or more inspiratory and expiratory cycles. Includes… — Kurzname: Work of breathing (intrinsic) | nein | passt |
| Inspiratorische Zeitkonstante | `153312` | `MDC_RESP_TIME_CONSTANT_INSP` | The product of the inspiratory airway resistance and static compliance. — Kurzname: Inspiratory time constant | nein | passt |
| Exspiratorische Zeitkonstante | `153316` | `MDC_RESP_TIME_CONSTANT_EXP` | The time needed for the lungs to passively deflate by a certain amount or a percentage of volu… — Kurzname: Expiratory time constant | nein | passt |

**Beobachtung.** Die Beatmungsabdeckung ist nicht nur breit, sondern differenzierter, als das ICU-Modul sie derzeit nutzt: MDC unterscheidet extrinsischen, intrinsischen und totalen PEEP, statische, dynamische und thorakale Compliance sowie Minutenvolumina nach Atemtyp (unterstützt, assistiert, kontrolliert). Das ICU-ValueSet Beatmung führt 20 Codes; allein im hier geprüften Ausschnitt sind **25 weitere bestätigte, fachlich einschlägige Codes** verfügbar. Besonders auffällig sind drei Lücken, die klinisch schwer wiegen:

- **Plateaudruck** (`152424` `MDC_VENT_PRESS_RESP_PLAT`) fehlt im ICU-ValueSet, obwohl er für die lungenprotektive Beatmung zentral ist. Der ältere Code `151960` `MDC_VENT_PRESS_PLAT` ist deprecated („use MDC_VENT_PRESS_RESP_PLAT").
- **FiO2 inspiratorisch** (`152196` `MDC_CONC_AWAY_O2_INSP`) fehlt; das ValueSet führt nur die exspiratorische Variante `153132`.
- **Compliance des Atemsystems** (`151688`) und die statische Variante (`151696`) fehlen; geführt wird nur die thorakale Compliance `151692`.

Das ist ein eigener Befund, der dem ICU-Modul unabhängig vom Modul Lungenfunktion gemeldet werden sollte.

---

## 6. Bewertung: Taugt MDC als drittes Coding-Slice?

**Antwort: Ja für die Spirometrie, nein für den Rest des Moduls — und der Nutzen liegt woanders, als die Fragestellung vermutet hat.**

**Die Zahlen.** Von 22 angefragten Messgrößen deckt MDC 9 ab (41 %) und 13 nicht. Getrennt nach Methode: Spirometrie 8 von 8, Bodyplethysmographie 1 von 8, Diffusion 0 von 5. Bei den Sollwerten deckt MDC alle 8 spirometrischen Parameter ab und bringt 51 Sollwert-Codes mit; beim Prozent vom Soll 0 von 22.

**Was dafür spricht.** Der eigentliche Gewinn liegt nicht in der Messgrößen-Abdeckung, sondern bei den **Sollwerten**. Dort hat das Modul heute Platzhalter, weil SNOMED CT nur FEV1, FVC und PEF anbietet — MDC liefert 51 bestätigte Codes und deckt alle acht spirometrischen Parameter ab, einschließlich IC, IRV, ERV, FEV1/FVC und der MEF-Reihe, für die SNOMED CT nichts hat. Das ist eine echte, sofort nutzbare Lückenfüllung. Hinzu kommt, dass MDC die Sollwert-Semantik als eigene Partition modelliert — strukturell sauberer als Qualifier-Konstruktionen — und dass das Coding aus Geräteschnittstellen direkt anfällt: Spirometer und Bodyplethysmographen sprechen MDC, SNOMED CT und LOINC muss jemand nachträglich zuordnen. Ein drittes Slice bewahrt diese Primärkodierung, statt sie beim Import zu verwerfen. Die Konvention ist im MII-Kerndatensatz etabliert: Das ICU-Modul nutzt `urn:iso:std:iso:11073:10101` in 85 Dateien mit drei kuratierten ValueSets, es entsteht kein Präzedenzfall.

**Was dagegen spricht.** Die Abdeckung ist stark unsymmetrisch: Ein Slice, das bei FEV1 greift und bei TLC, RV, FRC, DLCO, KCO und den spezifischen Widerstandsgrößen leer bleibt, macht das Profil für Implementierer unübersichtlicher, ohne dort zu helfen, wo die Not am größten ist. Gerade die bodyplethysmographischen Volumina, für die SNOMED CT nichts hat, bekommen von MDC auch nichts. Die `_PRED`-Codes tragen ihre Sollwert-Bedeutung ausschließlich im Namenssuffix und in der Partitionsnummer, nicht in der Definition — eine Falle für automatisierte Verarbeitung. Viele Spirometrie-Codes haben keinen `common-term`, sodass die im ICU-Modul etablierte Display-Konvention dort nicht durchzuhalten ist. Und die MEF-Nomenklatur ist eine Verwechslungsquelle.

**Empfehlung.** Das MDC-Slice aufnehmen, aber **`0..1` und optional**, nicht verpflichtend, und die Aufnahme nicht mit der Messgrößen-Abdeckung begründen, sondern mit den Sollwerten. Praktisch: die acht spirometrischen Profile und das R-Profil mit `sct`, `loinc` und `iso11073` ausstatten, in deren `component:predicted` die `_PRED`-Codes eintragen und damit einen Teil der 114 `TODO`-Platzhalter schließen; die bodyplethysmographischen und Diffusions-Profile beim bisherigen Zwei-Slice-Modell belassen und dort die Fehlanzeige dokumentieren, statt ein dauerhaft leeres Slice mitzuführen. Zwei kuratierte ValueSets nach ICU-Vorbild anlegen — eines für die Messgrößen, eines für die Sollwerte —, mit `common-term` als Display, ersatzweise der `definition`.

**Der wichtigere Befund.** Der Prozent-vom-Soll-Bedarf, den die Fragestellung als eigentlichen Engpass benannt hat, wird durch MDC **nicht** gelöst — in keinem einzigen Fall. Das ist keine Lücke, die sich durch die Wahl eines weiteren Codesystems schließen lässt: Weder SNOMED CT noch LOINC noch MDC kennen „Prozent vom Soll" für die bodyplethysmographischen Größen. Das spricht dafür, das Problem zu verlagern — Prozent vom Soll ist rechnerisch vollständig durch Messwert und Sollwert bestimmt. Wenn das Profil den Sollwert als eigene Komponente führt (und MDC liefert dafür jetzt die Codes), braucht die Prozentangabe keinen eigenen Konzept-Code mehr, sondern nur eine Konvention, wie der abgeleitete Wert dargestellt wird. Das wäre der wirksamere Hebel als ein Terminologie-Neuantrag.

---

## 7. Vorschlag für das Ballot-Ticket

> **Titel:** Modul Lungenfunktion — ISO/IEEE 11073-10101 als optionales drittes Coding-Slice aufnehmen und Sollwert-Platzhalter schließen
>
> **Betroffen:** `de.medizininformatikinitiative.kerndatensatz.lungenfunktion`, 48 Profile, derzeit 114 `TODO`-Platzhalter.
>
> **Sachverhalt.** Die Profile binden `Observation.code.coding` an die Slices `sct` und `loinc`. Für die Komponenten `predicted` und `percentPredicted` fehlen überwiegend Codes, weil SNOMED CT Sollwertkonzepte nur für FEV1, FVC und PEF führt und für die bodyplethysmographischen Größen gar nicht.
>
> **Befund.** Eine vollständige Auswertung von ISO/IEEE 11073-10101 (Version 2024-12-05, 48 287 Konzepte, Stichtag 2026-09-25) ergibt:
> 1. Die Nomenklatur führt eine eigene Partition 514 „Predicted Values" mit 51 bestätigten Sollwert-Codes. Alle acht spirometrischen Parameter des Moduls sind damit auf der Sollwert-Ebene abgedeckt — dort, wo SNOMED CT Lücken hat (FEV1/FVC, VC, IC, IRV, ERV, MEF-Reihe).
> 2. Auf der Messgrößen-Ebene deckt MDC 9 der 22 Parameter ab. Vorhanden sind alle spirometrischen Größen sowie der totale Atemwegswiderstand (`151840` `MDC_RES_AWAY`, Akronym RAW). Nicht vorhanden sind TLC, RV, RV/TLC, FRC, sR, sR-effektiv, sG_Total, DLCO, DLCOc, KCO, KCOc, VA und Viskosität. FRC erscheint ausschließlich in vier Alarmcodes („Unable to calculate Functional Residual Capacity"), nicht als Messgröße. Kohlenmonoxid existiert nur als Carboxyhämoglobin im Blut, nicht als Atemgas — die Diffusionsmessung ist terminologisch nicht darstellbar.
> 3. Ein Konzept „Prozent vom Sollwert" existiert für keine Lungenfunktionsgröße.
>
> **Antrag.**
> a) Ein optionales Slice `iso11073` (`0..1`, `urn:iso:std:iso:11073:10101`) in `Observation.code.coding` der acht spirometrischen Profile und des R-Profils aufnehmen, analog zur bestehenden Praxis des ICU-Moduls.
> b) Die `TODO`-Platzhalter in `component:predicted` dieser Profile mit den Codes der Partition 514 belegen (Zuordnungstabelle in Abschnitt 4.1).
> c) Zwei kuratierte ValueSets nach ICU-Vorbild anlegen (Messgrößen, Sollwerte), mit `common-term` als Display, ersatzweise der `definition`.
> d) Für die bodyplethysmographischen und Diffusions-Profile beim Zwei-Slice-Modell bleiben und die Fehlanzeige im Guide dokumentieren, statt ein dauerhaft leeres Slice mitzuführen.
> e) **Zur Entscheidung durch das TC:** Ob `component:percentPredicted` weiterhin einen eigenen Konzept-Code verlangen soll. Da kein Codesystem solche Konzepte für die bodyplethysmographischen Größen führt und der Wert rechnerisch vollständig durch Messwert und Sollwert bestimmt ist, wird angeregt, ihn als abgeleitete Größe zu modellieren statt einen Terminologie-Neuantrag zu stellen.
>
> **Hinweise für die Umsetzung.**
> - Die `definition` der `_PRED`-Codes ist wortgleich mit der des jeweiligen Mess-Codes; die Sollwert-Semantik steckt nur in Partitionsnummer und Namenssuffix. Das ist im Guide zu dokumentieren, damit Mapping-Werkzeuge Mess- und Sollwert nicht verwechseln.
> - MEF-Nomenklatur: `MDC_FLOW_AWAY_EXP_FORCED_25_FVC` („at 25% of FVC") entspricht der deutschen Konvention **MEF75**, nicht MEF25.
> - Der vorhandene Atemwegswiderstand `MDC_RES_AWAY` hat **keine** `_PRED`-Variante; für R bleibt die Sollwert-Lücke bestehen.
>
> **Nebenbefund für das ICU-Modul.** Das ValueSet `mii-vs-icu-code-observation-beatmung-iso11073` führt 20 Codes. Im Rahmen dieser Recherche wurden 25 weitere fachlich einschlägige, bestätigte Beatmungs-Codes gefunden — darunter der **Plateaudruck** (`152424`), die **inspiratorische FiO2** (`152196`) und die **Compliance des Atemsystems** (`151688`), die klinisch schwer wiegen. Eine Erweiterung sollte dort separat geprüft werden (Abschnitt 5).

---

## Anhang: Reproduzierbarkeit

```bash
# Vollständiges CodeSystem in einer Expansion (48 287 Konzepte)
curl -s -m 300 -X POST http://localhost:3000/search \
  -H 'Content-Type: application/json' \
  -d '{"system":"urn:iso:std:iso:11073:10101","filter":"MDC","count":50000}'

# Partition 514 lokal isolieren: alle Codes mit (code >> 16) == 514

# Einzelbestätigung mit definition und Designationen
curl -s -m 30 -X POST http://localhost:3000/lookup \
  -H 'Content-Type: application/json' \
  -d '{"system":"urn:iso:std:iso:11073:10101","code":"33743360"}'
```

**Hinweise für Nachnutzer.**

- `/search` filtert die Expansion clientseitig auf Treffer im `display`; `expansion.total` kann deshalb größer sein als die Zahl der gelieferten Konzepte, und Konzepte, die nur über eine Designation passen, fehlen. `offset` wird ignoriert. Für vollständige Aussagen ist die Einmal-Expansion des gesamten CodeSystems der verlässliche Weg.
- Negativaussagen niemals auf eine Stichwortsuche stützen. Die Nomenklatur kürzt Fachbegriffe unvorhersehbar ab (`MDC_RES_AWAY` für Resistance, `MDC_VENT_PRESS_RESP_PLAT` für Plateau). Belastbar ist nur die vollständige Lektüre der betreffenden Namensfamilie im lokalen Index.
- Beim Auflösen nicht existierender Codes antwortet der Proxy mit HTTP 404; ein Client, der HTTP-Fehler als transient behandelt und mit Backoff wiederholt, wird dadurch erheblich ausgebremst.
