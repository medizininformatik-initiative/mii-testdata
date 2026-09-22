Instance: mii-exa-molgen-folgemassnahme-1
InstanceOf: mii-pr-molgen-empfohlene-folgemassnahme
Usage: #example
Title: "BRAF Empfohlene Folgemaßnahme"
Description: "Beispiel für empfohlene Folgemaßnahme abgeleitet von genetischer Variante im BRAF Gen an Hand von NGS."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/empfohlene-folgemassnahme)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/followup-recommendation|3.0.0"
* basedOn = Reference(mii-exa-molgen-anforderung-1)
* status = TaskStatus#requested
* intent = http://hl7.org/fhir/request-intent#proposal
* code = http://loinc.org#LA14020-4 "Genetic counseling recommended"
* description = "Genetische Beratung empfohlen mit Dr. Rosalind Franklin"
* for = Reference(mii-exa-molgen-patient)
* reasonReference = Reference(mii-exa-molgen-therapeutische-implikation-1)

Instance: mii-exa-molgen-folgemassnahme-brca1
InstanceOf: mii-pr-molgen-empfohlene-folgemassnahme
Usage: #example
Title: "Empfohlene Folgemaßnahme bei BRCA1 Variante"
Description: "Beispiel für empfohlene Folgemaßnahme abgeleitet von genetischer Variante im BRCA1 Gen an Hand von NGS."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/empfohlene-folgemassnahme)
* meta.profile[+] = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/followup-recommendation|3.0.0"
* basedOn = Reference(mii-exa-molgen-anforderung-trurisk-panel)
* status = TaskStatus#requested
* intent = http://hl7.org/fhir/request-intent#proposal
* code = http://loinc.org#LA14020-4 "Genetic counseling recommended"
* description = "Eine genetische Beratung hinsichtlich einer gezielten Testung leiblicher Familienmitglieder wird empfohlen."
* for = Reference(mii-exa-molgen-patient-brca1)
