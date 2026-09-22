// ============================================================================
// MII Mikrobio Specimens
// ============================================================================

Instance: mii-exa-test-data-mikrobio-specimen-1
InstanceOf: Specimen
Usage: #example
Description: "Mikrobio Specimen: Blutkultur aerob"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* identifier.value = "BLOOD-CULT-001"
* status = #available
* type = $sct#119297000 "Blood specimen (specimen)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* collection.collectedDateTime = "2026-04-02T08:30:00+02:00"
* collection.bodySite.coding[+] = $sct#28273000 "Bilateral antecubital fossae (body structure)"

Instance: mii-exa-test-data-mikrobio-specimen-2
InstanceOf: Specimen
Usage: #example
Description: "Mikrobio Specimen: Mittelstrahlurin"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* identifier.value = "URINE-001"
* status = #available
* type = $sct#122575003 "Urine specimen (specimen)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* collection.collectedDateTime = "2026-04-02T09:00:00+02:00"

// ----------------------------------------------------------------------------
// Probe (mii-pr-mikrobio-probe, basiert auf Biobank SpecimenCore):
// Sputum fuer die spezifische Mikroskopie (Saeurefeste Staebchen)
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-probe-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe
Usage: #example
Description: "Mikrobio Probe: Sputum (fuer spezifische Mikroskopie auf saeurefeste Staebchen)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* identifier.value = "SPUTUM-001"
* status = #available
* type.coding[sct] = $sct#119334006 "Sputum specimen (specimen)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* collection.collectedDateTime = "2026-04-02T07:45:00+02:00"
* receivedTime = "2026-04-02T08:15:00+02:00"
