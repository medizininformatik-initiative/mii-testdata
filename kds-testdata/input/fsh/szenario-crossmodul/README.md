# Szenario: Standortübergreifender Onkologie-Patient (Onko ↔ ICU)

Testdaten-Szenario zur **Profil-Diskriminierung** (`meta.profile` / `_profile`) vs.
**daten-inhärenter Suche** (`Condition.code`). Konkreter Testfall zum Analysepapier
`mii-kerndatensatz-dev/docs/canonical-discrimination-analysis`.

## Klinisches Narrativ

**Eine Person** — Kim Musterperson, weiblich, *1956-03-14 — wird an **zwei Standorten**
versorgt. Verknüpft werden die beiden Standort-Datensätze über die gemeinsame
gesetzliche Versichertennummer (**KVNR** `http://fhir.de/sid/gkv/kvid-10` = `K220635158`).
Jeder Standort führt zusätzlich eine eigene lokale Patienten-ID.

| | Standort A – Onkologisches Zentrum | Standort B – Intensivstation (anderes Haus) |
|---|---|---|
| Anlass | Ovarialkarzinom, umfassende onkologische Versorgung (2021) | **COVID-19** (U07.1), schweres ARDS an **VV-ECMO** (Mai 2024) |
| Onkologie-Doku | vollständig, **`MII_PR_Onko_Diagnose_Primaertumor`** | nur **Neben-/Komorbiditätsdiagnose** |
| Krebs-Ressource | `mii-exa-test-data-onko-diagnose-1` | `mii-exa-crossmodul-icu-onko-nebendiagnose` |
| ICD-10 | C56 | C56 (identisch) |
| `meta.profile` | Onko-Canonical (`…/modul-onko/…/mii-pr-onko-diagnose-primaertumor`) | Basis-Canonical (`…/modul-diagnose/…/Diagnose`) |
| Einhängung | Onko-Encounter (Standort A) | ICU-Encounter, `diagnosis.use = CC` (Komorbidität), rank 2 |

Beide Krebs-Conditions tragen **denselben ICD-Code C56**, unterscheiden sich aber im `meta.profile`.

## Kernaussage (der zu testende Effekt)

| Suchstrategie | Standort A | Standort B | |
|---|---|---|---|
| `Condition?_profile=…/mii-pr-onko-diagnose-primaertumor` (TORCH / DIZ-Dashboard) | ✅ Treffer | ❌ **kein Treffer** | Patient am ICU-Standort ist als Onko-Fall **unsichtbar** |
| `Condition?code=…icd-10-gm\|C56` (daten-inhärent) | ✅ Treffer | ✅ Treffer | beide Standorte gefunden |

→ Wer Onko-Kohorten ausschließlich über `_profile` bildet, verliert genau die Fälle,
in denen die Krebserkrankung an einem anderen Standort nur als Nebendiagnose geführt wird.

## Standort B: realistischer COVID-ECMO-Verlauf

Das vollständige `input/fsh/modul-icu/Bundle.fsh` bildet den ICU-Aufenthalt ab
(Mai 2024, kohärente Zeitachse):

- **Aufnahme 2024-05-01** wegen COVID-19 (U07.1), invasive Beatmung ab 05-01
- **VV-ECMO 2024-05-03 – 05-11** (`Getinge Cardiohelp`), Beatmung bis 05-13
- Lungen-Ruhigstellung / schweres ARDS: Horowitz-Index **68 mmHg**, PEEP **14 cmH₂O**,
  FiO₂ **0,5**, ultraprotektives Tidalvolumen **320 mL**
- ECMO-Betrieb: Blutfluss **4,5 L/min**, Sweep-Gas **5 L/min**
- Onkologie erscheint hier nur als Komorbidität (C56, ohne Onko-Profil)

## Ressourcen dieses Szenarios

Neu (in `CrossModul-Onko-ICU.fsh`):
- `mii-exa-crossmodul-standort-a` / `mii-exa-crossmodul-standort-b` — Standort-Organisationen
- `mii-exa-crossmodul-icu-onko-nebendiagnose` — **Kern-Ressource**: Onkologie als Basis-`Diagnose` (C56, ohne Onko-Profil) am ICU-Standort

Angepasst (gemeinsame Person / Standort-Zuordnung / COVID-ECMO):
- `modul-onkologie/core/Patient.fsh` — Onko-Patient + KVNR, Encounter → Standort A
- `modul-icu/Patient.fsh` — ICU-Patient = dieselbe Person (KVNR), Encounter → Standort B, `diagnosis` (COVID = AD, Onko = CC)
- `modul-icu/Condition.fsh` — ICU-Hauptdiagnose **COVID-19 (U07.1)**
- `modul-icu/Procedure.fsh` / `Observation.fsh` / `Device.fsh` — VV-ECMO-Gerät + kohärente Zeitachse + ARDS/ECMO-Werte

Infrastruktur:
- `sushi-config.yaml` — ICU-Dependency auf **2026.0.2** angehoben (bringt Snapshots; das
  vollständige ICU-Bundle ist damit wieder baubar). ICU-Profil-URLs in
  `modul-icu/*.fsh` auf das 2026-Namensschema (`mii-pr-icu-*`) migriert.

## Reproduktion (nach `sushi .`)

```bash
cd fsh-generated/resources
ONKO='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor'
A=Bundle-mii-exa-test-data-bundle-onkologie-1.json   # Standort A
B=Bundle-mii-exa-test-data-bundle-icu-1.json          # Standort B
# Suche 1 – nur Standort A findet den Onko-Fall:
for f in "$A" "$B"; do jq --arg p "$ONKO" '[.entry[].resource|select(.resourceType=="Condition")|select(.meta.profile[]?==$p)]|length' "$f"; done
# Suche 2 – beide Standorte über den ICD-Code:
for f in "$A" "$B"; do jq '[.entry[].resource|select(.resourceType=="Condition")|select(.code.coding[]?.code=="C56")]|length' "$f"; done
```
