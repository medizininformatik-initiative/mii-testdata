Instance: obs-promis-29-anxiety-tscore
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-anxiety-tscore
Usage: #inline
* valueQuantity = 56.8 '{score}' "{score}"
* method.text = "PROMIS-29 Profile v2.1"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension.valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-anxiety-tscore"
* derivedFrom = Reference(promis-29-response-1)
* code = http://loinc.org#71967-4 "PROMIS-29 Anxiety score T-score"
* status = #final
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"