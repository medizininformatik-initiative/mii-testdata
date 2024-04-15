RuleSet: AddDiagnose(codeCodingCode, codeCodingVersion, subject, recordedDate, noteText)
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
//* category[todesDiagnose].coding[snomed] = $sct#16100001
//* category[todesDiagnose].coding[loinc] = $loinc#79378-6
* code.coding[icd10-gm] = $icd-10-gm#{codeCodingCode}
* code.coding[icd10-gm].version = "{codeCodingVersion}"
//* bodySite.coding[snomed-ct] = $sct#{bodySiteCodingCodeSnomed}
* subject = Reference({subject})
* recordedDate = "{recordedDate}"
* note.text = "{noteText}"