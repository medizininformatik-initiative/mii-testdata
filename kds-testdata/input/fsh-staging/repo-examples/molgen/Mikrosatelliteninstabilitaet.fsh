Instance: mii-exa-molgen-mikrosatelliteninstabilitaet-1
InstanceOf: mii-pr-molgen-mikrosatelliteninstabilitaet
Usage: #example
Title: "Mikrosatelliteninstabilität"
Description: "Beispiel für Mikrosatelliteninstabilität in Tumorprobe."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mikrosatelliteninstabilitaet)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/molecular-biomarker|3.0.0"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[mbCategory] = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#biomarker-category "A characterization of a given biomarker observation."
* code = http://loinc.org#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject = Reference(mii-exa-molgen-patient)
* valueCodeableConcept = http://loinc.org#LA14122-8 "Stable"
* specimen = Reference(mii-exa-molgen-specimen-1)
