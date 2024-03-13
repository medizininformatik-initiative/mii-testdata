RuleSet: AddVitalstatus(subject, effectiveDateTime, valueCodeableConceptCodingCode)
* status = #final
* category[survey] = $observation-category#survey
* code = $loinc#67162-8
* subject = Reference({subject})
* effectiveDateTime = "{effectiveDateTime}"
* valueCodeableConcept = $Vitalstatus#{valueCodeableConceptCodingCode}