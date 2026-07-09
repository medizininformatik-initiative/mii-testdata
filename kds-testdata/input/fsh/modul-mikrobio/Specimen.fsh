// ============================================================================
// MII Mikrobio Specimens
// ============================================================================

Instance: mii-exa-test-data-mikrobio-specimen-1
InstanceOf: Specimen
Usage: #example
Description: "Mikrobio Specimen: Blutkultur aerob"
* insert TestDataLabel
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
* identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* identifier.value = "URINE-001"
* status = #available
* type = $sct#122575003 "Urine specimen (specimen)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* collection.collectedDateTime = "2026-04-02T09:00:00+02:00"
