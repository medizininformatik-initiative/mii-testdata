Instance: MTBChemo1Procedure
InstanceOf: MII_PR_MTB_Systemische_Vortherapie
Usage: #example
Description: "Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28; Sechs Zyklen ab 04.01.2023"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie)
* extension[Intention].valueCodeableConcept.coding[0] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#K
* status = #completed
* category.coding[sct] = http://snomed.info/sct#277132007 // Therapeutic procedure | alternativ 18629005 Administration of medicine?
* code.coding[sct] = http://snomed.info/sct#367336001 // Chemotherapy
* code.coding[systemische_therapie_art] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ#CH // Chemotherapy
* subject = Reference(Patient/PatientKimMusterperson)
* performedPeriod.start = "2023-01-04"
* performedPeriod.end = "2023-05-24"
* outcome.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund#W
* outcome.text = "Reguläres Ende mit Substanzwechsel"

// 04.01.2023 Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28

Instance: MTBChemo1MedicationStatement1
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = #completed
* medicationCodeableConcept.text = "Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-01-04"

Instance: MTBChemo1MedicationStatement1-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z1 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-01-04", MTBChemo1Procedure, MTBChemo1MedicationStatement1, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement1-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z1 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-01-04", MTBChemo1Procedure, MTBChemo1MedicationStatement1, #L01DB01, 30, "mg/m2", #mg/m2)

// 01.02.2023 Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28

Instance: MTBChemo1MedicationStatement2
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = #completed
* medicationCodeableConcept.text = "Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-02-01"

Instance: MTBChemo1MedicationStatement2-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z2 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-02-01", MTBChemo1Procedure, MTBChemo1MedicationStatement2, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement2-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z2 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-02-01", MTBChemo1Procedure, MTBChemo1MedicationStatement2, #L01DB01, 30, "mg/m2", #mg/m2)

// 01.03.2023 Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28

Instance: MTBChemo1MedicationStatement3
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = #completed
* medicationCodeableConcept.text = "Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-03-01"

Instance: MTBChemo1MedicationStatement3-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z3 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-03-01", MTBChemo1Procedure, MTBChemo1MedicationStatement3, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement3-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z3 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-03-01", MTBChemo1Procedure, MTBChemo1MedicationStatement3, #L01DB01, 30, "mg/m2", #mg/m2)

// 29.03.2023 Z4 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28

Instance: MTBChemo1MedicationStatement4
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = #completed
* medicationCodeableConcept.text = "Z4 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-03-29"

Instance: MTBChemo1MedicationStatement4-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z4 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-03-29", MTBChemo1Procedure, MTBChemo1MedicationStatement4, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement4-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z4 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-03-29", MTBChemo1Procedure, MTBChemo1MedicationStatement4, #L01DB01, 30, "mg/m2", #mg/m2)

// 26.04.2023 Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28

Instance: MTBChemo1MedicationStatement5
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = #completed
* medicationCodeableConcept.text = "Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-04-26"

Instance: MTBChemo1MedicationStatement5-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z5 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-04-26", MTBChemo1Procedure, MTBChemo1MedicationStatement5, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement5-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z5 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-04-26", MTBChemo1Procedure, MTBChemo1MedicationStatement5, #L01DB01, 30, "mg/m2", #mg/m2)

// 24.05.2023 Z6 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28

Instance: MTBChemo1MedicationStatement6
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo1Procedure)
* status = #completed
* medicationCodeableConcept.text = "Z6 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-05-24"

Instance: MTBChemo1MedicationStatement6-1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z6 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-05-24", MTBChemo1Procedure, MTBChemo1MedicationStatement6, #L01XA02, 5, "AUC", #mg.min/ml)

