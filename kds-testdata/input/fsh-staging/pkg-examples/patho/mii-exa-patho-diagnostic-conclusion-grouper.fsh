Instance: mii-exa-patho-diagnostic-conclusion-grouper
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#22637-3
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Zusammenfassende Beurteilung</h1><p><b>Azinäres Adenokarzinom der Prostata im untersuchten Stanzzylinder, Gleason-Score 3+3=6, ISUP Gradgruppe 1</b></p></div>"
* status = #final
* derivedFrom[0] = Reference(mii-exa-patho-macro-grouper-a)
* derivedFrom[+] = Reference(mii-exa-patho-micro-grouper-a)
* hasMember[0] = Reference(mii-exa-patho-diagnostic-conclusion-1)
* hasMember[+] = Reference(mii-exa-patho-diagnostic-conclusion-2)
* hasMember[+] = Reference(mii-exa-patho-diagnostic-conclusion-3)