# Vorschlag: Codes für die Lungenfunktions-Platzhalter

Konkrete Auflösung der 56 Platzhalter (`loinc#TODO`, `sct#TODO`) im Modul
Lungenfunktion, siehe [Ballot-Finding 5](ballot-findings-2027.md). Alle Codes und
ValueSet-Inhalte sind gegen
`de.medizininformatikinitiative.kerndatensatz.complete#2027.0.0-ballot.19` geprüft.

## Kernbefund: Die meisten Codes liegen bereits im Modul

Die Platzhalter sitzen überwiegend auf den Komponenten `predicted` (Sollwert) und
`percentPredicted` (% vom Soll). Für die meisten Parameter führt das Modul die
passenden LOINC-Codes **schon in seinen eigenen parameterspezifischen ValueSets** —
sie wurden nur nicht in die `patternCoding` übernommen.

Ursache für das Übersehen dürfte sein, dass die Platzhalter-Elemente an die **breiten**
`-observable`-ValueSets gebunden sind statt an die parameterspezifischen; eine
automatische Ableitung findet dort nichts.

## LOINC — direkt übernehmbar

| Parameter | `predicted` | `percentPredicted` | Quelle |
|---|---|---|---|
| FEV | `20147-5` | `20152-5` FEV1 measured/predicted | `mii-vs-lufu-lnc-fev` |
| FVC | `19869-7` | `19872-1` FVC measured/predicted | `…-fvc` |
| FEV/FVC | `19925-7` | `69984-3` | `…-fev-fvc` |
| VC | `19865-5` | `98088-8` Vital capacity/predicted VC | `…-vc` |
| TLC | `19861-4` Total lung capacity Predicted | `89085-5` | `…-tlc` |
| RV | `20145-9` | `94125-2` | `…-rv` |
| RV/TLC | `43252-6` | — | `…-rv-tlc` |
| FRC | `19847-3` | — | `…-frc` |
| IC | `19851-5` | `19856-4` | `…-ic` |
| IRV/ERV | `19923-2` (ERV) | — | `…-irv-erv` |
| PEF | `69974-4` | `69977-7` | `…-pef` |
| MEF | — | `69971-0` FEF 25-75% Predicted | `…-mef` |
| DLCO | `19910-9` | `98130-8` | `…-dlco` |
| KCO | `19915-8` | `98203-3` | `…-kco` |
| R (Atemwegswiderstand) | — | `91981-1` | `…-r` |
| sR (spezifisch) | — | `91982-9` | `…-sr` |
| sR effektiv | — | `98087-0` | `…-sr-eff` |

## SNOMED — nur teilweise vorhanden, Begriff ist „Expected"

SNOMED nennt Sollwerte **„Expected"**, nicht „Predicted". Das Modul nutzt das bereits:

| Parameter | SNOMED-Sollwert |
|---|---|
| FEV1 | `310520004` Expected forced expired volume in 1 second |
| FVC | `310521000` Expected forced vital capacity |
| PEF | `313192007` Expected peak expiratory flow rate |
| VC (% vom Soll) | `445389005` Percentage of predicted vital capacity |

Für die übrigen Parameter — insbesondere die bodyplethysmographischen (TLC, RV, FRC,
Widerstände, Transferkoeffizienten) — enthält SNOMED **keine** Expected-Konzepte.

**Empfehlung:** Dort das `sct`-Slice der Sollwert-Komponenten auf `0..0` setzen statt
einen Platzhalter stehen zu lassen. Ein nicht besetzbares Slice ohne Platzhalter ist
ehrlicher als ein `TODO`, das jede Instanz unkonform macht.

## Echte Lücken — Recherche nötig

Für diese Stellen liefert weder das Modul noch eine naheliegende LOINC-Ableitung einen
Code; sie brauchen einen Blick in die LOINC-Datenbank:

