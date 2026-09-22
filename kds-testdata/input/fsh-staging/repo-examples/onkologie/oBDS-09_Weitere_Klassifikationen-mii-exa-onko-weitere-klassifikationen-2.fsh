Instance: mii-exa-onko-weitere-klassifikationen-2
InstanceOf: mii-pr-onko-weitere-klassifikationen
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen)
* status = #final
* code = http://snomed.info/sct#254372002 "Ann Arbor lymphoma staging system"
* code.text = "Ann Arbor Klassifikation"
* method = http://snomed.info/sct#254373007 "Ann Arbor Hodgkin's disease tumor staging system"
* subject = Reference(Patient/example)
* focus = Reference(Condition/primaertumor-example)
* effectiveDateTime = "2024-01-12"
* valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds"
* valueCodeableConcept.coding.code = #ann-arbor-iiix
* valueCodeableConcept.text = "Ann Arbor Stadium IIIX"
