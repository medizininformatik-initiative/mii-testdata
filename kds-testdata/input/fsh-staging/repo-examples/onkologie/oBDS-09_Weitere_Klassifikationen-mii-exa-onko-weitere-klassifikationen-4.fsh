Instance: mii-exa-onko-weitere-klassifikationen-4
InstanceOf: mii-pr-onko-weitere-klassifikationen
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen)
* status = #final
* code.text = "BINET Klassifikation für chronische lymphatische Leukämie"
* subject = Reference(Patient/example)  
* focus = Reference(Condition/primaertumor-example) // Should reference CLL diagnosis (C91.1)
* effectiveDateTime = "2024-01-13"
* valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds"
* valueCodeableConcept.coding.code = #binet-b
* valueCodeableConcept.text = "BINET B - Intermediäres Stadium mit Lymphknotenvergrößerung oder Organomegalie"
* note.text = "BINET-Klassifikation wird spezifisch für chronische lymphatische Leukämie (CLL, ICD-10: C91.1) verwendet. Stadium B indiziert Lymphknotenvergrößerung in ≥3 Regionen oder Splenomegalie/Hepatomegalie ohne Anämie oder Thrombozytopenie."
