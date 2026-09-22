Instance: mii-exa-patho-left-breast-body-structure
InstanceOf: BodyStructure
Usage: #example
* active = true
* patient = Reference(mii-exa-patho-patient-34545)
* morphology = http://snomed.info/sct#82711006 "Infiltrating duct carcinoma"
* morphology.text = "Bioptisch gesichertes invasives Karzinom"
* location = http://snomed.info/sct#110502005 "Lower outer quadrant of left breast"
* locationQualifier = http://snomed.info/sct#7771000 "Left"
* description = "5 x 3 x 3 cm, eine Draht- und eine Fadenmarkierung"
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure"
* extension.extension[0].url = "structure"
* extension.extension[=].valueCodeableConcept = http://snomed.info/sct#110502005 "Lower outer quadrant of left breast"
* extension.extension[+].url = "laterality"
* extension.extension[=].valueCodeableConcept = http://snomed.info/sct#7771000 "Left"
* extension.extension[+].url = "bodyLandmarkOrientation"
* extension.extension[=].extension[0].url = "landmarkDescription"
* extension.extension[=].extension[=].valueCodeableConcept = http://snomed.info/sct#24142002 "Nipple structure"
* extension.extension[=].extension[+].url = "clockFacePosition"
* extension.extension[=].extension[=].valueCodeableConcept = http://snomed.info/sct#260335000 "5 o'clock position"
* extension.extension[=].extension[+].url = "surfaceOrientation"
* extension.extension[=].extension[=].valueCodeableConcept = http://snomed.info/sct#46053002 "Distal"
* extension.extension[=].extension[+].url = "distanceFromLandmark"
* extension.extension[=].extension[=].extension.url = "value"
* extension.extension[=].extension[=].extension.valueQuantity = 50 'mm' "mm"