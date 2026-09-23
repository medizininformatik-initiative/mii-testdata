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
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#PRIMÄRPROBE "Primärprobe"
* extension[infektiositaetsstatus].valueCodeableConcept = $sct#409603009 "Biosafety level 2 (qualifier value)"
* collection.collectedDateTime = "2026-04-02T07:45:00+02:00"
* collection.bodySite.coding[sct] = $sct#39607008 "Lung structure (body structure)"
* collection.quantity = 5 'mL' "mL"
* collection.fastingStatusCodeableConcept = $v2-0916#NF "The patient indicated they did not fast prior to the procedure."
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 50 'mL' "mL"
* container.specimenQuantity = 5 'mL' "mL"
* processing[lagerprozess].procedure = $sct#1186936003 "Storage of specimen (procedure)"
* processing[lagerprozess].timePeriod.start = "2026-04-02T08:15:00+02:00"
* processing[lagerprozess].timePeriod.end = "2026-04-02T09:30:00+02:00"
* processing[lagerprozess].extension[temperaturbedingungen].valueRange.low = 2 'Cel' "°C"
* processing[lagerprozess].extension[temperaturbedingungen].valueRange.high = 8 'Cel' "°C"
* request = Reference(mii-exa-test-data-mikrobio-servicerequest-1)
* note.text = "Morgensputum, makroskopisch purulent; Transport gekuehlt."
* receivedTime = "2026-04-02T08:15:00+02:00"

// ----------------------------------------------------------------------------
// Probe (mii-pr-mikrobio-probe): intraoperativ entnommene Gewebeprobe.
// Gewebeproben tragen — anders als Sputum — den praeanalytischen Zeitpunkt
// der Einstellung der Blutversorgung (warme Ischaemie, SPREC).
// ----------------------------------------------------------------------------
Instance: mii-exa-test-data-mikrobio-probe-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe
Usage: #example
Description: "Mikrobio Probe: intraoperative Kolon-Gewebeprobe zur Erregerdiagnostik"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* identifier.system = "https://www.charite.de/fhir/sid/Probennummer"
* identifier.value = "TISSUE-001"
* status = #available
* type.coding[sct] = $sct#128159001 "Tissue specimen from colon (specimen)"
* subject = Reference(mii-exa-test-data-mikrobio-patient-1)
* extension[probenebene].valueCoding = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#PRIMÄRPROBE "Primärprobe"
* extension[infektiositaetsstatus].valueCodeableConcept = $sct#409603009 "Biosafety level 2 (qualifier value)"
* collection.collectedDateTime = "2026-04-04T09:15:00+02:00"
* collection.extension[einstellungBlutversorgung].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung"
* collection.extension[einstellungBlutversorgung].valueDateTime = "2026-04-04T09:05:00+02:00"
* collection.bodySite.coding[sct] = $sct#71854001 "Colon structure (body structure)"
* collection.method = $sct#86273004 "Biopsy (procedure)"
* collection.quantity = 1 'mL' "mL"
* container.type = $sct#83059008 "Tube, device (physical object)"
* container.capacity = 10 'mL' "mL"
* container.specimenQuantity = 1 'mL' "mL"
* processing[lagerprozess].procedure = $sct#1186936003 "Storage of specimen (procedure)"
* processing[lagerprozess].timePeriod.start = "2026-04-04T09:40:00+02:00"
* processing[lagerprozess].timePeriod.end = "2026-04-04T10:30:00+02:00"
* processing[lagerprozess].extension[temperaturbedingungen].valueRange.low = 2 'Cel' "°C"
* processing[lagerprozess].extension[temperaturbedingungen].valueRange.high = 8 'Cel' "°C"
* request = Reference(mii-exa-test-data-mikrobio-servicerequest-1)
* note.text = "Intraoperative Gewebeprobe bei Verdacht auf Anastomoseninsuffizienz; Abklemmen der Blutversorgung 09:05."
* receivedTime = "2026-04-04T09:40:00+02:00"
