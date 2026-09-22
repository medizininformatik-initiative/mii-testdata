# Nutzung

### Bezug der Testdaten

Jedes [GitHub-Release](https://github.com/medizininformatik-initiative/mii-testdata/releases) enthält zwei Assets:

| Asset | Inhalt | Wofür |
|---|---|---|
| `testdata-bundles-ndjson-*.zip` | Alle Transaction-Bundles als **NDJSON** (ein Bundle pro Zeile) | Konsumformat: Bulk-Load, Pipelines, Import-Skripte |
| `kds-testdata-*.zip` | Das komplette `fsh-generated` (alle Einzelressourcen + Bundles als JSON) | Einzelressourcen, Validierung, Entwicklung |

Beispiel — neuestes Release beziehen und in einen FHIR-Server laden:

```bash
# NDJSON des neuesten Releases herunterladen
gh release download --repo medizininformatik-initiative/mii-testdata \
  --pattern 'testdata-bundles-ndjson-*.zip' && unzip testdata-bundles-ndjson-*.zip

# Jedes Bundle als Transaction an einen FHIR-Server POSTen
while IFS= read -r bundle; do
  curl -sf -X POST -H "Content-Type: application/fhir+json" \
    -d "$bundle" "http://localhost:8080/fhir" > /dev/null && echo "OK"
done < testdata-bundles-*.ndjson
```

### Lokale FHIR-Server (im Repository enthalten)

- **Blaze-Smoke-Test** (`blaze/`): `docker compose -f blaze/blaze.yml up -d --wait`, dann `blaze/load-bundles.sh kds-testdata/fsh-generated/resources` — lädt alle Bundles als Transactions **mit erzwungener Referenzintegrität**. Läuft identisch in der CI bei jedem Push.
- **Integrationstests** (`integration-tests/`): docker-compose mit **HAPI** (Port 8080) und **Blaze** (Port 8082) plus SearchParameter-Testsuite (`make help` zeigt alle Targets).
- **Validator** (`validator-docker/`): HL7 Java-Validator als Docker-Image mit vorgeladenen KDS-Paketen zur Offline-Validierung eigener Ressourcen gegen die 2027-Ballot-Profile.

Ein fertig **vorbefülltes Server-Image** (Testdaten bereits geladen) wird derzeit nicht publiziert — die o.g. Compose-Setups laden die Daten in wenigen Sekunden.

### Kennzeichnung

Jede Instanz trägt `meta.security = HTEST` („test health data", `v3-ActReason`) und `meta.source` mit dem simulierten Quellsystem. Empfangende Systeme können Testdaten darüber zuverlässig filtern.

### Lizenz

Die Testdaten stehen unter **[CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/deed.de)** (Public-Domain-Widmung) — Nutzung, Veränderung und Weitergabe ohne Einschränkung, auch kommerziell.

Davon unberührt bleiben die Lizenzbedingungen der **verwendeten Terminologien**: Die Instanzen enthalten Codes aus u.a. SNOMED CT, LOINC, ICD-10-GM, OPS, ATC und UCUM. Für deren produktive Nutzung gelten die jeweiligen Lizenz-/Nutzungsbedingungen (z.B. SNOMED-CT-Affiliate-Lizenz bzw. der deutsche NLC-Rahmen, BfArM-Bedingungen für ICD-10-GM/OPS).

### Haftungsausschluss

Alle Daten sind **vollständig synthetisch**. Es bestehen keine Bezüge zu realen Personen; Übereinstimmungen mit realen Personen, Fällen oder Identifikatoren wären zufällig. Die dargestellten klinischen Verläufe dienen ausschließlich dem technischen Test von KDS-konformen Systemen — sie sind **nicht zur klinischen Nutzung, Diagnostik oder Therapieentscheidung geeignet** und erheben keinen Anspruch auf medizinische Korrektheit oder Vollständigkeit. Die Bereitstellung erfolgt ohne Gewähr; jegliche Haftung für Schäden aus der Nutzung ist im gesetzlich zulässigen Rahmen ausgeschlossen.
