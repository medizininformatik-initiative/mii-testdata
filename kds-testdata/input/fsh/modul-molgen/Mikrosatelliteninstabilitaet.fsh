// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-msi-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mikrosatelliteninstabilitaet
Usage: #example
Description: "Observation: Mikrosatelliteninstabilitaet fuer BRAF-Mutation"
* insert TestDataLabel
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/msi"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject = Reference(mii-exa-test-data-molgen-patient-1)
* encounter = Reference(mii-exa-test-data-molgen-encounter-1)
* effectiveDateTime = "2022-04-07"
* issued = "2022-04-12T10:30:00+02:00"
* valueCodeableConcept = $loinc#LA14122-8 "Stable"
* specimen = Reference(mii-exa-test-data-molgen-specimen-1)
* derivedFrom = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* component[gene-studied].code = $loinc#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept.text = "MSI-Panel (5 Marker)"
// code inherited from profile pattern (tbd-codes-cs#biomarker-category)
* component[biomarker-category].valueCodeableConcept.text = "Microsatellite Instability"
