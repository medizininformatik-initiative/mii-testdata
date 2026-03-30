// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-family-member-history-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese
Usage: #example
Description: "FamilyMemberHistory: Familienanamnese fuer BRAF-Mutation"
* insert TestDataLabel
* status = #completed
* patient = Reference(mii-exa-test-data-molgen-patient-1)
* date = "2022-04-07"
* relationship.coding[snomed] = $sct#72705000 "Mother (person)"
* relationship.coding[v3-RoleCode] = $v3-RoleCode#MTH "mother"
* sex.coding[0] = $administrative-gender#female
* sex.coding[+] = $sct#248152002 "Female (finding)"
* deceasedBoolean = true
* reasonCode.coding[sct] = $sct#447886005 "Adenocarcinoma of anorectum (disorder)"
* reasonCode.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* reasonCode.coding[icd10-gm].version = "2022"
* reasonCode.coding[icd10-gm].code = #C21.8
* reasonCode.coding[icd10-gm].display = "Bösartige Neubildung: Rektum, Anus und Analkanal, mehrere Teilbereiche überlappend"
* reasonReference = Reference(mii-exa-test-data-patient-3-diagnose-1)
* condition[0].code.coding[sct] = $sct#830150003 "Malignant melanoma with B-Raf proto-oncogene, serine/threonine kinase V600E mutation (disorder)"
* condition[0].code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* condition[0].code.coding[icd10-gm].version = "2022"
* condition[0].code.coding[icd10-gm].code = #C43.9
* condition[0].code.coding[icd10-gm].display = "Bösartiges Melanom der Haut, nicht näher bezeichnet"
* condition[=].contributedToDeath = true

// Patient-4
Instance: mii-exa-test-data-patient-4-molgen-family-member-history-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese
Usage: #example
Description: "FamilyMemberHistory: Familienanamnese fuer Magenkarzinom"
* insert TestDataLabel
* status = #completed
* patient = Reference(mii-exa-test-data-molgen-patient-2)
* date = "2022-11-30"
* relationship.coding[snomed] = $sct#72705000 "Mother (person)"
* relationship.coding[v3-RoleCode] = $v3-RoleCode#MTH "mother"
* sex.coding[0] = $administrative-gender#female
* sex.coding[+] = $sct#248152002 "Female (finding)"
* deceasedBoolean = true
* reasonCode.coding[sct] = $sct#443961001 "Malignant adenomatous neoplasm (disorder)"
* reasonCode.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* reasonCode.coding[icd10-gm].version = "2022"
* reasonCode.coding[icd10-gm].code = #C16.9
* reasonCode.coding[icd10-gm].display = "Bösartige Neubildung: Magen, nicht näher bezeichnet"
* condition[0].code.coding[sct] = $sct#254837009 "Malignant neoplasm of breast (disorder)"
* condition[0].code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* condition[0].code.coding[icd10-gm].version = "2022"
* condition[0].code.coding[icd10-gm].code = #C50.9
* condition[0].code.coding[icd10-gm].display = "Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet"
* condition[=].contributedToDeath = true
