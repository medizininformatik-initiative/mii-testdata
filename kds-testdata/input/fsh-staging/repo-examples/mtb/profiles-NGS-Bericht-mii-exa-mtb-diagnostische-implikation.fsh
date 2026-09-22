Instance: MII-EXA-MTB-Diagnostische-Implikation-1
InstanceOf: MII_PR_MTB_Diagnostische_Implikation
Usage: #example
Title: "Beispiel fuer BRAF Mutation MTB Diagnostische Implikation"
Description: "Beispiel fuer diagnostische Implikation im Kontext des Molecular Tumor Boards basierend auf einer BRAF-Mutation."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#diagnostic-implication "Diagnostic Implication"
* subject = Reference(Patient/mii-exa-mtb-patient)
* derivedFrom[variant] = Reference(Observation/MII-EXA-MTB-Einfache-Variante)

* component[clinical-significance].code = http://loinc.org#53037-8 "Genetic variation clinical significance [Imp]"
* component[clinical-significance].valueCodeableConcept = http://loinc.org#LA6668-3 "Pathogenic"
