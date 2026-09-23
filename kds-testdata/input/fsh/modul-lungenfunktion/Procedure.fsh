// ============================================================================
// MII Lungenfunktion Test Data - Messungen (Procedures)
// Spirometrie, Bodyplethysmographie, Diffusionsmessung, Provokationstest
// ============================================================================

Instance: mii-exa-test-data-lungenfunktion-spirometrie-messung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-spirometrie-messung
Usage: #example
Description: "Lungenfunktion Spirometrie-Messung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* category.coding[sct] = $sct20260701#23426006 "Measurement of respiratory function (procedure)"
* code.coding[sct] = $sct20260701#127783003 "Spirometry (procedure)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* encounter = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* performedDateTime = "2025-02-18T09:00:00+01:00"
* outcome = $sct20260701#385669000 "Successful (qualifier value)"
* report = Reference(mii-exa-test-data-lungenfunktion-spirometrie-befund-1)
* extension[Dokumentationsdatum].valueDateTime = "2025-02-18T09:20:00+01:00"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* bodySite.coding[snomed-ct] = $sct#39607008 "Lung structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* note.text = "Spirometrie in sitzender Position, gute Mitarbeit, 3 akzeptable Manoever."
* partOf = Reference(mii-exa-test-data-lungenfunktion-untersuchung-1)

Instance: mii-exa-test-data-lungenfunktion-bodyplethysmographie-messung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-bodyplethysmographie-messung
Usage: #example
Description: "Lungenfunktion Bodyplethysmographie-Messung"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* category.coding[sct] = $sct20260701#23426006 "Measurement of respiratory function (procedure)"
* code.coding[sct] = $sct20260701#28275007 "Total body plethysmography (procedure)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* encounter = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* performedDateTime = "2025-02-18T09:30:00+01:00"
* outcome = $sct20260701#385669000 "Successful (qualifier value)"
* report = Reference(mii-exa-test-data-lungenfunktion-bodyplethysmografie-befund-1)
* extension[Dokumentationsdatum].valueDateTime = "2025-02-18T09:50:00+01:00"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* bodySite.coding[snomed-ct] = $sct#39607008 "Lung structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* note.text = "Bodyplethysmographie in geschlossener Kabine, stabile Atemschleifen."
* partOf = Reference(mii-exa-test-data-lungenfunktion-untersuchung-1)

Instance: mii-exa-test-data-lungenfunktion-diffusion-messung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-diffusion-messung
Usage: #example
Description: "Lungenfunktion Diffusionsmessung (CO-Diffusionskapazitaet, Single-Breath)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* category.coding[sct] = $sct20260701#23426006 "Measurement of respiratory function (procedure)"
* code.coding[sct] = $sct20260701#36421003 "Carbon monoxide diffusing capacity measurement (procedure)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* encounter = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* performedDateTime = "2025-02-18T10:15:00+01:00"
* outcome = $sct20260701#385669000 "Successful (qualifier value)"
* report = Reference(mii-exa-test-data-lungenfunktion-diffusion-befund-1)
* extension[Dokumentationsdatum].valueDateTime = "2025-02-18T10:35:00+01:00"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* bodySite.coding[snomed-ct] = $sct#39607008 "Lung structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* note.text = "Single-Breath-CO-Diffusionsmessung, zwei uebereinstimmende Messungen."
* partOf = Reference(mii-exa-test-data-lungenfunktion-untersuchung-1)

Instance: mii-exa-test-data-lungenfunktion-provokationstest-messung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-lungenfunktion/StructureDefinition/mii-pr-lungenfunktion-provokationstest-messung
Usage: #example
Description: "Lungenfunktion Provokationstest-Messung (Methacholin-Provokation)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
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
* extension[Dokumentationsdatum].valueDateTime = "2025-02-18T11:45:00+01:00"
* extension[durchfuehrungsabsicht].valueCoding = $sct#261004008 "Diagnostic intent"
* bodySite.coding[snomed-ct] = $sct#39607008 "Lung structure (body structure)"
* bodySite.coding[snomed-ct].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* note.text = "Methacholin-Provokation nach Dosimeter-Protokoll, Abbruch bei PD20."
* partOf = Reference(mii-exa-test-data-lungenfunktion-untersuchung-1)
// Uebergeordnete Gesamtuntersuchung (partOf-Ziel der vier Messungen)
Instance: mii-exa-test-data-lungenfunktion-untersuchung-1
InstanceOf: Procedure
Usage: #example
Description: "Lungenfunktion Procedure: komplette Lungenfunktionsdiagnostik (Gesamtuntersuchung)"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #completed
* code = $sct20260701#23426006 "Measurement of respiratory function (procedure)"
* subject = Reference(mii-exa-test-data-lungenfunktion-patient-1)
* encounter = Reference(mii-exa-test-data-lungenfunktion-encounter-1)
* performedPeriod.start = "2025-02-18T09:00:00+01:00"
* performedPeriod.end = "2025-02-18T11:45:00+01:00"
