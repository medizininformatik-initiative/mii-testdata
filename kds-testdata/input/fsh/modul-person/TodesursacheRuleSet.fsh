RuleSet: AddTodesursache(codeCodingCode, codeCodingVersion, subject, recordedDate, noteText)
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#confirmed
//* category[todesDiagnose].coding[snomed] = $sct#16100001
//* category[todesDiagnose].coding[loinc] = $loinc#79378-6
* code.coding[icd10-who] = $icd-10#{codeCodingCode}
* code.coding[icd10-who].version = "{codeCodingVersion}"
* subject = Reference({subject})
* recordedDate = "{recordedDate}"
* note.text = "{noteText}"