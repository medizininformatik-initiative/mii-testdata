Instance: mii-exa-seltene-therapieempfehlung-aortenwurzelersatz-marfan
InstanceOf: MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes
Usage: #example
Title: "Beispiel Aortenwurzelersatz bei Marfan-Syndrom"
Description: "Beispiel einer nicht-medikamentösen Therapieempfehlung für Aortenwurzelersatz bei Marfan-Syndrom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes)
* status = #active
* intent = #proposal
* priority = #routine
* category[MVGenomSeqTherapieStrategie].coding = MII_CS_Seltene_TherapieempfehlungStrategie#prophylactic "Prophylaxe"
* category[MVGenomSeqTherapieTyp].coding = MII_CS_Seltene_TherapieempfehlungTyp#symptomatic "Symptomatisch"
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].code = #5-354.0a
* code.coding[ops].display = "Andere Operationen an Herzklappen: Aortenklappe: Rekonstruktion der Aortenwurzel mit Implantation einer Gefäßprothese nach David"
* code.coding[snomed] = http://snomed.info/sct#428179006 "Replacement of aortic root"
* code.text = "Composite-Graft-Implantation (David-OP)"
* subject = Reference(mii-exa-seltene-patient-marfan-001)
* occurrenceDateTime = "2025-03-15"
* authoredOn = "2024-12-15"
* reasonReference = Reference(Condition/mii-exa-seltene-condition-marfan-clinical)
* reasonReference.display = "Progrediente Aortenwurzeldilatation bei Marfan-Syndrom"
* note.text = "Geplanter elektiver Eingriff bei progredienter Aortenwurzeldilatation (48mm) zur Prävention einer Aortendissektion"

// Example: Physiotherapie bei SMA

Instance: mii-exa-seltene-therapieempfehlung-physiotherapie-sma
InstanceOf: MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes
Usage: #example
Title: "Beispiel Physiotherapie bei SMA"
Description: "Beispiel einer nicht-medikamentösen Therapieempfehlung für Physiotherapie bei Spinaler Muskelatrophie"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes)
* status = #active
* intent = #proposal
* priority = #routine
* category[MVGenomSeqTherapieStrategie].coding = MII_CS_Seltene_TherapieempfehlungStrategie#other "Sonstige"
* category[MVGenomSeqTherapieTyp].coding = MII_CS_Seltene_TherapieempfehlungTyp#symptomatic "Symptomatisch"
* code.coding[snomed] = http://snomed.info/sct#91251008 "Physical therapy procedure"
* code.text = "Physiotherapie zur Erhaltung der motorischen Funktionen"
* subject = Reference(mii-exa-seltene-patient-sma-001)
* occurrenceTiming.repeat.frequency = 2
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #wk
* authoredOn = "2024-07-29"
* reasonReference = Reference(Condition/mii-exa-seltene-condition-sma-genetic)
* reasonReference.display = "Infantile Spinale Muskelatrophie Typ 1"
* note.text = "Regelmäßige Physiotherapie 2x wöchentlich zur Kontrakturprophylaxe und Erhaltung der Restfunktion"

// Example: Genetische Beratung

Instance: mii-exa-seltene-therapieempfehlung-genetische-beratung
InstanceOf: MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes
Usage: #example
Title: "Beispiel Genetische Beratung"
Description: "Beispiel einer nicht-medikamentösen Therapieempfehlung für genetische Beratung"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes)
* status = #active
* intent = #proposal
* priority = #routine
* category[MVGenomSeqTherapieStrategie].coding = MII_CS_Seltene_TherapieempfehlungStrategie#other "Sonstige"
* category[MVGenomSeqTherapieTyp].coding = MII_CS_Seltene_TherapieempfehlungTyp#symptomatic "Symptomatisch"
* code.coding[snomed] = http://snomed.info/sct#409063005 "Counseling"
* code.text = "Humangenetische Beratung"
* subject = Reference(mii-exa-seltene-patient)
* authoredOn = "2024-11-01"
* reasonCode.coding = http://snomed.info/sct#429962007 "Family history of hereditary disease"
* note.text = "Beratung bezüglich Vererbungsmodus und Wiederholungsrisiko"
