// Prozedur Patient-1
Instance: mii-exa-test-data-patient-1-prozedur-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure|2024.0.0"
* insert AddProzedur(completed, 387713003, 726427004, 2023, 5-323.51, mii-exa-test-data-patient-1, 44714003, Exzision und Resektion an Lunge)
* performedPeriod.start = "2024-02-20T10:14:00+01:00"
* performedPeriod.end = "2024-02-20T12:47:00+01:00"
* extension[Dokumentationsdatum].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* extension[Dokumentationsdatum].valueDateTime = "2024-02-20T16:15:00+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)

Instance: mii-exa-test-data-patient-1-prozedur-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure|2024.0.0"
* insert AddProzedur(completed, 18629005, 281790008, 2023, 6-00g.33, mii-exa-test-data-patient-1, 789218009, Dalbavancin parenteral)
* performedPeriod.start = "2024-02-16T10:20:00.000+01:00"
* performedPeriod.end = "2024-02-16T10:50:00.000+01:00"
* extension[durchfuehrungsabsicht].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht"
* extension[durchfuehrungsabsicht].valueCoding = $sct#262202000
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)