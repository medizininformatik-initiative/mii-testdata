// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-msi-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mikrosatelliteninstabilitaet
Usage: #example
Description: "Observation: Mikrosatelliteninstabilität für BRAF-Mutation"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mikrosatelliteninstabilitaet|1.0.0"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject = Reference(mii-exa-test-data-patient-3)
* valueCodeableConcept = $loinc#LA14122-8 "Stable"
* specimen = Reference(mii-exa-test-data-patient-3-specimen-1)
* component[conclusion-string].code = $tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Tumor weist ein mikrosatellitenstabiles Wachstum auf."