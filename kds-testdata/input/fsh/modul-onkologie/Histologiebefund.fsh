Instance: mii-exa-test-data-onko-mamma-histologiebefund
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund
Usage: #example
Description: "DiagnosticReport: Histologiebefund für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* code.coding[pathology-report] = $loinc#22034-3
* specimen = Reference(mii-exa-test-data-onko-mamma-specimen)
* basedOn = Reference(mii-exa-test-data-onko-mamma-tumorkonferenz)
* conclusion = "Mäßig differenziertes invasiv duktales Karzinom (8500/3), Grading G2 an der rechten Mamma, ..."
* status = $diagnostic-report-status#final
