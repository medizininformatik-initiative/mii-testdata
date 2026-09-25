// Patient-1
Instance: mii-exa-test-data-patient-1-substance-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Description: "Substance: Edetic acid"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|1.0.8"
* category = $substance-category#chemical "Chemical"
* code = $sct#69519002 "Edetic acid (substance)"
* ingredient.quantity.numerator = 1.8 'mg' "mg"
* ingredient.quantity.denominator = 1 'mL' "mL"
* ingredient.substanceCodeableConcept = $sct#69519002 "Edetic acid (substance)"

// Zellkulturmedium der Organoid-Kultur von Biobank-Patient 3.
// Dient als Specimen.extension:focus-Ziel fuer Proben, die nicht direkt
// am Patienten, sondern an der Kultur gewonnen wurden.
Instance: mii-exa-test-data-biobank-substance-kulturmedium-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Description: "Substance: Zellkulturmedium der Organoid-Kultur"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* category = $substance-category#biological "Biological Substance"
* code = $sct#421955000 "Culture medium"
* description = "Organoid-Kulturmedium mit Matrigel"