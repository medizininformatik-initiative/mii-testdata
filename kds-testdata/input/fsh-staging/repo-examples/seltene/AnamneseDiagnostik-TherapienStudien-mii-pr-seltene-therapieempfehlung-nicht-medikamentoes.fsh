Instance: mii-exa-seltene-example-early-detection-recommendation
InstanceOf: MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes
Usage: #example
Title: "Beispiel Früherkennungsprogramm-Empfehlung"
Description: "Beispiel einer Empfehlung für regelmäßige Früherkennungsuntersuchungen"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes)
* status = #draft
* intent = #proposal
* priority = #routine
* category[MVGenomSeqTherapieStrategie].coding = MII_CS_Seltene_TherapieempfehlungStrategie#early-detection "Früherkennung"
* category[MVGenomSeqTherapieTyp].coding = MII_CS_Seltene_TherapieempfehlungTyp#symptomatic "Symptomatisch"
* code.coding[snomed] = http://snomed.info/sct#312851005 "Screening for disorder"
* code.text = "Jährliche kardiologische Kontrolle bei Marfan-Syndrom"
* subject = Reference(Patient/mii-exa-seltene-patient-marfan-001)
// * requester = Reference(Practitioner/example) // Optional field, not required in MII
* reasonReference = Reference(Condition/mii-exa-seltene-condition-marfan-clinical)
* note.text = "Jährliche Echokardiographie zur Früherkennung von Aortenwurzeldilatation empfohlen"

// PKU Condition Example for Nutrition Therapy

Instance: mii-exa-seltene-condition-pku-diagnosis
InstanceOf: MII_PR_Seltene_GeneticDiagnosis
Usage: #example
Title: "Phenylketonurie - Genetische Diagnose"
Description: "Genetisch bestätigte Phenylketonurie (PKU)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-genetic-diagnosis)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* category = http://snomed.info/sct#782964007 "Genetic disease"
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#E70.0 "Klassische Phenylketonurie"
* code.coding[icd10-gm].version = "2024"
* code.coding[orphanet] = http://www.orpha.net#716 "Phenylketonuria"
* code.coding[sct] = http://snomed.info/sct#7573000 "Classical phenylketonuria"
* code.coding[+] = http://omim.org#261600 "Phenylketonuria"
* code.text = "Phenylketonurie"
* subject = Reference(mii-exa-seltene-patient)
* recordedDate = "2024-01-01"
* evidence[+].code.coding = http://loinc.org#81247-9 "Master HL7 genetic variant reporting panel"
* evidence[=].code.text = "PAH-Gen Mutation c.1222C>T (p.R408W)"
* evidence[=].detail = Reference(Observation/mii-exa-seltene-molgen-variant-pah-pku)
* note.text = "Klassische PKU mit PAH-Gen Mutation c.1222C>T, erfordert lebenslange phenylalaninarme Diät"

// Example Instance for Nutrition Therapy

Instance: mii-exa-seltene-example-nutrition-therapy-recommendation
InstanceOf: MII_PR_Seltene_TherapieempfehlungNichtMedikamentoes
Usage: #example
Title: "Beispiel Ernährungstherapie-Empfehlung"
Description: "Beispiel einer Ernährungstherapie-Empfehlung bei Phenylketonurie"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-seltene/StructureDefinition/mii-pr-seltene-therapieempfehlung-nicht-medikamentoes)
* status = #active
* intent = #proposal
* priority = #routine
* category[MVGenomSeqTherapieStrategie].coding = MII_CS_Seltene_TherapieempfehlungStrategie#nutrition "Ernährungstherapie"
* category[MVGenomSeqTherapieTyp].coding = MII_CS_Seltene_TherapieempfehlungTyp#causal "Kausal"
* code.coding[snomed] = http://snomed.info/sct#61310001 "Nutrition education"
* code.text = "Phenylalaninreduzierte Diät bei Phenylketonurie"
* subject = Reference(mii-exa-seltene-patient)
* occurrencePeriod.start = "2024-01-01"
// * requester = Reference(Practitioner/example) // Optional field, not required in MII
* reasonReference = Reference(Condition/mii-exa-seltene-condition-pku-diagnosis)
* note.text = "Lebenslange phenylalaninarme Diät erforderlich, regelmäßige Kontrolle der Phe-Spiegel"
