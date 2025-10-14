Instance: mii-exa-test-data-onko-mamma-fall
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 1"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_ONKO_000001, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-onko-mamma, 0100)
