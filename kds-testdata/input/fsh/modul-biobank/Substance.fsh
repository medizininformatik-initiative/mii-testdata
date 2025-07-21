// Patient-1
Instance: mii-exa-test-data-patient-1-substance-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Description: "Substance: Edetic acid"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|1.0.8"
* category = $substance-category#chemical "Chemical"
* code = $sct#69519002 "Edetic acid (substance)"