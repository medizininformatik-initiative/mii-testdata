Instance: mii-exa-patho-macro-grouper-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#22634-0
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Makroskopische Beurteilung</h1><p><b>Probe A: 1,2 cm langer weißlicher Gewebszylinder aus dem rechten lateralen Prostataseitenlappen peripher</b></p></div>"
* status = #final
* hasMember[0] = Reference(mii-exa-patho-biopsy-site-a)
* hasMember[+] = Reference(mii-exa-patho-tissue-length-a)