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
// gene-studied bewusst weggelassen: MSI-Test ist panel-basiert (5 Marker: BAT-25, BAT-26, NR-21, NR-24, MONO-27), kein einzelnes Gen
// code inherited from profile pattern (tbd-codes-cs#biomarker-category)
* component[biomarker-category].valueCodeableConcept.coding = $ncit#C36318 "Microsatellite Instability"
* component[biomarker-category].valueCodeableConcept.text = "Microsatellite Instability"