| Stelle | Anmerkung |
|---|---|
| `VA` Hauptcode (LOINC) | SNOMED ist gesetzt (`251953007` Alveolar volume); LOINC-Pendant fehlt. In `…-kco` taucht „Diffusion capacity/Alveolar volume" auf — VA selbst ist dort aber nicht enthalten. |
| `DLCOc`, `KCOc` Sollwerte | Hb-korrigierte Varianten; `…-dlcoc` enthält nur Messwerte (`19912-5`, `19913-3`) |
| `sG_Total` (spezifische Conductance) | kein eigenes ValueSet im Modul |
| `R`, `R_Effektiv`, `R_Spezifisch` Sollwert | nur `%predicted` vorhanden, kein absoluter Sollwert |

Außerdem: Die drei DiagnosticReport-Profile **Bodyplethysmographie**, **Diffusion** und
**Provokationstest** sind alle an `mii-vs-lufu-lnc-procedure` gebunden, das genau einen
Code enthält — `18759-1 Spirometry study`. Für Bodyplethysmographie und
Diffusionsmessung ist das fachlich falsch; hier fehlen eigene Studien-Codes.

## IEEE 11073: geprüft — lohnt sich, aber aus einem anderen Grund als vermutet

Die Frage wurde inzwischen gegen den Terminologieserver erhoben und dokumentiert in
[ieee11073-lufu-mapping.md](ieee11073-lufu-mapping.md) (CodeSystem-Version `2024-12-05`,
48.287 Konzepte vollständig expandiert). Die Antwort fällt differenziert aus:

| | Abdeckung |
|---|---|
| Messgrößen gesamt (22 Modulparameter) | 9 (41 %) |
| … Spirometrie | **8 von 8** |
| … Bodyplethysmographie | 1 von 8 |
| … Diffusion | **0 von 5** |
| **Sollwerte** (Partition 514 „Predicted Values") | **51 Codes** |
| Prozent vom Soll | **0** |

**Der Gewinn liegt bei den Sollwerten, nicht bei den Messgrößen.** SNOMED kennt Sollwerte
nur für FEV1, FVC und PEF; MDC deckt zusätzlich FEV1/FVC, VC, IC, IRV, ERV und die ganze
MEF-Reihe ab — also genau Stellen, an denen heute `sct#TODO` steht. Empfehlung deshalb:
optionales drittes Slice `0..1`, begründet mit der Sollwert-Abdeckung.

**Zwei Grenzen, die kein weiteres Codesystem aufhebt:**

*Prozent vom Soll* gibt es in MDC für keine einzige Lungenfunktionsgröße — und in SNOMED
und LOINC für die bodyplethysmographischen Größen ebenfalls nicht. Statt einen
Terminologie-Neuantrag zu stellen, wäre die saubere Lösung, die Größe als **abgeleitet**
zu modellieren: Messwert und Sollwert stehen ohnehin beide als Komponenten in der
Ressource.

*Die Diffusionsmessung ist in MDC terminologisch nicht darstellbar.* Die Nomenklatur
kennt kein Kohlenmonoxid als Atemgas — die einzigen CO-Konzepte betreffen
Carboxyhämoglobin im Blut. Ohne CO-Atemgaskonzentration gibt es kein DLCO und kein KCO.
`152020` `MDC_COEF_GAS_TRAN` klingt passend, benennt aber kein Gas und trägt keine
Hb-Korrektur. Auch TLC, RV, RV/TLC und FRC fehlen; FRC existiert ausschließlich in vier
*Alarm*codes („Unable to calculate Functional Residual Capacity") — also genau
andersherum als gebraucht.

Für Bodyplethysmographie und Diffusion bleibt `0..0` damit die ehrliche Lösung, in MDC
wie in SNOMED.

## Randnotiz ICU: SOFA-Subscores

Dieselbe Platzhalter-Klasse trifft alle sechs SOFA-Subscores
(`sct#xxx` bzw. `sct#xxxx`, bei ausformulierten Displays wie „SOFA Subscore -
Cardiovascular"). LOINC führt für die SOFA-Komponenten eigene Codes; auch hier ist es
eher Redaktion als Terminologielücke.
