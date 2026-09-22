# Staging: geerntete Package-Examples

GoFSH-konvertierte Example-Instanzen aus den `examples/`-Ordnern der
Ballot-Packages (via `scripts/harvest-package-examples.py` + GoFSH,
`InstanceOf`-Versionssuffixe gestrippt). Sie liegen **außerhalb von
`input/fsh/`**, weil sie gegen die eigenen Modul-Profile noch nicht
valide sind — SUSHI meldet 178 Fehler, wenn man sie einbaut.

**Workflow je Modul:** Ordner nach `input/fsh/pkg-examples/<modul>/`
verschieben, `sushi build .` ausführen, Fehler unten abarbeiten
(= das Enrichment), dann in die regulären `modul-*`-Ordner integrieren.

## SUSHI-Fehler je Modul (Stand der Ernte)

### bildgebung (2 Fehler)
- 1× Element Composition.section.entry has minimum cardinality N but occurs N time(s).
- 1× Element Composition.section:diagRep.entry has minimum cardinality N but occurs N time(s).

### kardiologie (18 Fehler)
- 10× Element Observation.code.coding.version has minimum cardinality N but occurs N time(s).
- 4× Element Observation.code.coding:loinc.version has minimum cardinality N but occurs N time(s).
- 1× Element Observation.code.coding:mdc.version has minimum cardinality N but occurs N time(s).
- 1× Element Procedure.bodySite.coding.version has minimum cardinality N but occurs N time(s).
- 1× Element Procedure.bodySite.coding:snomed-ct.version has minimum cardinality N but occurs N time(s).
- 1× Element Procedure.bodySite.coding:snomed-ct.code has minimum cardinality N but occurs N time(s).

### laborbefund (18 Fehler)
- 4× Element Observation.identifier:analyseBefundCode.system has minimum cardinality N but occurs N time(s).
- 4× Element Observation.identifier:analyseBefundCode.value has minimum cardinality N but occurs N time(s).
- 4× Element Observation.identifier:analyseBefundCode.assigner has minimum cardinality N but occurs N time(s).
- 1× Element ServiceRequest.identifier:anforderung.system has minimum cardinality N but occurs N time(s).
- 1× Element ServiceRequest.identifier:anforderung.value has minimum cardinality N but occurs N time(s).
- 1× Element ServiceRequest.identifier:anforderung.assigner has minimum cardinality N but occurs N time(s).
- 1× Element DiagnosticReport.identifier:befund.system has minimum cardinality N but occurs N time(s).
- 1× Element DiagnosticReport.identifier:befund.value has minimum cardinality N but occurs N time(s).
- 1× Element DiagnosticReport.identifier:befund.assigner has minimum cardinality N but occurs N time(s).

### lungenfunktion (17 Fehler)
- 9× The type "Reference(MedicationAdministration)" does not match any of the allowed types: Reference(https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-bodyplethysmographie-messung)
- 6× The type "Reference(MedicationAdministration)" does not match any of the allowed types: Reference(https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-spirometrie-messung)
- 2× The type "Reference(Procedure)" does not match any of the allowed types: Reference(https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-dosis-gabe)

### mikrobiologie (111 Fehler)
- 34× Element Observation.identifier:analyseBefundCode.system has minimum cardinality N but occurs N time(s).
- 34× Element Observation.identifier:analyseBefundCode.value has minimum cardinality N but occurs N time(s).
- 34× Element Observation.identifier:analyseBefundCode.assigner has minimum cardinality N but occurs N time(s).
- 2× Element Observation.interpretation.extension:Norm.value[x] has minimum cardinality N but occurs N time(s).
- 2× Element Specimen.type.coding.code has minimum cardinality N but occurs N time(s).
- 2× Element Specimen.type.coding:sct.code has minimum cardinality N but occurs N time(s).
- 1× Element DiagnosticReport.identifier:befund.system has minimum cardinality N but occurs N time(s).
- 1× Element DiagnosticReport.identifier:befund.value has minimum cardinality N but occurs N time(s).
- 1× Element DiagnosticReport.identifier:befund.assigner has minimum cardinality N but occurs N time(s).

### patho (12 Fehler)
- 1× The type "Reference(Practitioner)" does not match any of the allowed types: Reference(https://gematik.de/fhir/isik/StructureDefinition/ISiKPersonImGesundheitsberuf | http://hlN.org/fhir/StructureDefinition/Organization)
- 1× Element Composition.text.div has minimum cardinality N but occurs N time(s).
- 1× Element Composition.author has minimum cardinality N but occurs N time(s).
- 1× Element Composition.attester:legal.party has minimum cardinality N but occurs N time(s).
- 1× Element Composition.section.title has minimum cardinality N but occurs N time(s).
- 1× Element Composition.section.text has minimum cardinality N but occurs N time(s).
- 1× Element Composition.section.entry has minimum cardinality N but occurs N time(s).
- 1× Element Composition.section:patho-diagnostic-report.title has minimum cardinality N but occurs N time(s).
- 1× Element Composition.section:patho-diagnostic-report.text has minimum cardinality N but occurs N time(s).
- 1× Element Composition.section:patho-diagnostic-report.entry has minimum cardinality N but occurs N time(s).
- 1× Element DiagnosticReport.identifier:Set-ID.system has minimum cardinality N but occurs N time(s).
- 1× Element DiagnosticReport.identifier:Set-ID.value has minimum cardinality N but occurs N time(s).


## Korrektur zur Fehlerliste oben

Der Mikrobiologie-Block (114 Fehler über `identifier:analyseBefundCode`) war
**kein Modulfehler**, sondern ein Artefakt der GoFSH-Konvertierung: GoFSH
vergibt keine Slice-Namen, SUSHI matcht Slices nicht per Diskriminator. Die
Original-JSON-Examples erfüllen den Slice. Fix: Slice-Namen in den FSH-Dateien
ergänzt (`identifier[analyseBefundCode].…`) — Rest-Fehlerstand Mikrobiologie
bei Probe-Integration: 21 (statt 114+).
