// ============================================================================
// MII Lungenfunktion Test Data - Messungen (Procedures)
// Spirometrie, Bodyplethysmographie, Diffusionsmessung, Provokationstest
// ============================================================================

Instance: mii-exa-test-data-lungenfunktion-spirometrie-messung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-spirometrie-messung
Usage: #example
Description: "Lungenfunktion Spirometrie-Messung"
* insert TestDataLabel
* status = #completed
* category.coding[sct] = $sct20260701#23426006 "Measurement of respiratory function (procedure)"
* code.coding[sct] = $sct20260701#127783003 "Spirometry (procedure)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* encounter = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* performedDateTime = "2025-02-18T09:00:00+01:00"
* outcome = $sct20260701#385669000 "Successful (qualifier value)"
* report = Reference(mii-exa-test-data-lungenfunktion-spirometrie-befund-1)

Instance: mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-bodyplethysmographie-messung
Usage: #example
Description: "Lungenfunktion Bodyplethysmographie-Messung"
* insert TestDataLabel
* status = #completed
* category.coding[sct] = $sct20260701#23426006 "Measurement of respiratory function (procedure)"
* code.coding[sct] = $sct20260701#28275007 "Total body plethysmography (procedure)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* encounter = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* performedDateTime = "2025-02-18T09:30:00+01:00"
* outcome = $sct20260701#385669000 "Successful (qualifier value)"
* report = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmographie-befund-1)

Instance: mii-exa-test-data-lungenfunktion-diffusion-messung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-diffusion-messung
Usage: #example
Description: "Lungenfunktion Diffusionsmessung (CO-Diffusionskapazitaet, Single-Breath)"
* insert TestDataLabel
* status = #completed
* category.coding[sct] = $sct20260701#23426006 "Measurement of respiratory function (procedure)"
* code.coding[sct] = $sct20260701#36421003 "Carbon monoxide diffusing capacity measurement (procedure)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* encounter = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* performedDateTime = "2025-02-18T10:15:00+01:00"
* outcome = $sct20260701#385669000 "Successful (qualifier value)"
* report = Reference(mii-exa-test-data-lungenfunktion-diffusion-befund-1)

Instance: mii-exa-test-data-lungenfunktion-provokationstest-messung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-provokationstest-messung
Usage: #example
Description: "Lungenfunktion Provokationstest-Messung (Methacholin-Provokation)"
* insert TestDataLabel
* status = #completed
* category.coding[sct].system = "http://snomed.info/sct"
* category.coding[sct].code = #323426006
* category.coding[sct].display = "Measurement of respiratory function (procedure)"
* category.coding[sct] insert SCT20260701
* code.coding[sct] = $sct20260701#252520007 "Methacholine challenge (procedure)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* encounter = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* performedDateTime = "2025-02-18T11:00:00+01:00"
* outcome = $sct20260701#385669000 "Successful (qualifier value)"
* report = Reference(mii-exa-test-data-lungenfunktion-provokationstest-befund-1)
