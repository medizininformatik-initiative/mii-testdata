Instance: obs-promis-29-pain-intensity
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/StructureDefinition/mii-pr-pro-promis-29-pain-intensity
Usage: #inline
* valueQuantity = 5 '1' "1"
* method.text = "PROMIS-29 Profile v2.1 - Pain Intensity single item"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-instantiatesCanonical"
* extension.valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-pro/ObservationDefinition/mii-obsdef-pro-promis-29-pain-intensity"
* derivedFrom = Reference(promis-29-response-1)
* code = http://loinc.org#75261-8 "How intense was your average pain in the past 7 days [PROMIS]"
* status = #final
* subject = Reference(patient-example-1)
* effectiveDateTime = "2025-01-30T14:30:00Z"