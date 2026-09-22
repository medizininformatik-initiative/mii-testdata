Instance: mii-exa-seltene-therapieempfehlung-gentherapie-sma
InstanceOf: MII_PR_Seltene_Therapieempfehlung
Usage: #example
Title: "Beispiel Gentherapie bei SMA"
Description: "Beispiel einer medikamentösen Therapieempfehlung für Gentherapie bei Spinaler Muskelatrophie"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung)
* status = #active
* intent = #proposal
* category[MVGenomSeqTherapieStrategie].coding = MII_CS_Seltene_TherapieempfehlungStrategie#gene-therapy "Gentherapie"
* category[MVGenomSeqTherapieTyp].coding = MII_CS_Seltene_TherapieempfehlungTyp#causal "Kausal"
* medicationCodeableConcept.coding[+].system = "http://fdasis.nlm.nih.gov"
* medicationCodeableConcept.coding[=].code = #MLU3LU3EVV
* medicationCodeableConcept.coding[=].display = "ONASEMNOGENE ABEPARVOVEC"
* medicationCodeableConcept.text = "Zolgensma"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* reasonReference = Reference(Condition/mii-exa-seltene-condition-sma-genetic)
* reasonReference.display = "Spinale Muskelatrophie Typ 1"
* note.text = "Einmalige intravenöse Infusion der Gentherapie"

// Example: Losartan bei Marfan-Syndrom

Instance: mii-exa-seltene-therapieempfehlung-losartan-marfan
InstanceOf: MII_PR_Seltene_Therapieempfehlung
Usage: #example
Title: "Beispiel Losartan bei Marfan-Syndrom"
Description: "Beispiel einer medikamentösen Therapieempfehlung für Losartan zur Progressionshemmung bei Marfan-Syndrom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung)
* status = #active
* intent = #proposal
* category[MVGenomSeqTherapieStrategie].coding = MII_CS_Seltene_TherapieempfehlungStrategie#prevention-medication "Präventive Medikation"
* category[MVGenomSeqTherapieTyp].coding = MII_CS_Seltene_TherapieempfehlungTyp#symptomatic "Symptomatisch"
* medicationCodeableConcept.coding[+].system = http://fhir.de/CodeSystem/bfarm/atc
* medicationCodeableConcept.coding[=].code = #C09CA01
* medicationCodeableConcept.coding[=].display = "Losartan"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* dosageInstruction[+].text = "50mg 1x täglich"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].doseAndRate[+].doseQuantity = 50 'mg' "mg"
* reasonReference = Reference(Condition/mii-exa-seltene-condition-marfan-clinical)
* reasonReference.display = "Marfan-Syndrom mit Aortenwurzeldilatation"
