// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-biomarker-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mii-pr-molgen-molekularer-biomarker
Usage: #example
Description: "Observation: Molekularer Biomarker (PD-L1 TPS) fuer Patient-3"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-biomarker"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#85147-0 "PD-L1 by clone 22C3 [Interpretation] in Tissue by Immune stain"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* encounter = Reference(mii-exa-test-data-molgen-encounter-1)
* effectiveDateTime = "2022-04-07"
* issued = "2022-04-12T11:00:00+02:00"
* valueQuantity = 60 $ucum#% "percent"
* specimen = Reference(mii-exa-test-data-molgen-specimen-1)
* component[biomarker-category].valueCodeableConcept.text = "PD-L1 Tumor Proportion Score"
