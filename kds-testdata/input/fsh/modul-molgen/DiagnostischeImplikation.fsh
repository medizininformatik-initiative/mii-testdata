// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-diagnostische-implikation-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation|1.0.0"
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/diagnostic-implication"
* status = #final
* category[labCategory] = $observation-category#laboratory "Laboratory"
* code = $tbd-codes-cs#diagnostic-implication "Diagnostische Implikation"
* subject = Reference(mii-exa-test-data-patient-3)
* derivedFrom[variant] = Reference(mii-exa-test-data-patient-3-molgen-variante-1)
* component[conclusion-string].code = $tbd-codes-cs#conclusion-string
* component[conclusion-string].valueString = "Nachweis einer aktivierenden Mutation BRAF V600E"