# Terminologie-Versionen: Server vs. Paket-Deklaration

Stichprobe aus 214 in den Testdaten verwendeten CodeSystems; 72 davon abgefragt.
Server: `http://localhost:3000` · verglichen gegen: `hl7.fhir.r4.core#4.0.1`, `hl7.terminology#7.4.0`, `hl7.terminology.r4#7.3.0` · erzeugt: 2026-09-25 08:42

| CodeSystem | Server | im Paket-Cache deklariert | Befund |
|---|---|---|---|
| `fhir.de/CodeSystem/KontaktDiagnoseProzedur` | `1.5.4` | — | nur serverseitig |
| `fhir.de/CodeSystem/Kontaktebene` | `1.5.4` | — | nur serverseitig |
| `fhir.de/CodeSystem/ask` | `20260105` | — | nur serverseitig |
| `fhir.de/CodeSystem/bfarm/alpha-id` | `2026` | — | nur serverseitig |
| `fhir.de/CodeSystem/bfarm/atc` | `2026` | — | nur serverseitig |
| `fhir.de/CodeSystem/bfarm/icd-10-gm` | `2026` | — | nur serverseitig |
| `fhir.de/CodeSystem/bfarm/ops` | — | — | nicht abgefragt |
| `fhir.de/CodeSystem/dgkev/Aufnahmeanlass` | `1.5.4` | — | nur serverseitig |
| `fhir.de/CodeSystem/dkgev/AufnahmegrundDritteStelle` | `1.5.4` | — | nur serverseitig |
| `fhir.de/CodeSystem/dkgev/AufnahmegrundErsteUndZweiteStel` | `1.5.4` | — | nur serverseitig |
| `fhir.de/CodeSystem/dkgev/AufnahmegrundVierteStelle` | `1.5.4` | — | nur serverseitig |
| `fhir.de/CodeSystem/dkgev/EntlassungsgrundDritteStelle` | `1.5.4` | — | nur serverseitig |
| `fhir.de/CodeSystem/dkgev/EntlassungsgrundErsteUndZweiteS` | `1.5.4` | — | nur serverseitig |
| `fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel` | — | — | nicht abgefragt |
| `fhir.de/CodeSystem/gender-amtlich-de` | `1.5.4` | — | nur serverseitig |
| `fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeic` | `1.5.4` | — | nur serverseitig |
| `fhir.de/CodeSystem/identifier-type-de-basis` | `1.5.4` | — | nur serverseitig |
| `fhir.de/CodeSystem/ifa/pzn` | `20260215` | — | nur serverseitig |
| `fhir.de/CodeSystem/kontaktart-de` | `1.5.4` | — | nur serverseitig |
| `hl7.org/fhir/sid/icd-10` | `2019` | — | nur serverseitig |
| `hl7.org/fhir/sid/icf` | — | — | nicht abgefragt |
| `ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode` | `1.4.0` | — | nur serverseitig |
| `loinc.org` | `2.83` | — | nur serverseitig |
| `snomed.info/sct` | `http://snomed.info/sct/900000000000207008/version/20260701` | — | nur serverseitig |
| `terminology.hl7.org/CodeSystem/CAS` | `20240723` | — | nur serverseitig |
| `terminology.hl7.org/CodeSystem/allergyintolerance-clinic` | `1.0.0` | `1.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/allergyintolerance-verifi` | `1.0.0` | `1.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/claim-type` | `1.0.0` | `1.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/condition-category` | — | `2.0.0` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | nicht abgefragt |
| `terminology.hl7.org/CodeSystem/condition-clinical` | `3.0.0` | `3.0.0` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | identisch |
| `terminology.hl7.org/CodeSystem/condition-ver-status` | `2.0.0` | `2.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/consentcategorycodes` | — | `1.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | nicht abgefragt |
| `terminology.hl7.org/CodeSystem/consentpolicycodes` | `3.0.0` | `3.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/consentscope` | `2.0.0` | `2.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/data-absent-reason` | — | `2.0.0` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | nicht abgefragt |
| `terminology.hl7.org/CodeSystem/diagnosis-role` | `1.0.0` | `1.1.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/endpoint-connection-type` | `2.0.0` | `2.1.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/endpoint-payload-type` | `2.0.0` | `2.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/icd-o-3` | `2019` | — | nur serverseitig |
| `terminology.hl7.org/CodeSystem/library-type` | `1.0.0` | `1.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/list-example-use-codes` | `1.0.0` | `1.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/location-physical-type` | `2.0.0` | `2.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/media-type` | `4.0.1` | `4.0.1` (hl7.fhir.r4.core#4.0.1) | identisch |
| `terminology.hl7.org/CodeSystem/medication-admin-category` | `4.0.1` | `4.0.1` (hl7.fhir.r4.core#4.0.1) | identisch |
| `terminology.hl7.org/CodeSystem/medication-statement-cate` | `4.0.1` | `4.0.1` (hl7.fhir.r4.core#4.0.1) | identisch |
| `terminology.hl7.org/CodeSystem/observation-category` | — | `2.0.0` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | nicht abgefragt |
| `terminology.hl7.org/CodeSystem/organization-type` | `1.0.0` | `2.0.1` (hl7.terminology.r4#7.3.0), `3.0.0` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/processpriority` | `1.0.0` | `1.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/provenance-participant-ty` | `1.0.0` | `2.0.0` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/reason-medication-given` | `1.0.0` | `1.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/referencerange-meaning` | `1.0.0` | `1.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/research-study-phase` | `1.0.0` | `1.0.0` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | identisch |
| `terminology.hl7.org/CodeSystem/research-study-prim-purp-` | `1.0.0` | `2.0.0` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/risk-probability` | `1.0.0` | `1.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/substance-category` | `1.0.0` | `1.0.1` (hl7.terminology#7.4.0), `4.0.1` (hl7.fhir.r4.core#4.0.1) | **abweichend** |
| `terminology.hl7.org/CodeSystem/title-type` | — | `1.0.0` (hl7.terminology#7.4.0) | nicht abgefragt |
| `terminology.hl7.org/CodeSystem/v2-0074` | — | `2.9` (hl7.fhir.r4.core#4.0.1), `3.0.0` (hl7.terminology#7.4.0) | nicht abgefragt |
| `terminology.hl7.org/CodeSystem/v2-0136` | `2.9` | `2.9` (hl7.fhir.r4.core#4.0.1) | identisch |
| `terminology.hl7.org/CodeSystem/v2-0203` | `4.0.0` | `2.9` (hl7.fhir.r4.core#4.0.1), `5.0.0` (hl7.terminology#7.4.0) | **abweichend** |
| `terminology.hl7.org/CodeSystem/v2-0487` | `2.0.0` | `2.9` (hl7.fhir.r4.core#4.0.1), `3.0.0` (hl7.terminology#7.4.0) | **abweichend** |
| `terminology.hl7.org/CodeSystem/v2-0532` | `2.0.0` | `3.0.0` (hl7.terminology#7.4.0) | **abweichend** |
| `terminology.hl7.org/CodeSystem/v2-0916` | `2.0.0` | `2.9` (hl7.fhir.r4.core#4.0.1), `3.0.0` (hl7.terminology#7.4.0) | **abweichend** |
| `terminology.hl7.org/CodeSystem/v3-ActCode` | — | `11.0.0` (hl7.terminology#7.4.0), `2018-08-12` (hl7.fhir.r4.core#4.0.1) | nicht abgefragt |
| `terminology.hl7.org/CodeSystem/v3-ActReason` | `3.0.0` | `2018-08-12` (hl7.fhir.r4.core#4.0.1), `4.0.0` (hl7.terminology#7.4.0) | **abweichend** |
| `terminology.hl7.org/CodeSystem/v3-Confidentiality` | `3.0.0` | `2018-08-12` (hl7.fhir.r4.core#4.0.1), `5.0.0` (hl7.terminology#7.4.0) | **abweichend** |
| `terminology.hl7.org/CodeSystem/v3-ObservationInterpretat` | — | `2018-08-12` (hl7.fhir.r4.core#4.0.1), `4.0.0` (hl7.terminology#7.4.0) | nicht abgefragt |
| `terminology.hl7.org/CodeSystem/v3-ObservationValue` | `3.0.0` | `2018-08-12` (hl7.fhir.r4.core#4.0.1), `6.0.0` (hl7.terminology#7.4.0) | **abweichend** |
| `terminology.hl7.org/CodeSystem/v3-RoleCode` | `3.0.0` | `2018-08-12` (hl7.fhir.r4.core#4.0.1), `4.0.0` (hl7.terminology#7.4.0) | **abweichend** |
| `terminology.hl7.org/CodeSystem/variant-confidence-status` | — | — | nicht abgefragt |
| `unitsofmeasure.org` | `1.0.1` | — | nur serverseitig |
| `www.whocc.no/atc` | — | — | nicht abgefragt |
| `urn:iso:std:iso:11073:10101` | `2024-12-05` | — | nur serverseitig |

## Auswertung

**28 Abweichungen** zwischen geladener und deklarierter Fassung — Kandidaten für eine Update-Anfrage an den Terminologie-Betrieb:

- `http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical`: Server `1.0.0`, Pakete `1.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/allergyintolerance-verification`: Server `1.0.0`, Pakete `1.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/claim-type`: Server `1.0.0`, Pakete `1.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/condition-ver-status`: Server `2.0.0`, Pakete `2.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/consentpolicycodes`: Server `3.0.0`, Pakete `3.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/consentscope`: Server `2.0.0`, Pakete `2.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/diagnosis-role`: Server `1.0.0`, Pakete `1.1.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/endpoint-connection-type`: Server `2.0.0`, Pakete `2.1.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/endpoint-payload-type`: Server `2.0.0`, Pakete `2.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/library-type`: Server `1.0.0`, Pakete `1.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/list-example-use-codes`: Server `1.0.0`, Pakete `1.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/location-physical-type`: Server `2.0.0`, Pakete `2.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/organization-type`: Server `1.0.0`, Pakete `2.0.1`, `3.0.0`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/processpriority`: Server `1.0.0`, Pakete `1.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/provenance-participant-type`: Server `1.0.0`, Pakete `2.0.0`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/reason-medication-given`: Server `1.0.0`, Pakete `1.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/referencerange-meaning`: Server `1.0.0`, Pakete `1.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/research-study-prim-purp-type`: Server `1.0.0`, Pakete `2.0.0`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/risk-probability`: Server `1.0.0`, Pakete `1.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/substance-category`: Server `1.0.0`, Pakete `1.0.1`, `4.0.1`
- `http://terminology.hl7.org/CodeSystem/v2-0203`: Server `4.0.0`, Pakete `2.9`, `5.0.0`
- `http://terminology.hl7.org/CodeSystem/v2-0487`: Server `2.0.0`, Pakete `2.9`, `3.0.0`
- `http://terminology.hl7.org/CodeSystem/v2-0532`: Server `2.0.0`, Pakete `3.0.0`
- `http://terminology.hl7.org/CodeSystem/v2-0916`: Server `2.0.0`, Pakete `2.9`, `3.0.0`
- `http://terminology.hl7.org/CodeSystem/v3-ActReason`: Server `3.0.0`, Pakete `2018-08-12`, `4.0.0`
- `http://terminology.hl7.org/CodeSystem/v3-Confidentiality`: Server `3.0.0`, Pakete `2018-08-12`, `5.0.0`
- `http://terminology.hl7.org/CodeSystem/v3-ObservationValue`: Server `3.0.0`, Pakete `2018-08-12`, `6.0.0`
- `http://terminology.hl7.org/CodeSystem/v3-RoleCode`: Server `3.0.0`, Pakete `2018-08-12`, `4.0.0`

**25 Systeme existieren nur serverseitig** — kein gepinntes Paket deklariert eine Version. Damit ist die zugrunde liegende Fassung allein eine Eigenschaft des Servers und in keinem Pin sichtbar:

- `http://fhir.de/CodeSystem/KontaktDiagnoseProzedur` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/Kontaktebene` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/ask` — Server `20260105`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/bfarm/alpha-id` — Server `2026`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/bfarm/atc` — Server `2026`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/bfarm/icd-10-gm` — Server `2026`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/dgkev/Aufnahmeanlass` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/dkgev/AufnahmegrundDritteStelle` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/dkgev/AufnahmegrundErsteUndZweiteStelle` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/dkgev/AufnahmegrundVierteStelle` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/dkgev/EntlassungsgrundDritteStelle` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/dkgev/EntlassungsgrundErsteUndZweiteStelle` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/gender-amtlich-de` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/identifier-type-de-basis` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/ifa/pzn` — Server `20260215`; keine Paket-Deklaration bekannt
- `http://fhir.de/CodeSystem/kontaktart-de` — Server `1.5.4`; keine Paket-Deklaration bekannt
- `http://hl7.org/fhir/sid/icd-10` — Server `2019`; Paket-Deklarationen vorhanden, aber in anderem Versionsschema (Ressourcen- statt Terminologieversion) — nicht vergleichbar
- `http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode` — Server `1.4.0`; keine Paket-Deklaration bekannt
- `http://loinc.org` — Server `2.83`; Paket-Deklarationen vorhanden, aber in anderem Versionsschema (Ressourcen- statt Terminologieversion) — nicht vergleichbar
- `http://snomed.info/sct` — Server `http://snomed.info/sct/900000000000207008/version/20260701`; Paket-Deklarationen vorhanden, aber in anderem Versionsschema (Ressourcen- statt Terminologieversion) — nicht vergleichbar
- `http://terminology.hl7.org/CodeSystem/CAS` — Server `20240723`; Paket-Deklarationen vorhanden, aber in anderem Versionsschema (Ressourcen- statt Terminologieversion) — nicht vergleichbar
- `http://terminology.hl7.org/CodeSystem/icd-o-3` — Server `2019`; Paket-Deklarationen vorhanden, aber in anderem Versionsschema (Ressourcen- statt Terminologieversion) — nicht vergleichbar
- `http://unitsofmeasure.org` — Server `1.0.1`; Paket-Deklarationen vorhanden, aber in anderem Versionsschema (Ressourcen- statt Terminologieversion) — nicht vergleichbar
- `urn:iso:std:iso:11073:10101` — Server `2024-12-05`; `hl7.terminology.r4#6.5.0` deklariert `20250520` **→ Server ist aelter, Update anfragen**

**13 nicht abgefragt** (Server-/Netzfehler) — die Zeilen sagen nichts über Drift aus:

- `http://fhir.de/CodeSystem/bfarm/ops` — HTTP Error 404: Not Found
- `http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel` — HTTP Error 404: Not Found
- `http://hl7.org/fhir/sid/icf` — HTTP Error 404: Not Found
- `http://terminology.hl7.org/CodeSystem/condition-category` — HTTP Error 404: Not Found
- `http://terminology.hl7.org/CodeSystem/consentcategorycodes` — HTTP Error 404: Not Found
- `http://terminology.hl7.org/CodeSystem/data-absent-reason` — HTTP Error 404: Not Found
- `http://terminology.hl7.org/CodeSystem/observation-category` — HTTP Error 404: Not Found
- `http://terminology.hl7.org/CodeSystem/title-type` — HTTP Error 404: Not Found
- `http://terminology.hl7.org/CodeSystem/v2-0074` — HTTP Error 404: Not Found
- `http://terminology.hl7.org/CodeSystem/v3-ActCode` — HTTP Error 404: Not Found
- `http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation` — HTTP Error 404: Not Found
- `http://terminology.hl7.org/CodeSystem/variant-confidence-status-cs` — HTTP Error 404: Not Found
