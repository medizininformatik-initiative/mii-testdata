RuleSet: AddTNMSymbol(code, value, version, date, subject, diagnosis)
* subject = Reference({subject})
* focus = Reference({diagnosis})
* effectiveDateTime = "{date}"
* status = $observation-status#final
* method.coding = $tnm-version#{version}
* code.coding = $sct#{coding}
* valueCodeableConcept = $