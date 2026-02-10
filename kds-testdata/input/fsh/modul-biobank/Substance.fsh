// Patient-1: EDTA (Edetic acid) - already used in patient-1-specimen-1
Instance: mii-exa-test-data-patient-1-substance-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Description: "Substance: Edetic acid"
* insert TestDataLabel
* category = $substance-category#chemical "Chemical"
* code = $sct#69519002 "Edetic acid (substance)"

// Sodium citrate - common anticoagulant for coagulation testing
Instance: mii-exa-test-data-biobank-substance-natriumcitrat
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Description: "Substance: Natriumcitrat (Antikoagulans)"
* insert TestDataLabel
* category = $substance-category#chemical "Chemical"
* code = $sct#412546005 "Sodium citrate (substance)"

// Heparin - common anticoagulant
Instance: mii-exa-test-data-biobank-substance-heparin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Description: "Substance: Heparin (Antikoagulans)"
* insert TestDataLabel
* category = $substance-category#chemical "Chemical"
* code = $sct#96382006 "Heparin (substance)"

// Formaldehyde / Formalin - common fixative for histology
Instance: mii-exa-test-data-biobank-substance-formalin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Description: "Substance: Formalin (Fixierungsmittel)"
* insert TestDataLabel
* category = $substance-category#chemical "Chemical"
* code = $sct#431510009 "Formalin (substance)"

// DMSO - cryopreservation additive
Instance: mii-exa-test-data-biobank-substance-dmso
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Description: "Substance: Dimethylsulfoxid (DMSO, Kryoprotektivum)"
* insert TestDataLabel
* category = $substance-category#chemical "Chemical"
* code = $sct#115535002 "Dimethyl sulfoxide (substance)"
