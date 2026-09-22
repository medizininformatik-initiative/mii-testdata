Instance: mii-exa-onko-allgemeiner-leistungszustand-ecog
InstanceOf: mii-pr-onko-allgemeiner-leistungszustand-ecog
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog)
* status = #final
* code.coding[snomed] = http://snomed.info/sct#423740007
* code.coding[loinc] = http://loinc.org#89262-0
* subject = Reference(Patient/example)

* valueCodeableConcept.coding[obds] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog#2 "Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)"
* valueCodeableConcept.coding[loinc] = http://loinc.org#LA9623-5 "Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work"
// * valueCodeableConcept.coding[loinc] = http://loinc.org#LA9624-8 "Ambulatory and capable of all selfcare but unable to carry out any work activities; up and about more than 50% of waking hours"
