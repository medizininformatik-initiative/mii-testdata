// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-ergebnis-zusammenfassung-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/ergebnis-zusammenfassung
Usage: #example
Description: "Observation: Ergebniszusammenfassung für BRAF-Mutation"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/ergebnis-zusammenfassung|1.0.0"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/overall-interpretation"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $loinc#51968-6
* subject = Reference(mii-exa-test-data-patient-3)
* valueCodeableConcept = $loinc#LA6576-8 "Positive"
* component[conclusion-string].valueString = "BRAF p.V600E Mutation liegt vor. Bitte Therapieoption mit einem BRAF-Inhibitor prüfen."