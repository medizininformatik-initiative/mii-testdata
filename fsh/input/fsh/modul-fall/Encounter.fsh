// Encounter Patient-1
Instance: mii-exa-test-data-patient-1-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
* insert AddEncounter(MII_0000001, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-1, 0100)
* period.start = "2024-02-14"
* period.end = "2024-02-22"
* diagnosis[0].condition = Reference(mii-exa-test-data-patient-1-diagnose-1)
* diagnosis[0].use = $diagnosis-role#AD "Admission diagnosis"
* diagnosis[0].rank = 1
* diagnosis[1].condition = Reference(mii-exa-test-data-todesursache-1)
* diagnosis[1].use = $diagnosis-role#DD "Discharge diagnosis"
* diagnosis[1].rank = 2
* hospitalization.admitSource = $Aufnahmeanlass#E "Einweisung durch einen Arzt"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#07 "Tod"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#9 "keine Angabe"
* location[Zimmer].location.identifier.system = "https://www.charite.de/fhir/sid/Zimmernummern"
* location[Zimmer].location.identifier.value = "RHC-06-210b"
* location[Zimmer].location.display = "RHC-06-210b"
* location[Zimmer].physicalType = $location-physical-type#ro
* location[Bett].location.identifier.system = "https://www.charite.de/fhir/sid/Bettennummern"
* location[Bett].location.identifier.value = "RHC-06-210b-02"
* location[Bett].location.display = "RHC-06-210b-02"
* location[Bett].physicalType = $location-physical-type#bd
* location[Station].location.identifier.system = "https://www.charite.de/fhir/sid/Stationsnummern"
* location[Station].location.identifier.value = "RHC-06"
* location[Station].location.display = "RHC-06"
* location[Station].physicalType = $location-physical-type#wa
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* serviceProvider.identifier.value = "Charité"
* serviceProvider.display = "Charité – Universitätsmedizin Berlin"

Instance: mii-exa-test-data-patient-1-encounter-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
* insert AddEncounter(MII_0000002, finished, IMP, versorgungsstellenkontakt, operation, mii-exa-test-data-patient-1, 2000)
* period.start = "2024-02-20T10:00:00+01:00"
* period.end = "2024-02-20T13:00:00+01:00"
* partOf = Reference(mii-exa-test-data-patient-1-encounter-1)