Instance: mii-exa-patho-micro-grouper-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper
Usage: #example
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#22635-7
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h1>Mikroskopische Beurteilung</h1><p><b>Probe A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders einnehmen</b></p></div>"
* status = #final
* valueString = "Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders..."
* hasMember[0] = Reference(mii-exa-patho-histologic-type-a)
* hasMember[+] = Reference(mii-exa-patho-gleason-pattern-a)
* hasMember[+] = Reference(mii-exa-patho-p63-a)