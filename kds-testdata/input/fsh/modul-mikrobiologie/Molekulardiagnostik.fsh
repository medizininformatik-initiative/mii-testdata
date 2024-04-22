Instance: mii-exa-test-data-patient-1-mikrobio-molekulare-diagnostik-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-diagnostik
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-diagnostik|2024.0.0"
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://www.charite.de/fhir/sid/lab-results"
* identifier[analyseBefundCode].value = "MiBiMKD_000001"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "Charité"
* status = #final
* category.coding[observation-category] = $observation-category#laboratory "Laboratory"
* category.coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category.coding[loinc-microbiology-studies] = $loinc#18725-2 "Microbiology studies"
* code = $loinc#92253-4 "Microorganism identified in Isolate or Specimen by Molecular genetics method"
* subject = Reference(mii-exa-test-data-patient-1)
* effectiveDateTime = "2024-02-16T16:15:00+01:00"
* valueCodeableConcept = $sct#10828004 "Positive"
* specimen = Reference(mii-exa-test-data-patient-1-specimen-2)
* component[NameMikroorganismus].code = $loinc#89248-9
* component[NameMikroorganismus].valueCodeableConcept = $sct#840533007 "Severe acute respiratory syndrome coronavirus 2 (organism)"
* component[CtWert].code = $sct#1268647006
* component[CtWert].valueQuantity.value = 30
* component[CtWert].valueQuantity.unit = "{Ct_value}"