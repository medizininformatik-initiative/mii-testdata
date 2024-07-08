Instance: mii-exa-test-data-evidencevariable-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-ein-auschluss-kriterium
* status = #active
* characteristic[0].extension[linkId].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.linkId"
* characteristic[0].extension[linkId].valueId = "mii-exa-test-data-evidencevariable-1-characteristic-1"
* characteristic[0].extension[definitionReference].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-EvidenceVariable.characteristic.definitionReference"
* characteristic[0].extension[definitionReference].valueReference = Reference(mii-exa-test-data-group-1)
* characteristic[0].description = "Example description"
* characteristic[0].definitionCodeableConcept = $sct#116154003 "Patient (person)"
* characteristic[0].exclude = false