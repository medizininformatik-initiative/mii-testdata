// Patient-3

Instance: mii-exa-test-data-patient-3-molgen-family-member-history-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/familienanamnese|1.0.0"
* status = #completed
* patient = Reference(mii-exa-test-data-patient-3)
* date = "2022-04-07"
* relationship.coding[snomed] = $sct#72705000 "Mother (person)"
* relationship.coding[v3-RoleCode] = $v3-RoleCode#MTH "mother"
* sex.coding[0] = $administrative-gender#female
* sex.coding[+] = $sct#248152002 "Female (finding)"
* deceasedBoolean = true
* reasonCode.coding[sct] = $sct#447886005 "Adenocarcinoma of anorectum (disorder)"
* condition[0].code.coding[sct] = $sct#830150003 "Malignant melanoma with B-Raf proto-oncogene, serine/threonine kinase V600E mutation (disorder)"
* condition[=].contributedToDeath = true