Instance: MTBChemo1MedicationStatement6-2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
* insert SystemTherapyMedicationStatement("Z6 Carboplatin AUC5 d1\, pegliposomales Doxorubicin 30 mg/m2 d1",
"2023-05-24", MTBChemo1Procedure, MTBChemo1MedicationStatement6, #L01DB01, 30, "mg/m2", #mg/m2)

// MedicationStatements Mirvetuximab soravtansine ---------------------------------------------------------------------
// DAS entsteht quasi erst im DIZ, Muss / Kann Followup hierauf zeigen? Zei

Instance: MTBChemo2Procedure
InstanceOf: MII_PR_MTB_Systemische_Vortherapie
Usage: #example
Description: "Mirvetuximab soravtansine 6mg/kg KG, Wdh d22; Sechs Zyklen ab 24.06.2023"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie)
* extension[Intention].valueCodeableConcept.coding[0] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#K
* basedOn[tumorkonferenz] = Reference(mii-exa-mtb-kim-musterperson-therapieplan)
* status = #completed
* category.coding[sct] = http://snomed.info/sct#277132007 // Therapeutic procedure | alternativ 18629005 Administration of medicine?
* code.coding[sct] = http://snomed.info/sct#367336001 // Chemotherapy
* code.coding[systemische_therapie_art] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ#CH // Chemotherapy
* subject = Reference(Patient/PatientKimMusterperson)
* performedPeriod.start = "2023-06-24"
* performedPeriod.end = "2023-10-12"
* outcome.coding[+] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund#E
* outcome.text = "Reguläres Ende"



// 24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22

Instance: MTBChemo2MedicationStatement1
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[+] = http://fdasis.nlm.nih.gov#98DE7VN88D "MIRVETUXIMAB SORAVTANSINE"
* medicationCodeableConcept.coding[atcClassDe] = http://fhir.de/CodeSystem/bfarm/atc#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-06-24"
* note.text = "Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.timing.event = "2023-06-24"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = http://unitsofmeasure.org

// 16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22

Instance: MTBChemo2MedicationStatement2
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[+] = http://fdasis.nlm.nih.gov#98DE7VN88D "MIRVETUXIMAB SORAVTANSINE"
* medicationCodeableConcept.coding[atcClassDe] = http://fhir.de/CodeSystem/bfarm/atc#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-07-16"
* note.text = "Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.timing.event = "2023-07-16"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = http://unitsofmeasure.org

// 07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22

Instance: MTBChemo2MedicationStatement3
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[+] = http://fdasis.nlm.nih.gov#98DE7VN88D "MIRVETUXIMAB SORAVTANSINE"
* medicationCodeableConcept.coding[atcClassDe] = http://fhir.de/CodeSystem/bfarm/atc#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-08-07"
* note.text = "Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.timing.event = "2023-08-07"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = http://unitsofmeasure.org

// 29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22

Instance: MTBChemo2MedicationStatement4
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[+] = http://fdasis.nlm.nih.gov#98DE7VN88D "MIRVETUXIMAB SORAVTANSINE"
* medicationCodeableConcept.coding[atcClassDe] = http://fhir.de/CodeSystem/bfarm/atc#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-08-29"
* note.text = "Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.timing.event = "2023-08-29"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = http://unitsofmeasure.org

// 20.09.2023 Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22

Instance: MTBChemo2MedicationStatement5
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[+] = http://fdasis.nlm.nih.gov#98DE7VN88D "MIRVETUXIMAB SORAVTANSINE"
* medicationCodeableConcept.coding[atcClassDe] = http://fhir.de/CodeSystem/bfarm/atc#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-09-20"
* note.text = "Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.timing.event = "2023-09-20"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = http://unitsofmeasure.org

// 12.10.2023 Z6 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22

Instance: MTBChemo2MedicationStatement6
InstanceOf: MII_PR_Medikation_MedicationStatement
Usage: #example
* partOf[+] = Reference(Procedure/MTBChemo2Procedure)
* status = #completed
* basedOn = Reference(MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab)
* medicationCodeableConcept.coding[+] = http://fdasis.nlm.nih.gov#98DE7VN88D "MIRVETUXIMAB SORAVTANSINE"
* medicationCodeableConcept.coding[atcClassDe] = http://fhir.de/CodeSystem/bfarm/atc#L01FX26 "Mirvetuximab soravtansin"
* medicationCodeableConcept.coding[atcClassDe].version = "2025"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = "2023-10-12"
* note.text = "Z6 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
* dosage.timing.event = "2023-10-12"
* dosage.doseAndRate.doseQuantity.value = 6
* dosage.doseAndRate.doseQuantity.unit = "mg/kg KG"
* dosage.doseAndRate.doseQuantity.code = #mg/kg{KG}
* dosage.doseAndRate.doseQuantity.system = http://unitsofmeasure.org
