Instance: mii-exa-patho-prostate-body-structure
InstanceOf: BodyStructure
Usage: #example
* active = true
* patient = Reference(mii-exa-patho-patient-12345)
* location = http://snomed.info/sct#717007000 "Apical peripheral zone of prostate"
* locationQualifier = http://snomed.info/sct#24028007 "Right"
* description = "Rechte apikale periphere Zone der Prostata, posterior, 15 mm proximal des Apex"
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure"
* extension.extension[0].url = "structure"
* extension.extension[=].valueCodeableConcept = http://snomed.info/sct#717007000 "Apical peripheral zone of prostate"
* extension.extension[+].url = "laterality"
* extension.extension[=].valueCodeableConcept = http://snomed.info/sct#24028007 "Right"
* extension.extension[+].url = "bodyLandmarkOrientation"
* extension.extension[=].extension[0].url = "landmarkDescription"
* extension.extension[=].extension[=].valueCodeableConcept = http://snomed.info/sct#68756004 "Structure of apex of prostate"
* extension.extension[=].extension[+].url = "surfaceOrientation"
* extension.extension[=].extension[=].valueCodeableConcept = http://snomed.info/sct#255551008 "Posterior"
* extension.extension[=].extension[+].url = "distanceFromLandmark"
* extension.extension[=].extension[=].extension.url = "value"
* extension.extension[=].extension[=].extension.valueQuantity = 15 'mm' "mm"