<<<<<<< HEAD
# IEEE 11073 für Lungenfunktion und Beatmung — Code-Erhebung

Belastbare Vorlage für ein Ballotierungs-Ticket am MII-Modul **Lungenfunktion**.
Antwort auf die offene Frage aus [vorschlag-lufu-codes.md](vorschlag-lufu-codes.md),
Abschnitt „Prüfen: IEEE 11073 als dritte Codierung".
=======
# IEEE 11073 (MDC) für Lungenfunktion und Beatmung — Terminologie-Erhebung

Vorlage für ein Ballotierungs-Ticket. Beantwortet die offene Frage aus
[vorschlag-lufu-codes.md](vorschlag-lufu-codes.md) („Prüfen: IEEE 11073 als dritte
Codierung"): Trägt die MDC-Nomenklatur die spirometrischen und bodyplethysmographischen
Größen des Moduls Lungenfunktion — insbesondere die **Sollwerte**, für die SNOMED nichts
hergibt?

**Kurzantwort:** Für die Spirometrie ja, inklusive eigener Sollwert-Codes. Für die
Bodyplethysmographie und die Diffusionsmessung nein. Prozent-vom-Soll kennt MDC an
keiner Stelle.
>>>>>>> worktree-agent-ace86ab6f72f48c87

---

## 1. Methode

| | |
|---|---|
<<<<<<< HEAD
| Terminologieserver | SU-TermServ, `https://ontoserver.mii-termserv.de/fhir` (über lokalen mTLS-Proxy) |
| CodeSystem | `urn:iso:std:iso:11073:10101` (ISO/IEEE 11073-10101, MDC-Nomenklatur) |
| Geladene Version | **`2024-12-05`** (vom Server gemeldet, in jeder `$lookup`-Antwort) |
| Stichtag der Erhebung | 2026-09-25 |
| Umfang des CodeSystems | 48.287 Konzepte (Expansion `total` für Filter `MDC`) |

**Suchstrategie.** Die `display`-Werte sind symbolische MDC-Namen
(`MDC_VOL_AWAY_EXP_FORCED_1S`), keine Klartextphrasen. Eine Volltextsuche nach
„vital capacity" oder „diffusing capacity" liefert deshalb nichts Verwertbares.

Zwei Eigenheiten des Servers, die die Erhebung geprägt haben:

1. **Nur Präfix-Filter liefern vollständige Ergebnisse.** Ein Filter, der den Anfang
   des symbolischen Namens trifft (`MDC_VOL`), liefert die komplette Trefferliste
   (534 von 534). Ein Substring-Filter (`TIDAL`, `ALVEOL`) liefert eine abgeschnittene
   Liste (29 von 63 bzw. 0 von 28).
2. **Das Feld `expansion.total` ist unzuverlässig.** Für `MDC_DL` und `MDC_DENS`
   meldet der Server identisch 830 Treffer und liefert null Konzepte — offenbar ein
   Fuzzy-Artefakt. **Aussagen über Nicht-Vorhandensein in diesem Dokument stützen
   sich deshalb ausschließlich auf vollständige Präfix-Erhebungen, nie auf `total`.**

Erhoben wurde ein lokaler Index über alle Präfixe `MDC_B`, `MDC_C`, `MDC_F`, `MDC_G`,
`MDC_H`, `MDC_L`, `MDC_M`, `MDC_N`, `MDC_O`, `MDC_P`, `MDC_Q`, `MDC_R`, `MDC_S`,
`MDC_T`, `MDC_U`, `MDC_V`, `MDC_W` — jeweils vollständig zurückgeliefert (< 1400
Treffer pro Präfix). Das deckt den gesamten **Messgrößen-Raum** der Nomenklatur ab.
Nicht erhoben wurden `MDC_A…`, `MDC_D…`, `MDC_E…`, `MDC_I…` (Attribut-, Geräte-,
Event- und Identifikations-Partitionen, jeweils > 1500 Treffer und für Messgrößen
irrelevant). Der Index umfasst **6.977 eindeutige Konzepte**.

Jeder in den Tabellen genannte Code wurde einzeln per `$lookup` bestätigt; die
`definition`-Property ist wörtlich (gekürzt) zitiert. 139 Einzelabfragen, keine
Ausfälle — der Server war während der Erhebung durchgehend erreichbar.

**Display-Konvention des ICU-Moduls.** Die ICU-ValueSets führen nicht den
symbolischen Namen als `display`, sondern die Designation `common-term`:
`151586` steht dort als „Ventilation rate", der Server liefert als `display`
`MDC_VENT_RESP_RATE` und als `common-term` „Ventilation rate". Das ist die zu
übernehmende Konvention — mit einer Einschränkung, siehe Abschnitt 5.
=======
| Terminologieserver | SU-TermServ (`ontoserver.mii-termserv.de/fhir`) über lokalen mTLS-Proxy `http://localhost:3000` |
| CodeSystem | `urn:iso:std:iso:11073:10101` (ISO/IEEE 11073-10101, MDC) |
| CodeSystem-Version | **`2024-12-05`** (vom Server in jeder Antwort mitgeliefert) |
| Operationen | `POST /search` (≙ `ValueSet/$expand` mit `filter`), `POST /lookup` (≙ `CodeSystem/$lookup`), `POST /hierarchy` |
| Stichtag | 2026-09-25 |
| Abgleichspaket | `de.medizininformatikinitiative.kerndatensatz.complete#2027.0.0-ballot.19` |

### Suchstrategie

Das `display` eines MDC-Konzepts ist der **symbolische Bezeichner** (`MDC_VENT_RESP_RATE`),
keine Klartextphrase. Klartextsuchen laufen daher ins Leere; die fachliche Bedeutung
steckt in der `definition`-Property und in den Designations `common-term` und
`systematic-name`. Beispiel:

```
POST /lookup {"system":"urn:iso:std:iso:11073:10101","code":"151586"}
→ display     MDC_VENT_RESP_RATE
  definition  "Rate of mechanical ventilation; method not specified."
  common-term "Ventilation rate"
  acronym     "RR"
```

Der `filter` des Servers verhält sich als **Präfix auf dem display**. Erhoben wurde
deshalb in zwei Stufen:

1. **Vollenumeration der fachlich einschlägigen Namensräume** (Präfixsuche, `count=1000`;
   `total` = Servermeldung, `returned` = tatsächlich gelieferte Konzepte):

   | Präfix | total | returned | | Präfix | total | returned |
   |---|---|---|---|---|---|---|
   | `MDC_VOL` | 534 | 534 | | `MDC_VENT` | 804 | 772 |
   | `MDC_FLOW` | 272 | 272 | | `MDC_PRESS` | 371 | 371 |
   | `MDC_RATIO` | 96 | 96 | | `MDC_CONC` | 1059 | 1000 |
   | `MDC_RES` | 78 | 78 | | `MDC_AWAY` | 132 | 124 |
   | `MDC_CAPAC` | 4 | 4 | | `MDC_RESP` | 42 | 42 |
   | `MDC_COMPL` | 20 | 20 | | `MDC_COEF` | 8 | 8 |
   | `MDC_ELASTANCE` | 8 | 8 | | `MDC_WORK` | 20 | 20 |
   | `MDC_GAS` | 42 | 42 | | `MDC_O2` / `MDC_CO2` | 12 / 12 | 12 / 12 |

2. **Vollständigkeits-Kontrollsweep** über alle 26 Präfixe `MDC_A` … `MDC_Z`
   (`count=1000`), gefiltert auf die Wortstämme
   `COND|GAW|SPEC|VISC|DLCO|KCO|TLC|RESID|FUNCTIONAL|ALVEOL|DIFFUS|TRANSF|MONOX|PLETH|THORAC|CAPAC|LUNG`.
   Ergebnis: 80 Treffer, davon kein einziger lungenfunktionsdiagnostischer außer den
   bereits unter (1) gefundenen. Die Treffer zu „conductance" sind durchweg
   Dialysat-Leitfähigkeit (`MDC_HDIALY_DIALYSATE_COND`, `MDC_HDIALY_BICARB_COND`).

Jeder in den Tabellen genannte Code ist einzeln per `/lookup` bestätigt; `display` und
`definition` sind wörtlich übernommen (Definitionen gekürzt, Kürzung mit „…" markiert).

### Einschränkungen (ehrlich gekennzeichnet)

- Die Präfixsuchen `MDC_VENT` (772/804), `MDC_CONC` (1000/1059) und `MDC_AWAY` (124/132)
  wurden vom Server **unvollständig** ausgeliefert; im Kontrollsweep waren `MDC_A`,
  `MDC_C`, `MDC_D`, `MDC_E`, `MDC_I`, `MDC_V` bei 1000 Konzepten gekappt. Die
  gekappten Namensräume sind Geräte-, Attribut- und EEG-Namensräume
  (`MDC_DEV_*`, `MDC_ATTR_*`, `MDC_EVOK_*`), nicht Messgrößen-Namensräume.
- Der Server meldet bei einigen Einwortsuchen ein `total` > 0 bei leerem `contains`
  (z. B. `CAPACITY` total 10 / 0 geliefert, `CONDUCTANCE` total 10 / 0 geliefert). Die
  Negativaussagen dieses Dokuments stützen sich deshalb **nicht** auf Einwortsuchen,
  sondern auf die oben gelisteten Vollenumerationen plus den Kontrollsweep.
- Nicht abgefragt: Designations in anderen Sprachen, `parent`/`child`-Beziehungen
  (`/hierarchy` liefert für MDC durchgängig leere `parents`/`children`).
>>>>>>> worktree-agent-ace86ab6f72f48c87

---

## 2. Messgrößen Lungenfunktion

<<<<<<< HEAD
Spalte „ICU-VS" = Code ist bereits in einem der kuratierten ICU-ValueSets
(`…Monitoring_und_Vitaldaten_ISO11073`, `…Observation_Beatmung_ISO11073`,
`…Bilanzen_ISO11073`) enthalten.

| MII-Parameter | MDC-Code | display | definition (gekürzt) | ICU-VS | Bewertung |
|---|---|---|---|---|---|
| **FEV (FEV1)** | `152586` | `MDC_VOL_AWAY_EXP_FORCED_1S` | „measure of expiratory volume of a subject under forced conditions at 1 s, measured from time zero" — Akronym **FEV1** | – | **passt** |
| FEV0,5 / 0,75 / 2s / 3s / 5s | `188940` / `188944` / `189040` / `189044` / `189048` | `MDC_VOL_AWAY_EXP_FORCED_0_5S` … `_5S` | „Forced expiratory volume after .5 sec" usw. | – | passt (Zusatzangebot) |
| FEV6 | `152587` | `MDC_VOL_AWAY_EXP_FORCED_6S` | „…under forced conditions at 6 s" | – | passt (Zusatzangebot) |
| **FVC** | `188928` | `MDC_VOL_AWAY_EXP_FORCED_CAPACITY` | „Forced vital capacity" | – | **passt** |
| **FEV1/FVC** | `188948` | `MDC_RATIO_AWAY_EXP_FORCED_1S_FVC` | „Ratio forced expiratory volume, Ratio after 1 sec/FVC" | – | **passt** |
| FEV1/FEV6 | `188936` | `MDC_RATIO_AWAY_EXP_FORCED_FEV1_FEV6` | „Ratio forced expiratory volume, Ratio FEV1/FEV6" | – | passt (Zusatzangebot) |
| **VC** | `188932` | `MDC_VOL_AWAY_SLOW_CAPACITY` | „Slow vital capacity" | – | **passt** |
| VC (Monitoring-Variante) | `151680` | `MDC_CAPAC_VITAL` | „Difference in volume between maximum inspiration and maximum expiration" — Akronym **VC**, common-term „Vital capacity" | – | passt, aber Dublette zu `188932` |
| EVC / IVC | `189036` / `189012` | `MDC_VOL_AWAY_EXP_SLOW_CAPACITY` / `…_INSP_SLOW_CAPACITY` | „Slow expiratory vital capacity measured from maximum inhalation" / „Inspiratory vital capacity measured from maximum exhalation" | – | passt |
| **TLC** | — | — | — | – | **kein Treffer** |
| **RV** | — | — | — | – | **kein Treffer** |
| **RV/TLC** | — | — | — | – | **kein Treffer** |
| **FRC** | — | — | — | – | **kein Treffer** |
| **IC** | `189000` | `MDC_VOL_AWAY_INSP_CAPACITY` | „Inspiratory capacity measured from tidal volume" | – | **passt** |
| **IRV / ERV** | `189008` / `189004` | `MDC_VOL_AWAY_INSP_RESERVE` / `MDC_VOL_AWAY_EXP_RESERVE` | „Inspiratory Reserve Volume" / „Expiratory Reserve Volume" | – | **passt** |
| **PEF** | `152584` | `MDC_FLOW_AWAY_EXP_FORCED_PEAK` | „maximum flow measured at the mouth during an expiration delivered with maximal force starting immediately after achieving maximum lung inflation" — Akronym **PEF** | – | **passt** |
| **MEF / FEF 25 / 50 / 75** | `188964` / `188968` / `188972` | `MDC_FLOW_AWAY_EXP_FORCED_25_FVC` / `_50_FVC` / `_75_FVC` | „Forced expiratory flow at 25 % (50 %, 75 %) of FVC" | – | **passt** |
| FEF 25–75 (MMEF) | `188960` | `MDC_FLOW_AWAY_EXP_FORCED_25_75_FVC` | „Forced expiratory flow mean 25 to 75 % of FVC" | – | passt |
| FEF 25–50 / 75–85 / 85 / 0,2–1,2 L | `189072` / `189076` / `189084` / `189080` | `MDC_FLOW_AWAY_EXP_FORCED_*` | „Forced expiratory flow mean 25 to 50 % of FVC" usw. | – | passt (Zusatzangebot) |
| **DLCO** | — | — | — | – | **kein Treffer** |
| **DLCOc** (Hb-korrigiert) | — | — | — | – | **kein Treffer** |
| **KCO** | — | — | — | – | **kein Treffer** |
| **KCOc** | — | — | — | – | **kein Treffer** |
| **VA (Alveolarvolumen)** | (`152436`) | `MDC_VENT_VOL_LUNG_ALV` | „Volume of gas exchanged per breath in alveoli; difference between tidal volume and dead space" — Akronym **AV**, common-term „Alveolar ventilation" | – | **kein Treffer** — das ist die alveoläre Ventilation pro Atemzug am Beatmungsgerät, nicht das VA der Diffusionsmessung. Nicht verwenden. |
| **R (Atemwegswiderstand)** | `151840` | `MDC_RES_AWAY` | „Resistance to gas flow within the airway" — Akronym **RAW**, common-term „Airway Resistance" | – | **passt** |
| R exspiratorisch / inspiratorisch / dynamisch | `151844` / `151848` / `152596` | `MDC_RES_AWAY_EXP` / `_INSP` / `_DYNAMIC` | „Resistance to gas flow in airway during expiration" usw. | – | passt (Zusatzangebot) |
| **sR (spezifisch)** | — | — | — | – | **kein Treffer** |
| **sR-effektiv** | — | — | — | – | **kein Treffer** |
| **sG_Total (spez. Conductance)** | — | — | — | – | **kein Treffer** |
| **Viskosität** | — | — | — | – | **kein Treffer** |

**Belege für die „kein Treffer"-Zeilen.** Der vollständig erhobene Präfixraum enthält
über 6.977 Konzepte **keinen einzigen** Namen mit den Bestandteilen `TOTAL_LUNG`,
`RESIDUAL`, `FRC`, `TLC`, `DLCO`, `KCO`, `MONOX`, `CONDUCT`, `VISC` oder `SPECIF`.
`MDC_CAPAC_*` umfasst genau vier Konzepte (`MDC_CAPAC_VITAL` plus dessen
`_MAX`/`_MIN`/`_MEAN`) — eine Partition für Lungenkapazitäten existiert nicht.
Der einzige Treffer auf `DIFFUS` ist `183356 MDC_COEF_CO2_DIFFUSION_COEF_HF`
(CO₂-Diffusionskoeffizient bei Hochfrequenzbeatmung), fachlich unbrauchbar für DLCO.
Helium und Stickstoff kommen nur als Atemgas-Konzentrationen vor
(`153044 MDC_CONC_AWAY_HE_ET`, `152448 MDC_CONC_AWAY_N2_ET` …), nicht als
Auswaschverfahren zur FRC-Bestimmung.

Zusätzlich in 11073 vorhanden und für das Modul interessant, obwohl in der
Parameterliste nicht genannt:

| Größe | MDC-Code | display |
|---|---|---|
| MVV (12 s / 15 s) | `189112` / `189116` | `MDC_VOL_AWAY_CAPACITY_VOLUNTARY_MAX_12S` / `_15S` |
| FIVC / FIV1 / FIV1:FIVC | `188980` / `188984` / `189108` | `MDC_VOL_AWAY_INSP_FORCED_CAPACITY` / `_1S` / `MDC_RATIO_AWAY_INSP_FORCED_1S_FIVC` |
| PIF / FIF 25 / 50 / 75 | `188976` / `188988` / `188992` / `188996` | `MDC_FLOW_AWAY_INSP_FORCED_PEAK` / `_25` / `_50` / `_75` |
| FET (forcierte Exspirationszeit) | `189016` | `MDC_VOL_AWAY_EXP_FORCED_TIME` |
| Rückextrapoliertes Volumen | `189020` | `MDC_VOL_AWAY_EXTRAP` |
| Zeit bis PEF | `189124` | `MDC_FLOW_AWAY_EXP_PEAK_TIME` |
| Tin / Tex / Tin:Tex | `189092` / `189088` / `189096` | `MDC_VOL_AWAY_INSP_TIDAL_TIME` / `_EXP_TIDAL_TIME` / `MDC_RATIO_AWAY_TIN_TEX` |
| Compliance (statisch / dynamisch) | `151696` / `152600` | `MDC_COMPL_LUNG_STATIC` / `MDC_COMPL_LUNG_DYNAMIC` |
| Elastance (statisch / dynamisch) | `183324` / `183328` | `MDC_ELASTANCE_LUNG_STATIC` / `_DYNAMIC` |
=======
Spalte „ICU-VS" = Code kommt in einem der vier ISO-11073-ValueSets des ICU-Moduls vor
(`…Monitoring_und_Vitaldaten…` 46 Codes, `…Observation_Beatmung…` 20,
`…Observation_Bilanzen…` 1, `…Observation_extrakorporale_Verfahren…` 0 — Stand
`complete#2027.0.0-ballot.19`). Keiner der 67 dort geführten Codes ist ein
lungenfunktionsdiagnostischer.

| MII-Parameter | MDC-Code | display | definition (gekürzt) | ICU-VS | Bewertung |
|---|---|---|---|---|---|
| FEV1 | `152586` | `MDC_VOL_AWAY_EXP_FORCED_1S` | „It is a measure of expiratory volume of a subject under forced conditions at 1 s, measured from time zero…" | – | exakt |
| FVC | `188928` | `MDC_VOL_AWAY_EXP_FORCED_CAPACITY` | „Forced vital capacity" | – | exakt |
| FEV1/FVC | `188948` | `MDC_RATIO_AWAY_EXP_FORCED_1S_FVC` | „Ratio forced expiratory volume, Ratio after 1 sec/FVC" | – | exakt |
| VC (inspiratorisch/exspiratorisch unspezifiziert) | `151680` | `MDC_CAPAC_VITAL` | „Difference in volume between maximum inspiration and maximum expiration." | – | exakt; common-term „Vital capacity" |
| VC — langsam (SVC) | `188932` | `MDC_VOL_AWAY_SLOW_CAPACITY` | „Slow vital capacity" | – | exakt; zusätzlich `189036` exspiratorisch, `189012` inspiratorisch |
| TLC | — | — | — | – | **kein Treffer** |
| RV | — | — | — | – | **kein Treffer** |
| RV/TLC | — | — | — | – | **kein Treffer** |
| FRC | — | — | — | – | **kein Treffer** |
| IC | `189000` | `MDC_VOL_AWAY_INSP_CAPACITY` | „Inspiratory capacity measured from tidal volume" | – | exakt |
| ERV | `189004` | `MDC_VOL_AWAY_EXP_RESERVE` | „Expiratory Reserve Volume" | – | exakt |
| IRV | `189008` | `MDC_VOL_AWAY_INSP_RESERVE` | „Inspiratory Reserve Volume" | – | exakt |
| PEF | `152584` | `MDC_FLOW_AWAY_EXP_FORCED_PEAK` | „Peak Expiratory Flow (PEF): maximum flow measured at the mouth during an expiration delivered with maximal force starting immediately after achieving maximum lung inflation." | – | exakt; acronym-Designation vorhanden |
| MEF25 / FEF25 | `188964` | `MDC_FLOW_AWAY_EXP_FORCED_25_FVC` | „Forced expiratory flow at 25% of FVC" | – | exakt |
| MEF50 / FEF50 | `188968` | `MDC_FLOW_AWAY_EXP_FORCED_50_FVC` | „Forced expiratory flow at 50% of FVC" | – | exakt |
| MEF75 / FEF75 | `188972` | `MDC_FLOW_AWAY_EXP_FORCED_75_FVC` | „Forced expiratory flow at 75% of FVC" | – | exakt |
| MMEF / FEF25–75 | `188960` | `MDC_FLOW_AWAY_EXP_FORCED_25_75_FVC` | „Forced expiratory flow mean 25 to 75% of FVC" | – | exakt |
| DLCO | — | — | — | – | **kein Treffer** |
| DLCOc (Hb-korrigiert) | — | — | — | – | **kein Treffer** |
| KCO | — | — | — | – | **kein Treffer** |
| KCOc | — | — | — | – | **kein Treffer** |
| VA (Alveolarvolumen, Diffusion) | (`152436`) | `MDC_VENT_VOL_LUNG_ALV` | „Volume of gas exchanged per breath in alveoli; difference between tidal volume and dead space." | – | **nicht verwendbar** — das ist die alveoläre Ventilation pro Atemzug, nicht das Alveolarvolumen der Diffusionsmessung |
| R (Atemwegswiderstand) | `151840` | `MDC_RES_AWAY` | „Resistance to gas flow within the airway." | – | exakt; zusätzlich `151844` exspiratorisch, `151848` inspiratorisch, `152596` dynamisch |
| sR (spezifisch) | — | — | — | – | **kein Treffer** |
| sR effektiv | — | — | — | – | **kein Treffer** |
| sG_Total (spezifische Conductance) | — | — | — | – | **kein Treffer** (einzige „COND"-Treffer im gesamten CodeSystem sind Dialysat-Leitfähigkeiten) |
| Viskosität | — | — | — | – | **kein Treffer** |

**Bonusfunde, die im Modul derzeit nicht vorkommen** (alle per `/lookup` bestätigt) —
falls das Modul sie perspektivisch aufnimmt, sind sie in MDC bereits da:

| Größe | Code | display |
|---|---|---|
| FEV6 | `152587` | `MDC_VOL_AWAY_EXP_FORCED_6S` |
| FEV1/FEV6 | `188936` | `MDC_RATIO_AWAY_EXP_FORCED_FEV1_FEV6` |
| FEV0,5 / 0,75 / 2 / 3 / 5 s | `188940` / `188944` / `189040` / `189044` / `189048` | `MDC_VOL_AWAY_EXP_FORCED_*S` |
| FIVC | `188980` | `MDC_VOL_AWAY_INSP_FORCED_CAPACITY` |
| FIV1 | `188984` | `MDC_VOL_AWAY_INSP_FORCED_1S` |
| PIF | `188976` | `MDC_FLOW_AWAY_INSP_FORCED_PEAK` |
| MVV (12 s / 15 s) | `189112` / `189116` | `MDC_VOL_AWAY_CAPACITY_VOLUNTARY_MAX_12S` / `…_15S` |
| Forcierte Exspirationszeit (FET) | `189016` | `MDC_VOL_AWAY_EXP_FORCED_TIME` |
| Rückextrapoliertes Volumen (Vextrap) | `189020` | `MDC_VOL_AWAY_EXTRAP` |
| BTPS-Faktor | `189024` | `MDC_AWAY_BTPS` |

Der einzige diffusionsnahe Code im gesamten CodeSystem ist `152020`
`MDC_COEF_GAS_TRAN`, „Coefficient relating partial pressures of gas between alveoli and
pulmonary capillaries.", common-term „Gas transport coefficient". Das ist **kein** DLCO
und kein KCO — kein Gas benannt, keine Einheit, keine Hb-Korrektur. Als Ersatz nicht
tragfähig.

**Bilanz Messgrößen:** 9 der 22 angefragten Parameter sind exakt abgedeckt
(FEV1, FVC, FEV1/FVC, VC, IC, IRV/ERV, PEF, MEF, R), 13 nicht
(TLC, RV, RV/TLC, FRC, DLCO, DLCOc, KCO, KCOc, VA, sR, sR-eff, sG_Total, Viskosität) —
**41 %**. Die Trennlinie ist sauber: Alles, was ein Spirometer am Mund misst, ist da;
alles, was Bodyplethysmograph oder Diffusionsmessung liefert, fehlt vollständig.
>>>>>>> worktree-agent-ace86ab6f72f48c87

---

## 3. Sollwerte und Prozent vom Soll

<<<<<<< HEAD
Hier liegt der eigentliche Bedarf des Moduls — und hier hat 11073 tatsächlich etwas,
das SNOMED nicht hat.

### 3.1 Sollwerte („predicted") — **vorhanden, 51 Codes**

11073 führt eine eigene, geschlossene Serie von **51 `…_PRED`-Konzepten**
(Codebereich `33707016`–`33743560`). Jeder spirometrische Basiscode hat genau einen
`_PRED`-Zwilling mit identischem Definitionstext; der Sollwert-Charakter steckt
ausschließlich im Namenssuffix.

| MII-Parameter | Messwert | Sollwert (`_PRED`) | Bewertung |
|---|---|---|---|
| FEV1 | `152586` | **`33707018`** `MDC_VOL_AWAY_EXP_FORCED_1S_PRED` | passt |
| FEV0,5 / 0,75 / 2s / 3s / 5s / 6s | `188940` / `188944` / `189040` / `189044` / `189048` / `152587` | `33743372` / `33743376` / `33743472` / `33743476` / `33743480` / `33707019` | passt |
| FVC | `188928` | **`33743360`** `MDC_VOL_AWAY_EXP_FORCED_CAPACITY_PRED` | passt |
| FEV1/FVC | `188948` | **`33743380`** `MDC_RATIO_AWAY_EXP_FORCED_1S_FVC_PRED` | passt |
| FEV1/FEV6 | `188936` | `33743368` | passt |
| VC (slow) | `188932` | **`33743364`** `MDC_VOL_AWAY_SLOW_CAPACITY_PRED` | passt |
| EVC / IVC | `189036` / `189012` | `33743468` / `33743444` | passt |
| IC | `189000` | **`33743432`** `MDC_VOL_AWAY_INSP_CAPACITY_PRED` | passt |
| IRV / ERV | `189008` / `189004` | **`33743440`** / **`33743436`** | passt |
| PEF | `152584` | **`33707016`** `MDC_FLOW_AWAY_EXP_FORCED_PEAK_PRED` | passt |
| MEF/FEF 25 / 50 / 75 | `188964` / `188968` / `188972` | **`33743396`** / **`33743400`** / **`33743404`** | passt |
| FEF 25–75 | `188960` | `33743392` | passt |
| FEF 25–50 / 75–85 / 85 / 0,2–1,2 L | `189072` / `189076` / `189084` / `189080` | `33743504` / `33743508` / `33743516` / `33743512` | passt |
| MVV 12 s / 15 s | `189112` / `189116` | `33743544` / `33743548` | passt |
| FIVC / FIV1 / FIV1:FIVC | `188980` / `188984` / `189108` | `33743412` / `33743416` / `33743540` | passt |
| PIF / FIF 25 / 50 / 75 | `188976` / `188988` / `188992` / `188996` | `33743408` / `33743420` / `33743424` / `33743428` | passt |
| FIF 25–50 / 25–75 | `189100` / `189104` | `33743532` / `33743536` | passt |
| FET / FET 25–75 / V_extrap | `189016` / `189120` / `189020` | `33743448` / `33743552` / `33743452` | passt |
| Tin / Tex / Tin:Tex / t(PEF) | `189092` / `189088` / `189096` / `189124` | `33743524` / `33743520` / `33743528` / `33743556` | passt |
| **TLC, RV, RV/TLC, FRC, DLCO, DLCOc, KCO, KCOc, VA** | kein Basiscode | **kein Sollwert** | **kein Treffer** |
| **R, sR, sR-eff, sG_Total** | `151840` (nur R) | **kein Sollwert** | **kein Treffer** — `MDC_RES_AWAY` und `MDC_COMPL_LUNG` haben keine `_PRED`-Variante |

Zwei `_PRED`-Codes existieren **ohne** zugehörigen Messwert-Code, eine Inkonsistenz
der Nomenklatur selbst:

| Code | display | definition |
|---|---|---|
| `33743500` | `MDC_FLOW_AWAY_EXP_FORCED_MAX_PRED` | „Maximal expiratory flow" |
| `33743560` | `MDC_FLOW_AWAY_EXP_TIDAL_MEAN_PRED` | „Mean tidal flow" |

### 3.2 Prozent vom Soll — **kein Treffer**

**11073 kennt kein einziges „%-vom-Soll"-Konzept für Lungenfunktionsgrößen.** Die
vollständige Erhebung findet auf `PCT` genau zwei Konzepte, beide aus der Beatmung:

| Code | display | definition |
|---|---|---|
| `153232` | `MDC_VOL_MINUTE_AWAY_IBW_PCTOF_REF` | „The percentage of the reference minute volume (calculated for the patient based on the patient's ideal body weight) set by the clinician. Example: 80 % (of reference)" |
| `16930448` | `MDC_VOL_MINUTE_AWAY_IBW_PCTOF_REF_SETTING` | Einstellwert-Variante desselben |

Das ist ein am Beatmungsgerät eingestellter Zielwert, kein Messergebnis — für die
Lungenfunktion unbrauchbar. Die 35 Konzepte mit `PERCENT` im Namen sind sämtlich
Beatmungsparameter (`MDC_VENT_TIME_PD_INSP_PERCENT`, `MDC_VENT_VOL_LEAK_PERCENT`, …).
Kein Konzept enthält `EXPECT`, `RESIDUAL` oder ein Äquivalent.

**Fazit für 3.2:** Für die Komponente `percentPredicted` liefert 11073 **nichts**.
Dort bleibt LOINC die einzige Quelle — und LOINC deckt sie laut
[vorschlag-lufu-codes.md](vorschlag-lufu-codes.md) für 15 von 17 Parametern bereits ab.

---

## 4. Beatmung — Beleg für die Abdeckungstiefe

Die Nomenklatur enthält **772 Konzepte mit Präfix `MDC_VENT`**, davon 307
Basiskonzepte (ohne die automatischen `_MAX`/`_MIN`/`_MEAN`/`_SETTING`-Varianten).
Das ICU-Modul schöpft daraus 20 Codes ab.

| Beatmungsgröße | MDC-Code | display | definition (gekürzt) | ICU-VS |
|---|---|---|---|---|
| Tidalvolumen (Gerät) | `151980` | `MDC_VENT_VOL_TIDAL` | „Volume of gas delivered through the patient-connection port during a respiratory cycle" — Akronym VT | **ja** |
| Tidalvolumen (Einstellwert) | `16929196` | `MDC_VENT_VOL_TIDAL_SETTING` | (keine Definition hinterlegt) | **ja** |
| Tidalvolumen exsp. / insp. | `152664` / `152660` | `MDC_VOL_AWAY_TIDAL_EXP` / `_INSP` | „Volume of expired (inspired) gas for each breath, breath type(s) not specified" | – |
| Atemfrequenz (Beatmung) | `151586` | `MDC_VENT_RESP_RATE` | „Rate of mechanical ventilation; method not specified" — Akronym RR | **ja** |
| Atemfrequenz spontan | `152498` | `MDC_VENT_RESP_BTSD_P_RATE` | „Rate of breaths … initiated and terminated by the patient … without support or assistance" | **ja** |
| Atemfrequenz total | `152490` | `MDC_VENT_RESP_BTSD_PSAZC_RATE` | „Total rate of breaths … comprised of unassisted (P), supported (S), assisted (A), synchronized assisted (Z) and controlled (C) breath types" | **ja** |
| PEEP (appliziert) | `151976` | `MDC_VENT_PRESS_AWAY_END_EXP_POS` | „Positive end expiratory pressure applied to the airway" — Akronym PEEP | **ja** |
| PEEP extrinsisch / total | `151804` / `152788` | `MDC_PRESS_AWAY_END_EXP_POS` / `…_TOTAL` | „…" / „The sum of the extrinsic PEEPe and intrinsic PEEPi, representing the total pressure in the lungs at the end of expiration" | – |
| Spitzendruck | `151973` | `MDC_VENT_PRESS_AWAY_MAX` | „Maximum inspiratory airway pressure" — Akronym Pinsp max | **ja** |
| Mitteldruck | `151975` | `MDC_VENT_PRESS_AWAY_MEAN` | „Mean inspiratory airway pressure" | **ja** |
| Plateaudruck | `152712` | `MDC_PRESS_AWAY_INSP_END` | „Pressure of gas in airway measured at the end of the inspiratory phase (this may be coincident with the peak inspiratory pressure or the plateau pressure …)" — Akronym EIP | – |
| ΔP über PEEP (Driving Pressure) | `152720` | `MDC_VENT_PRESS_AWAY_DELTA` | „Inspiratory airway pressure relative to PEEP or BAP" | **ja** |
| FiO₂ | `152196` | `MDC_CONC_AWAY_O2_INSP` | „Partial pressure of oxygen in airway gas measured during inspiration" | – |
| exspiratorische O₂-Konzentration | `153132` | `MDC_CONC_AWAY_O2_EXP` | „Partial pressure of oxygen in airway gas measured during expiration" | **ja** |
| etCO₂ | `151708` | `MDC_CONC_AWAY_CO2_ET` | „Partial pressure of carbon dioxide in airway gas measured at the end of expiration" | **ja** |
| I:E-Verhältnis | `151832` | `MDC_RATIO_IE` | „Ratio of durations of inspiratory and expiratory phases" | **ja** |
| Compliance | `151688` | `MDC_COMPL_LUNG` | „Change of tidal volume per unit change of airway pressure" | – |
| Compliance dynamisch | `151692` | `MDC_COMPL_LUNG_DYN` | „Change of tidal volume per unit change of transthoracic pressure" | **ja** |
| Compliance statisch | `151696` | `MDC_COMPL_LUNG_STATIC` | „Change of tidal volume per unit change in esophageal pressure measured statically at expiration end" | – |
| Minutenvolumen | `151996` | `MDC_VENT_VOL_MINUTE` | „Volume of gas per minute passing in to or out of the patient's airway …" — Akronym MV | – |
| Minutenvolumen insp. / exsp. | `152004` / `152000` | `MDC_VENT_VOL_MINUTE_INSP` / `_EXP` | „Total volume of gas breathed in during 1 min during mechanical ventilation" | `152004` **ja** |
| Inspirations-/Exspirationsfluss | `151948` / `151944` | `MDC_VENT_FLOW_INSP` / `_EXP` | „Inspiratory (expiratory) gas flow … during mechanical ventilation" | **ja** |
| Totraum / Totraumquotient | `151984` / `151988` | `MDC_VENT_VOL_AWAY_DEADSP` / `_REL` | — | – |
| Oxygenierungsindex | `150656` | `MDC_O2_OXYGENATION_RATIO` | „Oxygenation Ratio, calculated as the ratio of PaO2 … divided by FiO2" | **ja** |

**Lesart:** Die Beatmung ist der Kernbereich der Nomenklatur. Jede geforderte
Beatmungsgröße hat einen Code, meist mehrere Varianten (appliziert / eingestellt /
extrinsisch / total). Die Lungenfunktion ist demgegenüber ein Anbau — vorhanden,
aber deutlich dünner und ohne die Tiefe der Beatmungs-Partition.

---

## 5. Bewertung

**Deckungsgrad.** Von den 22 in der Parameterliste des Moduls genannten Messgrößen
hat 11073

- **9 vollständig** — FEV, FVC, FEV1/FVC, VC, IC, IRV/ERV, PEF, MEF, R
- **0 teilweise**
- **13 gar nicht** — TLC, RV, RV/TLC, FRC, DLCO, DLCOc, KCO, KCOc, VA, sR,
  sR-effektiv, sG_Total, Viskosität

Das ist eine klare Trennlinie: **11073 deckt die Spirometrie ab und die
Bodyplethysmographie sowie die Diffusionsmessung überhaupt nicht.** Alles, was ein
Spirometer am Mundstück misst, hat einen Code; alles, was eine Kabine oder ein
CO-Gasanalysator misst, hat keinen. Das ist konsistent mit der Herkunft der
Nomenklatur — sie beschreibt Point-of-Care-Geräte, und der spirometrische Block
(`188928`–`189124` plus `152584`/`152586`/`152587`) ist erkennbar aus dem
PHD-Umfeld (Personal Health Devices, Asthma-Monitoring) zugewachsen.

**Der Sollwert-Befund ist der wichtige.** Für die 9 abgedeckten Parameter liefert
11073 **8 Sollwert-Codes** (alle außer R), und zwar als systematische, vollständige
`_PRED`-Serie über **51 Codes**. Genau an dieser Stelle hat SNOMED nur vier Konzepte
(`310520004` FEV1, `310521000` FVC, `313192007` PEF, `445389005` % VC) und das Modul
trägt Platzhalter. **Für die Sollwerte der spirometrischen Größen ist 11073 die
einzige Nicht-LOINC-Quelle, die überhaupt etwas hergibt.**

**Aber**: Für die Parameter, an denen das Modul die schmerzhaftesten Lücken hat —
die bodyplethysmographischen Größen TLC, RV, FRC, sR, sG_Total und die
Diffusionsgrößen DLCO/KCO/VA — hat 11073 **weder Messwert noch Sollwert**. Das
Argument „11073 schließt die Sollwertlücke, die SNOMED offen lässt" gilt also nur
für die Spirometrie, nicht für die Bodyplethysmographie. Die Lücke, die im
ursprünglichen Befund als die eigentliche bezeichnet wurde, schließt 11073 **nicht**.

**Prozent vom Soll: keine Hilfe.** Null Treffer. Dort bleibt LOINC allein zuständig.

**Zwei praktische Hürden**, die im Ticket stehen müssen:

1. **Keine Display-Designationen im Spirometrie-Block.** Von den 46 geprüften Codes
   des Blocks `188900`–`189200` und den 48 geprüften `_PRED`-Codes hat **kein
   einziger** eine `common-term`- oder `systematic-name`-Designation. Die
   ICU-Konvention (`display` = `common-term`) ist auf diese Codes **nicht anwendbar**.
   Nur die älteren Codes tragen sie: `152586` → „forced expiratory volume at 1s",
   `152584` → „peak expiratory flow", `151840` → „Airway Resistance",
   `151680` → „Vital capacity". Für alles andere müsste als `display` der
   Definitionstext oder der symbolische Name verwendet werden — das ist eine
   Festlegung, die das Modul explizit treffen muss, sonst produziert jede Instanz
   eine Display-Warnung im Validator.

2. **Messwert und Sollwert sind nur über das Namenssuffix unterscheidbar.** Die
   `definition` von `33707018` (`…_1S_PRED`) ist **wörtlich identisch** mit der von
   `152586` (`…_1S`). Ein Konsument, der nur Code und Definition auswertet, kann
   Soll und Ist nicht trennen. Das Modul muss die Unterscheidung weiterhin über die
   `Observation.component`-Struktur tragen; 11073 trägt sie nicht semantisch.

**Empfehlung.** Ja, 11073 als drittes Coding-Slice aufnehmen — aber mit klar
begrenztem Anspruch: als **gerätenahe Zusatzcodierung für die Spirometrie**, nicht
als Lückenfüller für die Bodyplethysmographie. Der Nutzen ist konkret und messbar
(8 Sollwerte, die SNOMED nicht hat, plus rund 25 spirometrische Messwert-Codes),
und er passt zur Herkunft der Daten: Spirometer sprechen 11073, Kabinen und
CO-Analysatoren im MII-Kontext nicht.
=======
MDC führt für Sollwerte eine **eigene Partition**:

```
POST /lookup {"system":"urn:iso:std:iso:11073:10101","code":"514"}
→ display     "Predicted Values"
  definition  "Partition 514 is populated with codes for predicted values"
```

Die Sollwert-Codes tragen das Suffix `_PRED` und liegen in zwei geschlossenen
Nummernblöcken: `33707016`–`33707019` und `33743360`–`33743560` (Schrittweite 4). Die
Blockgrenzen sind durch `/lookup` verifiziert: `33707017`, `33707020`, `33743456`,
`33743460` und `33743564` liefern `not-found`. **Insgesamt 51 Sollwert-Codes**, alle
spirometrisch/flussbezogen.

| MII-Parameter | Sollwert (`_PRED`) | display | % vom Soll | ICU-VS | Bewertung |
|---|---|---|---|---|---|
| FEV1 | `33707018` | `MDC_VOL_AWAY_EXP_FORCED_1S_PRED` | **kein Treffer** | – | Sollwert da |
| FVC | `33743360` | `MDC_VOL_AWAY_EXP_FORCED_CAPACITY_PRED` | **kein Treffer** | – | Sollwert da |
| FEV1/FVC | `33743380` | `MDC_RATIO_AWAY_EXP_FORCED_1S_FVC_PRED` | **kein Treffer** | – | Sollwert da — **SNOMED hat hier nichts** |
| VC (SVC) | `33743364` | `MDC_VOL_AWAY_SLOW_CAPACITY_PRED` | **kein Treffer** | – | Sollwert da; exsp. `33743468`, insp. `33743444` |
| TLC | — | — | — | – | kein Treffer (Messgröße fehlt bereits) |
| RV / RV/TLC / FRC | — | — | — | – | kein Treffer |
| IC | `33743432` | `MDC_VOL_AWAY_INSP_CAPACITY_PRED` | **kein Treffer** | – | Sollwert da — **SNOMED hat hier nichts** |
| ERV | `33743436` | `MDC_VOL_AWAY_EXP_RESERVE_PRED` | **kein Treffer** | – | Sollwert da — **SNOMED hat hier nichts** |
| IRV | `33743440` | `MDC_VOL_AWAY_INSP_RESERVE_PRED` | **kein Treffer** | – | Sollwert da — **SNOMED hat hier nichts** |
| PEF | `33707016` | `MDC_FLOW_AWAY_EXP_FORCED_PEAK_PRED` | **kein Treffer** | – | Sollwert da |
| MEF25 / 50 / 75 | `33743396` / `33743400` / `33743404` | `MDC_FLOW_AWAY_EXP_FORCED_25_FVC_PRED` u. a. | **kein Treffer** | – | Sollwert da — **SNOMED hat hier nichts** |
| MMEF (FEF25–75) | `33743392` | `MDC_FLOW_AWAY_EXP_FORCED_25_75_FVC_PRED` | **kein Treffer** | – | Sollwert da |
| DLCO / DLCOc / KCO / KCOc / VA | — | — | — | – | kein Treffer |
| R / sR / sR-eff / sG_Total | — | — | — | – | kein Treffer |
| Viskosität | — | — | — | – | kein Treffer |

Weitere Sollwerte derselben Partition, die im Modul heute keine Entsprechung haben:
FEV0,5/0,75/2/3/5/6 s (`33743372`, `33743376`, `33743472`, `33743476`, `33743480`,
`33707019`), FEV1/FEV6 (`33743368`), FIVC (`33743412`), FIV1 (`33743416`), FIV1/FIVC
(`33743540`), PIF (`33743408`), FIF25/50/75 (`33743420`/`33743424`/`33743428`),
MVV 12 s/15 s (`33743544`/`33743548`), FET (`33743448`), Vextrap (`33743452`),
Tin/Tex (`33743528`), Zeit bis PEF (`33743556`).

### Zwei Befunde, die ins Ticket gehören

**(a) Prozent vom Soll existiert in MDC überhaupt nicht.** Die Suche nach dem Wortstamm
`PERCENT` liefert 26 Treffer im gesamten CodeSystem — sämtlich Beatmungs-, Schrittmacher-
und Batteriekonzepte (`MDC_VENT_VOL_LEAK_PERCENT`,
`MDC_IDC_STAT_BRADY_RA_PERCENT_PACED`, `MDC_IDC_MSMT_BATTERY_REMAINING_PERCENTAGE` …),
kein einziges lungenfunktionsdiagnostisches. Auch `EXPECTED` liefert keine Messgröße.
Für die `percentPredicted`-Komponenten des Moduls ist MDC **keine** Lösung.

**(b) Die `_PRED`-Codes tragen die Definition der Messgröße, nicht die des Sollwerts.**
`33707018` `MDC_VOL_AWAY_EXP_FORCED_1S_PRED` hat wortgleich dieselbe `definition` wie
`152586` `MDC_VOL_AWAY_EXP_FORCED_1S`; ebenso `33743360` vs. `188928`
(„Forced vital capacity"). Die Sollwert-Semantik steckt ausschließlich im symbolischen
Namen und in der Partitionszugehörigkeit (514). Für einen Validator, der `definition`
auswertet, sind Messwert und Sollwert ununterscheidbar. Das ist ein Mangel der
Nomenklatur und sollte im Ballot benannt werden.

---

## 4. Beatmung

Beleg für die Abdeckungstiefe. Alle Codes per `/lookup` bestätigt; „ICU-VS" = enthalten
in `MII_VS_ICU_Code_Observation_Beatmung_ISO11073` (20 Codes).

| MII-Parameter | MDC-Code | display | definition (gekürzt) | ICU-VS | Bewertung |
|---|---|---|---|---|---|
| Tidalvolumen | `151980` | `MDC_VENT_VOL_TIDAL` | „Volume of gas delivered through the patient-connection port during a respiratory cycle." | **ja** | exakt |
| Tidalvolumen (Einstellwert) | `16929196` | `MDC_VENT_VOL_TIDAL_SETTING` | (keine definition) | **ja** | Settings sind eigene Codes — saubere Trennung Ist/Soll-Einstellung |
| Atemfrequenz (Beatmung) | `151586` | `MDC_VENT_RESP_RATE` | „Rate of mechanical ventilation; method not specified." | **ja** | exakt |
| Atemfrequenz gesamt | `152490` | `MDC_VENT_RESP_BTSD_PSAZC_RATE` | „Total rate of breaths or inspiratory gas flow comprised of unassisted (P), supported (S), assisted (A), synchronized assisted (Z) and controlled (C) breath types." | **ja** | exakt, mit Atemtypen-Differenzierung |
| Atemfrequenz spontan | `152498` | `MDC_VENT_RESP_BTSD_P_RATE` | „Rate of breaths or inspiratory gas flow initiated and terminated by the patient…" | **ja** | exakt |
| PEEP | `151976` | `MDC_VENT_PRESS_AWAY_END_EXP_POS` | „Positive end expiratory pressure applied to the airway." | **ja** | exakt; zusätzlich intrinsisch `151808`, total `152788` |
| Spitzendruck (Ppeak) | `151973` | `MDC_VENT_PRESS_AWAY_MAX` | „Maximum inspiratory airway pressure." | **ja** | exakt |
| Plateaudruck (Pplat) | `152424` | `MDC_VENT_PRESS_RESP_PLAT` | „Pressure in airway in plateau phase during mechanical ventilation." | **nein** | exakt — **fehlt im ICU-ValueSet** (`151960` `MDC_VENT_PRESS_PLAT` ist deprecated: „use MDC_VENT_PRESS_RESP_PLAT") |
| Mitteldruck (Pmean) | `151975` | `MDC_VENT_PRESS_AWAY_MEAN` | „Mean inspiratory airway pressure." | **ja** | exakt |
| Druckunterstützung (ΔP über PEEP) | `152720` | `MDC_VENT_PRESS_AWAY_DELTA` | „Inspiratory airway pressure relative to PEEP or BAP." | **ja** | exakt |
| FiO2 (inspiratorische O2-Konzentration) | `152196` | `MDC_CONC_AWAY_O2_INSP` | „Partial pressure of oxygen in airway gas measured during inspiration." | **nein** | exakt — **fehlt im ICU-ValueSet**, das nur die exspiratorische Variante `153132` führt |
| FiO2 (Gaszuleitung) | `153144` | `MDC_CONC_GASDLV_O2_INSP` | „Concentration of oxygen in airway gas measured during inspiration in the system or circuit conducting gas to the patient." | **nein** | Nachfolger von `151920` `MDC_VENT_CONC_AWAY_O2_INSP` („Replaced by MDC_CONC_GASDLV_O2_INSP (22072)") |
| I:E-Verhältnis | `151832` | `MDC_RATIO_IE` | „Ratio of durations of inspiratory and expiratory phases." | **ja** | exakt; E:I `153480`, Tin/Tex `189096` |
| Compliance (Atemsystem) | `151688` | `MDC_COMPL_LUNG` | „Change of tidal volume per unit change of airway pressure." | **nein** | exakt, common-term „Compliance of respiratory system" |
| Compliance dynamisch | `151692` | `MDC_COMPL_LUNG_DYN` | „Change of tidal volume per unit change of transthoracic pressure." | **ja** | ICU nutzt diesen Code mit display „Thoracic compliance" |
| Compliance statisch | `151696` | `MDC_COMPL_LUNG_STATIC` | „Change of tidal volume per unit change in esophageal pressure measured statically at expiration end." | **nein** | exakt |
| Minutenvolumen | `151996` | `MDC_VENT_VOL_MINUTE` | „Volume of gas per minute passing in to or out of the patient's airway during inspiratory or expiratory phases, respectively." | **nein** | exakt |
| Minutenvolumen inspiratorisch | `152004` | `MDC_VENT_VOL_MINUTE_INSP` | „Total volume of gas breathed in during 1 min during mechanical ventilation." | **ja** | exakt |
| Minutenvolumen (Gerät gesamt) | `152008` | `MDC_VENT_VOL_MINUTE_AWAY` | „Total volume of gas delivered by ventilator during mechanical ventilation." | **nein** | exakt |
| Inspiratorischer Fluss | `151948` | `MDC_VENT_FLOW_INSP` | „Inspiratory gas flow in airway during mechanical ventilation." | **ja** | exakt |
| Exspiratorischer Fluss | `151944` | `MDC_VENT_FLOW_EXP` | „Expiratory gas flow during mechanical ventilation." | **ja** | exakt |
| etCO2 | `151708` | `MDC_CONC_AWAY_CO2_ET` | „Partial pressure of carbon dioxide in airway gas measured at the end of expiration." | **ja** | exakt |
| Horowitz-Index (PaO2/FiO2) | `150656` | `MDC_O2_OXYGENATION_RATIO` | „Oxygenation Ratio, calculated as the ratio of PaO2 … divided by FiO2…" | **ja** | exakt |
| Atemwegswiderstand | `151840` | `MDC_RES_AWAY` | „Resistance to gas flow within the airway." | **nein** | exakt |
| Alveoläre Ventilation | `152436` | `MDC_VENT_VOL_LUNG_ALV` | „Volume of gas exchanged per breath in alveoli; difference between tidal volume and dead space." | **nein** | exakt |
| Totraumvolumen | `151872` | `MDC_VOL_AWAY_DEADSP` | (Namensraum `MDC_VOL_AWAY`) | **nein** | zusätzlich Totraumanteil `151836` `MDC_RATIO_AWAY_DEADSP_TIDAL` |
| Atemarbeit | `153276` | `MDC_WORK_OF_BREATHING_PATIENT` | (Namensraum `MDC_WORK`) | **nein** | plus `…_VENTILATOR`, `…_IMPOSED`, `…_ELASTIC`, `…_RESISTIVE` |
| Zeitkonstante exspiratorisch | `153316` | `MDC_RESP_TIME_CONSTANT_EXP` | „The time needed for the lungs to passively deflate by a certain amount or a percentage of volume…" | **nein** | exakt |

**Bilanz Beatmung: 8 von 8 angefragten Größen exakt abgedeckt (100 %)**, und zwar
durchgehend mit Definition, `systematic-name` und `common-term`. Allein der Namensraum
`MDC_VENT` enthält 804 Konzepte, `MDC_PRESS` 371, `MDC_FLOW` 272, `MDC_VOL` 534.

### Nebenbefunde zum ICU-Modul (verifiziert, nicht Gegenstand dieses Tickets)

1. **Plateaudruck fehlt** im `MII_VS_ICU_Code_Observation_Beatmung_ISO11073`. Es gibt
   ihn in MDC (`152424`). Ohne ihn ist ein ARDS-Beatmungsdatensatz unvollständig.
2. **FiO2 fehlt**, obwohl das ValueSet die exspiratorische O2-Konzentration `153132`
   führt. Für den ebenfalls enthaltenen Horowitz-Index `150656` ist FiO2 der Nenner.
3. **Die `display`-Werte in den ICU-ValueSets sind nicht die `display`-Werte des
   CodeSystems.** Beispiele: `151586` steht dort als „Ventilation rate", das CodeSystem
   liefert `MDC_VENT_RESP_RATE` (Klartext nur als `common-term`-Designation). `151973`
   steht dort als „Pressure.max Respiratory system airway --on ventilator" — das ist
   ein LOINC-Langname, weder `display` noch `common-term` des MDC-Konzepts. Drei
   Einträge (`150324`, `150372`, `150392`) haben in
   `MII_VS_ICU_Code_Monitoring_und_Vitaldaten_ISO11073` überhaupt kein `display`.
   Die `include`-Blöcke tragen außerdem **kein `version`**, obwohl MDC versioniert ist
   (`2024-12-05`).

---

## 5. Bewertung: Reicht 11073 als drittes Coding-Slice?

**Für die Beatmung ja, für die Lungenfunktion nur zur Hälfte — und für die
Sollwert-Platzhalter ist es trotzdem die beste verfügbare Antwort.**

Zahlen:

| | abgedeckt | Anteil |
|---|---|---|
| Messgrößen Lungenfunktion (22 angefragt) | 9 | 41 % |
| … davon Spirometrie/Fluss-Volumen (11) | 9 | **82 %** |
| … davon Bodyplethysmographie + Diffusion (11) | 0 | **0 %** |
| Sollwerte zu den 9 abgedeckten Messgrößen | 9 | **100 %** |
| Prozent-vom-Soll (22 angefragt) | 0 | **0 %** |
| Beatmungsgrößen (8 angefragt) | 8 | **100 %** |
| MDC-Sollwert-Codes gesamt (Partition 514) | 51 | — |
| ISO-11073-Nutzung im `complete`-Paket | 91 Dateien (80 davon ICU), 4 ValueSets | — |
| ISO-11073-Nutzung im Modul Lungenfunktion | **0 Dateien** | — |

Daraus folgt dreierlei.

**Erstens: Für die Spirometrie ist 11073 als drittes Slice sinnvoll und lohnt sich
gerade wegen der Sollwerte.** Genau dort, wo das Modul heute `loinc#TODO` und `sct#TODO`
stehen hat, liefert MDC einen echten Code — und zwar für **alle neun** abgedeckten
Messgrößen, wo SNOMED nur für drei (FEV1 `310520004`, FVC `310521000`, PEF `313192007`)
etwas hat. Für FEV1/FVC, IC, IRV, ERV und die drei MEF-Werte ist MDC damit die
**einzige** Terminologie neben LOINC, die einen Sollwert-Code führt. Das ist kein
Nice-to-have, sondern schließt echte Lücken.

**Zweitens: Für die Bodyplethysmographie und die Diffusion ändert 11073 nichts.**
TLC, RV, FRC, RV/TLC, DLCO, KCO, VA, sR, sG existieren in MDC nicht — weder als
Messgröße noch als Sollwert. Die Empfehlung aus `vorschlag-lufu-codes.md`, dort das
`sct`-Slice auf `0..0` zu setzen statt Platzhalter stehenzulassen, bleibt unverändert
richtig; ein `iso11073`-Slice würde an denselben Stellen ebenfalls leer bleiben. Der
Grund ist systematisch und nicht behebbar: 11073 ist eine **Gerätenomenklatur**, und das
Gerät, das am Beatmungsschlauch oder am Spirometer-Mundstück misst, kennt Fluss, Volumen,
Druck und Zeit — nicht die Größen, die erst aus Kammerdruck oder Gasanalyse hervorgehen.

**Drittens: Prozent-vom-Soll bleibt ungelöst.** Weder SNOMED noch 11073 haben es
flächendeckend; nur LOINC hat es (siehe LOINC-Tabelle in `vorschlag-lufu-codes.md`).
Die `percentPredicted`-Komponenten sollten daher **LOINC-only** modelliert werden, mit
`0..0` auf `sct` und `iso11073`.

**Empfehlung insgesamt:** 11073 als optionales drittes Coding-Slice (`0..1`) analog zum
ICU-Muster einführen, aber nur für die Spirometrie besetzen. Kein Slice erzwingen, wo
die Nomenklatur systematisch nichts hat. Der Gewinn ist der Anschluss an die
Geräteschnittstelle — dieselben Codes, die ein SDC-fähiges Spirometer über
IEEE 11073-10101 herausgibt, stünden dann unverändert in der Observation.
>>>>>>> worktree-agent-ace86ab6f72f48c87

---

## 6. Vorschlag fürs Ballot-Ticket

<<<<<<< HEAD
**Titel:** Lungenfunktion — IEEE 11073 als drittes Coding-Slice für die
spirometrischen Parameter und deren Sollwerte aufnehmen

**Betrifft:** `de.medizininformatikinitiative.kerndatensatz.lungenfunktion`,
alle Observation-Profile der Spirometrie sowie die Komponenten `predicted`

**Antrag:**

1. **Coding-Slice `iso11073` ergänzen** auf den spirometrischen
   Observation-Profilen, analog zum ICU-Modul
   (`urn:iso:std:iso:11073:10101`, `0..1`). Slice-Kardinalität `0..1`, nicht
   `1..1` — die Codes stammen aus der Gerätewelt und sind nicht für jeden
   Datenlieferanten verfügbar.

2. **Zwei kuratierte ValueSets anlegen**, benannt nach ICU-Vorbild:
   - `MII_VS_LuFu_Code_Spirometrie_ISO11073` — die Messwert-Codes aus Abschnitt 2
     (Kernparameter: `152586`, `188928`, `188948`, `188932`, `189000`, `189004`,
     `189008`, `152584`, `188960`, `188964`, `188968`, `188972`, `151840`;
     optional erweitert um FEV0,5–6s, FIF/FIV, MVV, FET)
   - `MII_VS_LuFu_Code_Spirometrie_Sollwert_ISO11073` — die zugehörigen
     `_PRED`-Codes (`33707018`, `33743360`, `33743380`, `33743364`, `33743432`,
     `33743436`, `33743440`, `33707016`, `33743392`, `33743396`, `33743400`,
     `33743404`)

3. **Display-Konvention festlegen und dokumentieren.** Da der Spirometrie-Block
   keine `common-term`-Designation führt, das Modul explizit auf den symbolischen
   MDC-Namen als `display` festlegen (z. B. `MDC_VOL_AWAY_EXP_FORCED_CAPACITY`) —
   oder auf den Definitionstext. Ohne diese Festlegung weicht jede Implementierung
   ab und der Validator meldet Display-Mismatches.

4. **Keine 11073-Codes** für TLC, RV, RV/TLC, FRC, DLCO, DLCOc, KCO, KCOc, VA,
   sR, sR-effektiv, sG_Total und Viskosität aufnehmen. Belegt: die Nomenklatur
   führt sie nicht. Für diese Parameter bleibt LOINC die einzige Quelle für
   Sollwert und % vom Soll; das `sct`-Slice der Sollwert-Komponenten sollte dort
   wie vorgeschlagen auf `0..0` gesetzt werden statt auf einem Platzhalter zu
   verharren.

5. **`percentPredicted` bleibt LOINC-only.** 11073 kennt für Lungenfunktion kein
   „%-vom-Soll"-Konzept.

6. **Nicht verwechseln:** `152436 MDC_VENT_VOL_LUNG_ALV` („Alveolar ventilation")
   ist **nicht** das VA der Diffusionsmessung, sondern die alveoläre Ventilation
   pro Atemzug am Beatmungsgerät. Der Code darf für den Parameter VA nicht
   herangezogen werden.

**Begründung in einem Satz:** IEEE 11073 liefert für acht spirometrische
Kernparameter einen Sollwert-Code, den SNOMED nicht hat und für den das Modul
heute einen Platzhalter trägt — bei null Zusatznutzen für die
bodyplethysmographischen und Diffusionsparameter, die deshalb ausdrücklich
ausgenommen bleiben sollten.

---

## Anhang: Reproduzierbarkeit

```bash
# Präfix-Suche (liefert vollständige Trefferliste)
curl -s -X POST http://localhost:3000/search -H 'Content-Type: application/json' \
  -d '{"system":"urn:iso:std:iso:11073:10101","filter":"MDC_VOL","count":1500}'

# Einzelabfrage mit definition und designations
curl -s -X POST http://localhost:3000/lookup -H 'Content-Type: application/json' \
  -d '{"system":"urn:iso:std:iso:11073:10101","code":"33707018"}'
```

Nicht abgefragt wurden die Partitionen `MDC_A…`, `MDC_D…`, `MDC_E…` und `MDC_I…`
(Attribute, Geräte, Events, Identifikatoren, jeweils über dem Rückgabelimit von
1500 Konzepten). Sie enthalten keine Messgrößen; die „kein Treffer"-Aussagen dieses
Dokuments beziehen sich auf den vollständig erhobenen Messgrößen-Raum von
6.977 Konzepten.
=======
**Titel:** Lungenfunktion — IEEE 11073 (MDC) als drittes Coding-Slice für die
Spirometrie, Auflösung der Sollwert-Platzhalter

**Betroffene Artefakte:** `MII_PR_Lufu_ObservationSpirometrie` (und die zugehörigen
parameterspezifischen ValueSets); nachrichtlich
`MII_PR_Lufu_ObservationBodyplethysmographie`, `…Diffusion`.

**Antrag:**

1. **Slice einführen.** `Observation.code.coding` um ein Slice `iso11073`
   (`urn:iso:std:iso:11073:10101`, Version `2024-12-05`) mit Kardinalität `0..1`
   erweitern — Konvention und Aufbau übernommen vom ICU-Modul
   (`MII_VS_ICU_Code_Observation_Beatmung_ISO11073`), keine neue Konvention erfinden.
2. **ValueSet anlegen:** `MII_VS_Lufu_Code_Spirometrie_ISO11073` mit den 9 bestätigten
   Messgrößen-Codes (`152586`, `188928`, `188948`, `151680`/`188932`, `189000`,
   `189004`, `189008`, `152584`, `188960`/`188964`/`188968`/`188972`) und
   `MII_VS_Lufu_Code_Spirometrie_Sollwerte_ISO11073` mit den korrespondierenden
   9 `_PRED`-Codes (`33707018`, `33743360`, `33743380`, `33743364`, `33743432`,
   `33743436`, `33743440`, `33707016`, `33743392`/`33743396`/`33743400`/`33743404`).
3. **`display` = symbolischer MDC-Name.** In den ValueSets den `display`-Wert des
   CodeSystems verwenden (`MDC_VOL_AWAY_EXP_FORCED_1S`), nicht eine Klartextphrase.
   Die Klartextbezeichnung gehört, wenn gewünscht, in `designation`. Und: `version` auf
   dem `include` setzen.
4. **Sollwert-Platzhalter auflösen.** `predicted`-Komponenten: LOINC gemäß
   [vorschlag-lufu-codes.md](vorschlag-lufu-codes.md), SNOMED nur wo vorhanden
   (FEV1/FVC/PEF), sonst `sct` auf `0..0`; MDC-`_PRED` zusätzlich, wo dieses Dokument
   einen Code nennt.
5. **`percentPredicted` als LOINC-only festschreiben.** Für Prozent-vom-Soll existiert
   in MDC **kein einziger** Code (Nachweis: Partition 514 enthält ausschließlich
   absolute Sollwerte; Wortstamm `PERCENT` liefert 26 Treffer, alle aus Beatmung,
   Schrittmacher und Gerätetechnik). `sct` und `iso11073` dort auf `0..0`.
6. **Bodyplethysmographie und Diffusion ausdrücklich ausnehmen.** Kein
   `iso11073`-Slice besetzen; im Guide einen Satz aufnehmen, warum (Gerätenomenklatur
   deckt nur Mundstück-Messgrößen ab). Das verhindert, dass die Frage bei jedem Ballot
   erneut gestellt wird.

**Kommentar an ISO/IEEE 11073 (optional, eigenes Ticket):** Die `_PRED`-Codes der
Partition 514 tragen wortgleich die `definition` ihrer Messgröße
(`33707018` vs. `152586`). Die Sollwert-Semantik ist nur aus dem symbolischen Namen
ableitbar. Bitte eigene Definitionen ergänzen.

**Nachrichtlich ans ICU-Modul** (eigenes Ticket, siehe Abschnitt 4): Plateaudruck
`152424` und FiO2 `152196` fehlen im Beatmungs-ValueSet; die `display`-Werte der
ISO-11073-ValueSets stimmen nicht mit dem CodeSystem überein; `version` fehlt auf den
`include`-Blöcken.

---

*Alle Codes dieses Dokuments sind am 2026-09-25 gegen
`urn:iso:std:iso:11073:10101|2024-12-05` auf dem SU-Terminologieserver per `$lookup`
bestätigt. Als „kein Treffer" markierte Größen sind über die in Abschnitt 1 gelisteten
Vollenumerationen und den A–Z-Kontrollsweep geprüft; die dort genannten Einschränkungen
gelten.*
>>>>>>> worktree-agent-ace86ab6f72f48c87
