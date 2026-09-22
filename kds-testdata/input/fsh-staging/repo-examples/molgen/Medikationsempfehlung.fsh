Instance: mii-exa-molgen-medikationsempfehlung-1
InstanceOf: mii-pr-molgen-medikationsempfehlung
Usage: #example
Title: "BRAF Variante Medikationsempfehlung"
Description: "Beispiel für Medikationsempfehlung abgeleitet von genetischer Variante im BRAF Gen an Hand von NGS."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/medikationsempfehlung)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/medication-recommendation|3.0.0"
* basedOn = Reference(mii-exa-molgen-anforderung-1)
* status = TaskStatus#requested
* intent = http://hl7.org/fhir/request-intent#proposal
* code = http://loinc.org#LA26421-0 "Consider alternative medication"
* code.text = "Alternative Medikation in Erwägung ziehen"
* for = Reference(mii-exa-molgen-patient)
* reasonReference = Reference(mii-exa-molgen-therapeutische-implikation-1)
