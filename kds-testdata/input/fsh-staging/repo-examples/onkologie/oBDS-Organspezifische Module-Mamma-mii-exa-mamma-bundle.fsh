Instance: mii-exa-onko-mamma-bundle-patient
InstanceOf: Patient
Usage: #example
* name.given = "Martha"
* name.family = "MammaCa"

Instance: mii-exa-onko-mamma-bundle-encounter
InstanceOf: Encounter
Usage: #example  
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-onko-mamma-bundle-patient)

Instance: mii-exa-onko-mamma-diagnose
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
* category[onkologie] = http://snomed.info/sct#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[icd10-gm] = http://fhir.de/CodeSystem/bfarm/icd-10-gm#C50.3 "Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse"
* code.coding[icd10-gm].version = "2024"
* subject = Reference(mii-exa-onko-mamma-bundle-patient)
* recordedDate = "2024-01-02"
* extension[Feststellungsdatum].valueDateTime = "2020-03-07"

//=========================
// Transaction Bundle
//=========================

Instance: mii-exa-onko-mamma-example-bundle-1
InstanceOf: Bundle
Usage: #example
Title: "MII EXA Onko Mamma Bundle"
Description: "Beispiel-Bundle für Mamma-Karzinom mit allen spezifischen Profilen"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Bundle"

* identifier.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
* identifier.value = "mamma-example-bundle-2024-001"

* type = #transaction
* timestamp = "2024-03-25T10:00:00+01:00"

// Core Resources
* entry[0].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-mamma-bundle-patient"
* entry[=].resource = mii-exa-onko-mamma-bundle-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-mamma-diagnose"
* entry[=].resource = mii-exa-onko-mamma-diagnose
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-mamma-bundle-encounter"
* entry[=].resource = mii-exa-onko-mamma-bundle-encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

// Menopause status
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-mamma-menopause-status-1"
* entry[=].resource = mii-exa-onko-mamma-menopause-status-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Estrogen receptor status
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-mamma-rezeptorstatus-estrogen-1"
* entry[=].resource = mii-exa-onko-mamma-rezeptorstatus-estrogen-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Progesteron receptor status
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-mamma-rezeptorstatus-progesteron-1"
* entry[=].resource = mii-exa-onko-mamma-rezeptorstatus-progesteron-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Tumor size
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-mamma-tumorgroesse-1"
* entry[=].resource = mii-exa-onko-mamma-tumorgroesse-1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Preoperative marking
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-mamma-praeoperative-markierung-1"
* entry[=].resource = mii-exa-onko-mamma-praeoperative-markierung-1
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"


//=========================
// Mamma-Specific Examples
//=========================

Instance: mii-exa-onko-mamma-menopause-status-1
InstanceOf: MII_PR_Onko_Mamma_Menopausenstatus
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-menopause-status)
* status = #final
* code.coding = http://snomed.info/sct#161712005 "Menopause, function (observable entity)"
* subject = Reference(mii-exa-onko-mamma-bundle-patient)
* focus = Reference(Condition/mii-exa-onko-mamma-diagnose)
* valueCodeableConcept.coding = http://snomed.info/sct#22636003 "Premenopausal state (finding)"

Instance: mii-exa-onko-mamma-rezeptorstatus-estrogen-1
InstanceOf: MII_PR_Onko_Mamma_Rezeptorstatus_Estrogen
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-estrogen)
* status = #final
* subject = Reference(mii-exa-onko-mamma-bundle-patient)
* focus = Reference(Condition/mii-exa-onko-mamma-diagnose)
* code.coding = http://loinc.org#40556-3 "Estrogen receptor Ag [Presence] in Tissue by Immune stain" 
* valueCodeableConcept.coding = http://loinc.org#LA6576-8 "Positive"
* component[AnteilPositiveZellen].valueQuantity.value = 5
* component[AnteilPositiveZellen].valueQuantity.unit = "%"
* component[AnteilPositiveZellen].valueQuantity.system = "http://unitsofmeasure.org"
* component[Faerbeintensitaet].valueCodeableConcept.coding = http://loinc.org#LA13034-6 "Weak"

Instance: mii-exa-onko-mamma-rezeptorstatus-progesteron-1
InstanceOf: MII_PR_Onko_Mamma_Rezeptorstatus_Progesteron
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-progesteron)
* status = #final
* code.coding = http://loinc.org#85339-0 "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* subject = Reference(mii-exa-onko-mamma-bundle-patient)
* focus = Reference(Condition/mii-exa-onko-mamma-diagnose)
* valueCodeableConcept.coding[DefinitionOBDS] = http://loinc.org#LA6576-8 "Positive"
* component[AnteilPositiveZellen].valueQuantity.value = 25
* component[AnteilPositiveZellen].valueQuantity.unit = "%"
* component[AnteilPositiveZellen].valueQuantity.system = "http://unitsofmeasure.org"
* component[Faerbeintensitaet].valueCodeableConcept.coding = http://loinc.org#LA13034-6 "Weak"

Instance: mii-exa-onko-mamma-praeoperative-markierung-1
InstanceOf: MII_PR_Onko_Mamma_Praeoperative_Markierung
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-praeoperative-markierung)
* status = #completed
* category = http://snomed.info/sct#103693007 "Diagnostic procedure (procedure)"
* code.coding = http://snomed.info/sct#433222002 "Insertion of guide wire into breast using ultrasound guidance (procedure)"
* subject = Reference(mii-exa-onko-mamma-bundle-patient)
* reasonReference = Reference(Condition/mii-exa-onko-mamma-diagnose)
* performedDateTime = "2024-01-15T09:00:00+01:00"

Instance: mii-exa-onko-mamma-tumorgroesse-1
InstanceOf: MII_PR_Onko_Tumorgroesse
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorgroesse)
* status = #final
* code.coding[loinc] = http://loinc.org#21889-1 "Size Tumor"
* code.coding[snomed] = http://snomed.info/sct#371479009 "Tumor size, largest dimension (observable entity)"
* subject = Reference(mii-exa-onko-mamma-bundle-patient)
* focus = Reference(Condition/mii-exa-onko-mamma-diagnose)
* valueQuantity.value = 25
* valueQuantity.unit = "mm"
* valueQuantity.system = "http://unitsofmeasure.org"
* effectiveDateTime = "2024-01-02T10:00:00Z"
* bodySite = http://snomed.info/sct#110494001 "Structure of upper inner quadrant of right breast (body structure)"
