RuleSet: AddProzedur(statusCode, categoryCodingCodeSnomed, codeCodingCodeSnomed, codeCodingVersionOps, codeCodingCodeOps, subject, bodySiteCodingCodeSnomed, noteText)
* status = #{statusCode}
* category.coding[sct] = $sct#{categoryCodingCodeSnomed}
* code.coding[sct] = $sct#{codeCodingCodeSnomed}
* code.coding[ops] = $ops|{codeCodingVersionOps}#{codeCodingCodeOps}
* subject = Reference({subject})
* bodySite = $sct#{bodySiteCodingCodeSnomed}
* note.text = "{noteText}"