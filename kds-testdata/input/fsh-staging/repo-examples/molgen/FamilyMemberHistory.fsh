Instance: mii-exa-molgen-family-member-history-1
InstanceOf: mii-pr-molgen-familienanamnese
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese)
* status = #completed
* patient = Reference(mii-exa-molgen-patient)
* date = "2022-04-07"
* relationship.coding[snomed] = http://snomed.info/sct#72705000 "Mother (person)"
* relationship.coding[v3-RoleCode] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "mother"
* sex.coding[0] = http://hl7.org/fhir/administrative-gender#female
* sex.coding[+] = http://snomed.info/sct#248152002 "Female (finding)"
* deceasedBoolean = true
* reasonCode.coding[sct] = http://snomed.info/sct#447886005 "Adenocarcinoma of anorectum (disorder)"
* condition[0].code.coding[sct] = http://snomed.info/sct#830150003 "Malignant melanoma with B-Raf proto-oncogene, serine/threonine kinase V600E mutation (disorder)"
* condition[=].contributedToDeath = true

Instance: mii-exa-molgen-family-member-history-2
InstanceOf: mii-pr-molgen-familienanamnese
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese)
* status = #completed
* patient = Reference(mii-exa-molgen-patient)
* date = "2022-11-08"
* relationship.coding[snomed] = http://snomed.info/sct#394858009 "Paternal grandmother (person)"
* relationship.coding[snomed].extension[Verwandtschaftsgrad].valueCoding = http://snomed.info/sct#699110007 "Second degree blood relative (person)"
* relationship.coding[snomed].extension[Verwandtschaftsverhaeltnis].valueCoding = http://snomed.info/sct#17945006 "Natural grandmother (person)"
* relationship.coding[snomed].extension[FamiliareLinie].valueCoding = http://snomed.info/sct#66839005 "Father (person)"
* relationship.coding[v3-RoleCode] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#PGRMTH "paternal grandmother"
* sex.coding[0] = http://hl7.org/fhir/administrative-gender#female
* sex.coding[+] = http://snomed.info/sct#248152002 "Female (finding)"
* deceasedBoolean = true

Instance: mii-exa-molgen-family-member-history-diabetes
InstanceOf: mii-pr-molgen-familienanamnese
Usage: #example
Title: "Family History - Father with Type 2 Diabetes"
Description: "Example of family member history documenting father's Type 2 diabetes mellitus (ICD-10: E11.9)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese)
* status = #completed
* patient = Reference(mii-exa-molgen-patient)
* date = "2024-01-15"
* relationship.coding[snomed] = http://snomed.info/sct#9947008 "Natural father (person)"
* relationship.coding[snomed].extension[Verwandtschaftsgrad].valueCoding = http://snomed.info/sct#125678001 "First degree blood relative (person)"
* relationship.coding[snomed].extension[Verwandtschaftsverhaeltnis].valueCoding = http://snomed.info/sct#13646006 "Natural parent (person)"
* relationship.coding[snomed].extension[FamiliareLinie].valueCoding = http://snomed.info/sct#66839005 "Father (person)"
* relationship.coding[v3-RoleCode] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FTH "father"
* sex.coding[0] = http://hl7.org/fhir/administrative-gender#male
* sex.coding[+] = http://snomed.info/sct#248153007 "Male (finding)"
* deceasedBoolean = false
* ageAge.value = 68
* ageAge.unit = "years"
* ageAge.system = http://unitsofmeasure.org
* ageAge.code = #a
* condition[0].code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* condition[=].code.coding[icd10-gm].version = "2024"
* condition[=].code.coding[icd10-gm].code = #E11.9
* condition[=].code.coding[icd10-gm].display = "Diabetes mellitus, Typ 2: Ohne Komplikationen"
* condition[=].code.coding[sct] = http://snomed.info/sct#44054006 "Diabetes mellitus type 2 (disorder)"
* condition[=].onsetAge.value = 55
* condition[=].onsetAge.unit = "years"
* condition[=].onsetAge.system = http://unitsofmeasure.org
* condition[=].onsetAge.code = #a

