Instance: mii-exa-mtb-kim-tumorzellgehalt-aszites
InstanceOf: MII_PR_MTB_Tumorzellgehalt
Usage: #example
Title: "Tumorzellgehalt Aszites"
Description: "Tumorzellgehalt progrediente Aszites (20ml/700ml maligne Tumorzellen)"
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt)
* status = #final
* valueQuantity = 0.028 '%'
* valueQuantity.system = "http://unitsofmeasure.org"
* method = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt#histologic

Instance: mii-exa-mtb-kim-humangenetische-beratung-aszites
InstanceOf: MII_PR_MTB_Humangenetische_Beratung_Auftrag
Usage: #example
Title: "Empfehlung Human-genetische Beratung"
Description: "Empfehlung erneute Human-genetische Beratung wegen progrediente Aszites"
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag)
* status = #completed
* intent = #proposal
* code.coding = http://snomed.info/sct#788339009 "Genetic consultation (procedure)"
* subject = Reference(PatientKimMusterperson)
* reasonCode = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-auftrag-begruendung#secondary-tumor
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)

Instance: mii-exa-mtb-kim-histologie-evaluation-aszites
InstanceOf: MII_PR_MTB_Histologie_Evaluation_Auftrag
Usage: #example
Title: "Empfehlung Histologie-Evaluation"
Description: "Empfehlung erneute histologische Evaluation wegen progrediente Aszites"
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag)
* status = #draft
* intent = #proposal
* code.coding = http://snomed.info/sct#183825009 "Refer for histology (procedure)"
* subject = Reference(PatientKimMusterperson)
* reasonReference = Reference(mii-exa-mtb-kim-tumorzellgehalt-aszites)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)

Instance: mii-exa-mtb-kim-rebiopsie-aszites
InstanceOf: MII_PR_MTB_Biopsie_Auftrag
Usage: #example
Title: "Empfehlung Biopsie"
Description: "Empfehlung erneute Biopsie wegen progrediente Aszites"
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag)
* status = #completed
* intent = #proposal
* code.coding = http://snomed.info/sct#86273004 "Biopsy (procedure)"
* subject = Reference(PatientKimMusterperson)
* reasonReference = Reference(mii-exa-mtb-kim-tumorzellgehalt-aszites)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
