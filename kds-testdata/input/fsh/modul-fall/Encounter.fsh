// Encounter Patient-1
Instance: mii-exa-test-data-patient-1-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 1"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_0000001, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-1, 0100)
* extension[Aufnahmegrund].extension[ErsteUndZweiteStelle].valueCoding = $AufnahmegrundErsteUndZweiteStelle#01 "Krankenhausbehandlung, vollstationär"
* extension[Aufnahmegrund].extension[DritteStelle].valueCoding = $AufnahmegrundDritteStelle#0 "Anderes"
* extension[Aufnahmegrund].extension[VierteStelle].valueCoding = $AufnahmegrundVierteStelle#1 "Normalfall"
* period.start = "2024-02-14"
* period.end = "2024-02-22"
* diagnosis[0].condition = Reference(mii-exa-test-data-patient-1-diagnose-1)
* diagnosis[0].use = $diagnosis-role#AD "Admission diagnosis"
* diagnosis[0].rank = 1
* diagnosis[1].condition = Reference(mii-exa-test-data-patient-1-todesursache-1)
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
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

Instance: mii-exa-test-data-patient-1-encounter-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Versorgungsstellenkontakt Patient 1"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_0000002, finished, IMP, versorgungsstellenkontakt, operation, mii-exa-test-data-patient-1, 2000)
* period.start = "2024-02-20T10:00:00+01:00"
* period.end = "2024-02-20T13:00:00+01:00"
* partOf = Reference(mii-exa-test-data-patient-1-encounter-1)

// Encounter Patient-2
Instance: mii-exa-test-data-patient-2-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 2"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_0000004, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-2, 0500)
* period.start = "2024-03-02"
* period.end = "2024-03-13"
//* diagnosis[0].condition = Reference(mii-exa-test-data-patient-2-diagnose-1)
//* diagnosis[0].use.coding[Diagnosetyp] = $KontaktDiagnoseProzedur#referral-diagnosis "Einweisungs-/Überweisungsdiagnose"
//* diagnosis[0].use.coding[DiagnosesubTyp] = $diagnosis-role#AD "Admission diagnosis"
//* diagnosis[0].rank = 1
* hospitalization.admitSource = $Aufnahmeanlass#E "Einweisung durch einen Arzt"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#07 "Tod"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#9 "keine Angabe"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* serviceProvider.identifier.value = "Charité"
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

Instance: mii-exa-test-data-patient-2-encounter-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Abteilungskontakt Patient 2"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* status = #finished
* class = #IMP
* type[Kontaktebene] = $Kontaktebene#abteilungskontakt
* type[KontaktArt] = $Kontaktart#normalstationaer
* subject = Reference(mii-exa-test-data-patient-2)
* period.start = "2024-03-02"
* period.end = "2024-03-13"

// Encounter Patient-3
Instance: mii-exa-test-data-patient-3-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 3"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_0000003, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-3, 0100)
* period.start = "2022-04-02"
* period.end = "2022-04-22"
* diagnosis[0].condition = Reference(mii-exa-test-data-patient-3-diagnose-1)
* diagnosis[0].use.coding[Diagnosetyp] = $KontaktDiagnoseProzedur#referral-diagnosis "Überweisungsdiagnose"
* diagnosis[0].use.coding[DiagnosesubTyp] = $diagnosis-role#AD "Admission diagnosis"
* diagnosis[0].rank = 1
* hospitalization.admitSource = $Aufnahmeanlass#E "Einweisung durch einen Arzt"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#02 "Behandlung regulär beendet, nachstationäre Behandlung vorgesehen"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#2 "arbeitsunfähig entlassen"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* serviceProvider.identifier.value = "Charité"
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// Encounter Patient-4
Instance: mii-exa-test-data-patient-4-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 4"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_0000005, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-4, 0300)
* period.start = "2020-09-15"
* period.end = "2020-09-25"
* hospitalization.admitSource = $Aufnahmeanlass#E "Einweisung durch einen Arzt"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#01 "Behandlung regulär beendet"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#1 "arbeitsfähig entlassen"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* serviceProvider.identifier.value = "Charité"
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// Encounter Patient-5
Instance: mii-exa-test-data-patient-5-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 5"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_0000006, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-5, 2400)
* period.start = "2023-07-10"
* period.end = "2023-07-18"
* hospitalization.admitSource = $Aufnahmeanlass#E "Einweisung durch einen Arzt"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#01 "Behandlung regulär beendet"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#1 "arbeitsfähig entlassen"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* serviceProvider.identifier.value = "Charité"
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// Encounter Patient-6
Instance: mii-exa-test-data-patient-6-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 6"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_0000007, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-6, 0100)
* period.start = "2022-03-12"
* period.end = "2022-03-20"
* hospitalization.admitSource = $Aufnahmeanlass#E "Einweisung durch einen Arzt"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#01 "Behandlung regulär beendet"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#1 "arbeitsfähig entlassen"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* serviceProvider.identifier.value = "Charité"
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// Encounter Patient-7
Instance: mii-exa-test-data-patient-7-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 7"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_0000008, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-7, 1000)
* period.start = "2024-01-08"
* period.end = "2024-01-15"
* hospitalization.admitSource = $Aufnahmeanlass#E "Einweisung durch einen Arzt"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#01 "Behandlung regulär beendet"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#1 "arbeitsfähig entlassen"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* serviceProvider.identifier.value = "Charité"
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// Encounter Patient-8
Instance: mii-exa-test-data-patient-8-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 8"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_0000009, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-8, 0300)
* period.start = "2023-11-10"
* period.end = "2023-11-15"
* diagnosis[0].condition = Reference(mii-exa-test-data-patient-8-todesursache-1)
* diagnosis[0].use = $diagnosis-role#DD "Discharge diagnosis"
* diagnosis[0].rank = 1
* hospitalization.admitSource = $Aufnahmeanlass#N "Notfall"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#07 "Tod"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#9 "keine Angabe"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* serviceProvider.identifier.value = "Charité"
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// Encounter Patient-9
Instance: mii-exa-test-data-patient-9-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 9"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_0000010, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-9, 2400)
* period.start = "2024-02-20"
* period.end = "2024-02-28"
* hospitalization.admitSource = $Aufnahmeanlass#E "Einweisung durch einen Arzt"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#01 "Behandlung regulär beendet"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#1 "arbeitsfähig entlassen"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* serviceProvider.identifier.value = "Charité"
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"

// Encounter Patient-10
Instance: mii-exa-test-data-patient-10-encounter-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung
Usage: #example
Description: "Encounter: Einrichtungskontakt Patient 10"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung|2024.0.1"
* insert AddEncounter(MII_0000011, finished, IMP, einrichtungskontakt, normalstationaer, mii-exa-test-data-patient-10, 2800)
* period.start = "2019-05-14"
* period.end = "2019-05-22"
* hospitalization.admitSource = $Aufnahmeanlass#E "Einweisung durch einen Arzt"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].url = "http://fhir.de/StructureDefinition/Entlassungsgrund"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].url = "ErsteUndZweiteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[ErsteUndZweiteStelle].valueCoding = $EntlassungsgrundErsteUndZweiteStelle#01 "Behandlung regulär beendet"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].url = "DritteStelle"
* hospitalization.dischargeDisposition.extension[Entlassungsgrund].extension[DritteStelle].valueCoding = $EntlassungsgrundDritteStelle#1 "arbeitsfähig entlassen"
* serviceProvider = Reference(mii-exa-test-data-organization-charite)
* serviceProvider.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* serviceProvider.identifier.value = "Charité"
* serviceProvider.display = "Charité - Universitätsmedizin Berlin"