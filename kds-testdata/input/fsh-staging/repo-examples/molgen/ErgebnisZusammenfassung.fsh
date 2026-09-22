Instance: mii-exa-molgen-ergebnis-zusammenfassung-1
InstanceOf: mii-pr-molgen-ergebnis-zusammenfassung
Usage: #example
Title: "Ergebnis Zusammenfassung Befund-1"
Description: "Beispiel zusammenfassendes Ergebnis"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/overall-interpretation"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#51968-6
* subject = Reference(mii-exa-molgen-patient)
* valueCodeableConcept = http://loinc.org#LA6576-8 "Positive"
* component[conclusion-string].valueString = "BRAF p.V600E Mutation liegt vor. Bitte Therapieoption mit einem BRAF-Inhibitor prüfen."

// 04 docx

Instance: mii-exa-molgen-ergebnis-zusammenfassung-trurisk-panel
InstanceOf: mii-pr-molgen-ergebnis-zusammenfassung
Usage: #example
Title: "Ergebnis Zusammenfassung Befund "
Description: "Beispiel zusammenfassendes Ergebnis bei BRCA1 Variante bei Familiärer Belastung für Brust- und Eierstockkrebs"
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/overall-interpretation"
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code = http://loinc.org#51968-6
* subject = Reference(mii-exa-molgen-patient-brca1)
* valueCodeableConcept = http://loinc.org#LA6576-8 "Positive"
* component[conclusion-string].valueString = "Nachweis heterozygoter Sequenzveränderung, die zum Funktionsverlust führt"
*/