Instance: mii-exa-molgen-family-member-history-retinal
InstanceOf: mii-pr-molgen-familienanamnese
Usage: #example
Title: "Family History - Sister with Retinal Disorder"
Description: "Example of family member history documenting sister's retinal disorder (ICD-10: H35.8)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese)
* status = #completed
* patient = Reference(mii-exa-molgen-patient)
* date = "2024-02-20"
* relationship.coding[snomed] = http://snomed.info/sct#73678001 "Natural sister (person)"
* relationship.coding[snomed].extension[Verwandtschaftsgrad].valueCoding = http://snomed.info/sct#125678001 "First degree blood relative (person)"
* relationship.coding[snomed].extension[Verwandtschaftsverhaeltnis].valueCoding = http://snomed.info/sct#73678001 "Natural sister (person)"
* relationship.coding[v3-RoleCode] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#SIS "sister"
* sex.coding[0] = http://hl7.org/fhir/administrative-gender#female
* sex.coding[+] = http://snomed.info/sct#248152002 "Female (finding)"
* deceasedBoolean = false
* ageAge.value = 42
* ageAge.unit = "years"
* ageAge.system = http://unitsofmeasure.org
* ageAge.code = #a
* condition[0].code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* condition[=].code.coding[icd10-gm].version = "2024"
* condition[=].code.coding[icd10-gm].code = #H35.8
* condition[=].code.coding[icd10-gm].display = "Sonstige näher bezeichnete Affektionen der Netzhaut"
* condition[=].code.coding[sct] = http://snomed.info/sct#95695004 "Degeneration of retina"
* condition[=].onsetAge.value = 38
* condition[=].onsetAge.unit = "years"
* condition[=].onsetAge.system = http://unitsofmeasure.org
* condition[=].onsetAge.code = #a
* condition[=].note.text = "Entwicklung einer Makuladegeneration mit progressivem Verlauf"

Instance: mii-exa-molgen-family-member-history-mi
InstanceOf: mii-pr-molgen-familienanamnese
Usage: #example
Title: "Family History - Mother with Myocardial Infarction"
Description: "Example of family member history documenting mother's ST-elevation myocardial infarction (ICD-10: I21.2)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese)
* status = #completed
* patient = Reference(mii-exa-molgen-patient)
* date = "2024-03-10"
* relationship.coding[snomed] = http://snomed.info/sct#72705000 "Mother (person)"
* relationship.coding[snomed].extension[Verwandtschaftsgrad].valueCoding = http://snomed.info/sct#125678001 "First degree blood relative (person)"
* relationship.coding[snomed].extension[Verwandtschaftsverhaeltnis].valueCoding = http://snomed.info/sct#13646006 "Natural parent (person)"
* relationship.coding[snomed].extension[FamiliareLinie].valueCoding = http://snomed.info/sct#72705000 "Mother (person)"
* relationship.coding[v3-RoleCode] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "mother"
* sex.coding[0] = http://hl7.org/fhir/administrative-gender#female
* sex.coding[+] = http://snomed.info/sct#248152002 "Female (finding)"
* deceasedAge.value = 71
* deceasedAge.unit = "years"
* deceasedAge.system = http://unitsofmeasure.org
* deceasedAge.code = #a
* reasonCode.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* reasonCode.coding[icd10-gm].version = "2024"
* reasonCode.coding[icd10-gm].code = #I21.2
* reasonCode.coding[icd10-gm].display = "Akuter transmuraler Myokardinfarkt an sonstigen Lokalisationen"
* reasonCode.coding[sct] = http://snomed.info/sct#401303003 "Acute ST segment elevation myocardial infarction (disorder)"
* condition[0].code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* condition[=].code.coding[icd10-gm].version = "2024"
* condition[=].code.coding[icd10-gm].code = #I21.2
* condition[=].code.coding[icd10-gm].display = "Akuter transmuraler Myokardinfarkt an sonstigen Lokalisationen"
* condition[=].code.coding[sct] = http://snomed.info/sct#401303003 "Acute ST segment elevation myocardial infarction (disorder)"
* condition[=].contributedToDeath = true
* condition[=].onsetAge.value = 70
* condition[=].onsetAge.unit = "years"
* condition[=].onsetAge.system = http://unitsofmeasure.org
* condition[=].onsetAge.code = #a
* condition[=].note.text = "STEMI mit fatalen Komplikationen trotz Akutintervention"
