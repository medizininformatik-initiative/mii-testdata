// Patient-1
Instance: mii-exa-test-data-patient-1-patho-macro-grouper-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper
Usage: #example
Title: "MII EXA Patho Macro Grouper A"
Description: "Grouper for all Macroscopic Observations of Specimen A (1st punch)"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* code.coding = $loinc#22634-0 
* hasMember[+] = Reference(mii-exa-test-data-patient-1-patho-biopsy-site-a)
* hasMember[+] = Reference(mii-exa-test-data-patient-1-patho-tissue-length-a)
* specimen = Reference(mii-exa-test-data-patient-1-patho-he-stained-slide-prostate)

Instance: mii-exa-test-data-patient-1-patho-macro-grouper-b
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper
Usage: #example
Title: "MII EXA Patho Macro Grouper B"
Description: "Grouper for all Macroscopic Observations of Specimen B (2nd punch)"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-macroscopic-grouper|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* code.coding = $loinc#22634-0 
* valueString = "Specimen B: Prostataseitenlappen rechts, apikal 1.5cm"
* hasMember[+] = Reference(mii-exa-test-data-patient-1-patho-biopsy-site-b)
* hasMember[+] = Reference(mii-exa-test-data-patient-1-patho-tissue-length-b)

Instance: mii-exa-test-data-patient-1-patho-micro-grouper-a
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper
Usage: #example
Title: "MII EXA Patho Micro Grouper A"
Description: "Grouper for all Microscopic Observations of Specimen A"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-microscopic-grouper|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* code.coding = $loinc#22635-7 
* valueString = "Specimen A: Prostatastanze mit herdförmiger kontinuierlicher Infiltration durch unscharf begrenzte Verbände eines kleintubulär wachse (Gleason-Muster 3), die sich zwischen ortständige Drüsen schieben und ca. 30% der Schnittfläche des Zylinders..."
* hasMember[+] = Reference(mii-exa-test-data-patient-1-patho-histologic-type-a)
* hasMember[+] = Reference(mii-exa-test-data-patient-1-patho-gleason-pattern-a)
* specimen = Reference(mii-exa-test-data-patient-1-patho-he-stained-slide-prostate)

Instance: mii-exa-test-data-patient-1-patho-diagnostic-conclusion-grouper
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper
Usage: #example
Title: "MII EXA Patho Diagnostic Conclusion Grouper"
Description: "Example for a diagnostic conclusion"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-diagnostic-conclusion-grouper|1.0.0"
* status = #final
* category[laboratory-category].coding = $observation-category#laboratory
* code.coding = $loinc#22637-3 
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-macro-grouper-a)
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-macro-grouper-b)
* derivedFrom[+] = Reference(mii-exa-test-data-patient-1-patho-micro-grouper-a)
* hasMember[+] = Reference(mii-exa-test-data-patient-1-patho-diagnostic-conclusion-1)
* hasMember[+] = Reference(mii-exa-test-data-patient-1-patho-diagnostic-conclusion-2)
* hasMember[+] = Reference(mii-exa-test-data-patient-1-patho-diagnostic-conclusion-3)