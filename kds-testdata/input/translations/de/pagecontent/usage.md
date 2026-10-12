# Nutzung

### Testdaten beziehen

Jedes [GitHub-Release](https://github.com/medizininformatik-initiative/mii-testdata/releases) liefert drei Assets:

| Asset | Inhalt | Wofür |
|---|---|---|
| `testdata-bundles-ndjson-*.zip` | Alle Transaction-Bundles als **NDJSON**, ein Bundle je Zeile | Konsum: Bulk-Load, Pipelines, Importskripte |
| `kds-testdata-*.zip` | Die komplette `fsh-generated`-Ausgabe (jede Einzelressource plus die Bundles als JSON) | Einzelressourcen, Validierung, Entwicklung |
| `de.medizininformatikinitiative.kerndatensatz.testdata-*.tgz` | Ein FHIR-NPM-Paket mit allen Instanzen unter `package/example/` | Tooling: `-ig` für den Validator, Auflösung über den Paket-Cache |

Das NDJSON enthält **31 Transaction-Bundles** — 17 Modul-Bundles und 14 Patienten-Bundles. Das Patho-Dokument-Bundle reist im Patho-Transaction-Bundle mit statt als eigene Zeile, denn nur `transaction`- und `batch`-Bundles gehören an den Basis-Endpunkt eines Servers.

Beispiel — das neueste Release holen und in einen FHIR-Server laden:

```bash
# NDJSON des neuesten Release herunterladen
gh release download --repo medizininformatik-initiative/mii-testdata \
  --pattern 'testdata-bundles-ndjson-*.zip' && unzip testdata-bundles-ndjson-*.zip

# Jedes Bundle als Transaktion POSTen
while IFS= read -r bundle; do
  curl -sf -X POST -H "Content-Type: application/fhir+json" \
    -d "$bundle" "http://localhost:8080/fhir" > /dev/null && echo "OK"
done < testdata-bundles-*.ndjson
```

### Lokale FHIR-Server (im Repository enthalten)

- **Zwei-Server-Ladetest** (`scripts/check-servers.sh`): startet Blaze und HAPI, lädt jedes Bundle in beide und meldet jede Abweichung. Das ist keine Redundanz — die Server unterscheiden sich in ihrer Strenge, und ein Bundle, das der eine annimmt, kann der andere ablehnen. Dasselbe Skript läuft in der CI bei jedem Push.
- **Blaze-Smoke-Test** (`blaze/`): `docker compose -f blaze/blaze.yml up -d --wait`, dann `blaze/load-bundles.sh kds-testdata/fsh-generated/resources` — lädt alle Bundles als Transaktionen **mit erzwungener referenzieller Integrität**.
- **Integrationstests** (`integration-tests/`): docker-compose mit **HAPI** (Port 8080) und **Blaze** (Port 8082) plus einer SearchParameter-Testsuite (`make help` listet alle Targets).
- **Validator** (`validator-docker/`): der HL7-Java-Validator als Docker-Image mit vorgeladenen KDS-Paketen, für die Offline-Validierung eigener Ressourcen gegen die Ballot-2027-Profile.

Ein **vorbefülltes Server-Image** wird nicht veröffentlicht. Gemessen würde es sich nicht lohnen: ein Blaze-Image mit eingebackenen Daten kommt auf rund 675 MB gegenüber 616 MB für das offizielle Image, und das Laden, das es einem erspart, dauert etwa zwei Sekunden. HAPI ist hier mit In-Memory-H2 konfiguriert, sodass ein vorbefülltes Image ohne Wechsel auf eine persistente Datenbank gar nicht möglich wäre.

### Kennzeichnung

Jede Instanz trägt `meta.security = HTEST` („test health data“, `v3-ActReason`) und ein `meta.source`, das das simulierte Quellsystem benennt. Empfangende Systeme können Testdaten über beides zuverlässig filtern.

### Lizenz

Die Testdaten stehen unter **[CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/)** (Public-Domain-Widmung) — Nutzung, Veränderung und Weitergabe ohne Einschränkung, auch kommerziell.

Das erstreckt sich nicht auf die **verwendeten Terminologien**. Die Instanzen enthalten unter anderem Codes aus SNOMED CT, LOINC, ICD-10-GM, OPS, ATC und UCUM; deren produktive Nutzung unterliegt den jeweils eigenen Lizenzbedingungen (etwa der SNOMED-CT-Affiliate-Lizenz bzw. dem deutschen NLC-Rahmen sowie den BfArM-Bedingungen für ICD-10-GM und OPS).

### Haftungsausschluss

Alle Daten sind **vollständig synthetisch**. Es besteht kein Bezug zu realen Personen; jede Ähnlichkeit mit realen Personen, Fällen oder Identifikatoren wäre zufällig. Die gezeigten klinischen Verläufe dienen ausschließlich dem technischen Test KDS-konformer Systeme — sie sind **nicht für die klinische Nutzung, für Diagnosen oder Behandlungsentscheidungen geeignet** und erheben keinen Anspruch auf medizinische Richtigkeit oder Vollständigkeit. Die Daten werden ohne Gewähr bereitgestellt; die Haftung für Schäden aus ihrer Nutzung ist im gesetzlich zulässigen Umfang ausgeschlossen.

Das gilt ausdrücklich auch für die **Kodierungen**. Codes (ICD-10-GM, OPS, SNOMED CT, LOINC, ATC und weitere) und ihre Kombinationen wurden gewählt, um Strukturen auszuüben, nicht um Versorgung zu dokumentieren. Sie sind syntaktisch gültig und den realen Katalogen entnommen, aber **keine Kodier-, Abrechnungs- oder Dokumentationsempfehlung** — weder die klinische Passung eines Codes zum gezeigten Fall noch die Vollständigkeit der Kodierung wird zugesichert. Die Testdaten sind keine Referenz für korrektes Kodieren und **nicht als Grundlage für Forschung oder Versorgung geeignet**.

Ein konkretes Beispiel, warum das zählt: Mehrere Lungenfunktionsprofile pinnen per Pattern eine Einheit, die nicht zur Größe passt — Körpergewicht in `ug`, Soll-Atemfrequenz in `L`. Konforme Instanzen haben keine Wahl, als diese Einheiten zu tragen. Die Befunde sind in [`docs/ballot-findings-2027.md`](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ballot-findings-2027.md) dokumentiert und bei den Modulverantwortlichen eingereicht.
