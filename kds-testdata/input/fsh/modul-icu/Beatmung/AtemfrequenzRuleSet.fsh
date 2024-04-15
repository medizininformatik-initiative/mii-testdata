RuleSet: AddAtemfrequenz(subject, valueQuantityValue)
* status = #final
* category[vs-cat] = $observation-category#vital-signs
* code.coding[sct] = $sct#86290005 "Respiratory rate (observable entity)"
* code.coding[loinc] = $loinc#9279-1 "Respiratory Rate"
* subject = Reference({subject})
* valueQuantity = {valueQuantityValue} $ucum#/min "per minute"