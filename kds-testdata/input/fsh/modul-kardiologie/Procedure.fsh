// ============================================================================
// MII Kardiologie Test Data - Prozedur
// Kardiale Deviceimplantation (ICD-Implantation)
// ============================================================================

Instance: mii-exa-test-data-kardiologie-deviceimplantation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-kardiale-deviceimplantation
Usage: #example
Description: "Kardio Kardiale Deviceimplantation: Implantation eines ICD"
* insert TestDataLabel
* extension[Dokumentationsdatum].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[Dokumentationsdatum].valueDateTime = "2025-03-12T16:30:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000 "Therapeutic (qualifier value)"
* status = #completed
* category = $sct20260701#387713003 "Surgical procedure (procedure)"
* code.coding[sct] = $sct20260701#395218007 "Implantation of cardiac defibrillator (procedure)"
* code.coding[ops] = $ops#5-377.5 "Implantation eines Herzschrittmachers, Defibrillators und Ereignis-Rekorders: Defibrillator mit Einkammer-Stimulation"
* code.coding[ops].version = "2026"
* subject = Reference(mii-exa-test-data-kardiologie-patient-1)
* performedDateTime = "2025-03-12"
* bodySite.coding[snomed-ct] = $sct20260701#80891009 "Heart structure (body structure)"
* focalDevice.manipulated = Reference(mii-exa-test-data-kardiologie-device-1)
* focalDevice.action = $sct20260701#129338005 "Implantation - action (qualifier value)"
* note.text = "Komplikationslose ICD-Implantation bei hochgradig reduzierter LVEF (Primaerpraevention)."
