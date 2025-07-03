// Patient-1
Instance: mii-exa-test-data-patient-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient|2024.0.0"
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
//* insert AddVersichertenIdGKV(A123456780, 987654321)
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "A123456780"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "987654321"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* insert AddPID(808439625, https://www.charite.de/fhir/sid/patientenidentifikation, Charité)
* insert AddName(Markgraf von Brandenburg-Schwedt, Markgraf, Brandenburg-Schwedt, von, Christian, Ludwig, Prinz von Preußen, NB, aus dem Haus der Hohenzollern)
* insert AddGender(male)
* birthDate = "1977-05-24"
* deceasedDateTime = "2024-02-22"
* address[Strassenanschrift]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-precinct"
    * valueString = "Malchow"
  * type = #both
  * line[0] = "Dorfstraße 9"
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
      * valueString = "Dorfstraße"
    * extension[1]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
      * valueString = "9"
  * line[1] = "Schloss"
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
      * valueString = "Schloss"
  * line[2] = "Malchow"
  * city = "Berlin"
    * extension[0]
      * url = "http://fhir.de/StructureDefinition/destatis/ags"
      * valueCoding = http://fhir.de/sid/destatis/ags#11000000
  * postalCode = "13051"
  * country = "DE"

// Patient-2
Instance: mii-exa-test-data-patient-2
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient|2024.0.0"
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
//* insert AddVersichertenIdGKV(B23456789, 123456789)
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "B23456789"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "123456789"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* insert AddPID(147725268, https://www.charite.de/fhir/sid/patientenidentifikation, Charité)
* insert AddGender(other)
* gender.extension[other-amtlich].valueCoding = $gender-amtlich-de#D
* birthDate = "2000-06-30"
* deceasedBoolean = true 

// Patient-3
Instance: mii-exa-test-data-patient-3
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient|2024.0.0"
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier[pid].use = #usual
* identifier[pid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[pid].system = "https://www.medizininformatik-initiative.de/fhir/sid/patienten"
* identifier[pid].value = "42285243"
* identifier[pid].assigner.display = "Charité - Universitätsmedizin Berlin"
* identifier[pid].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[pid].assigner.identifier.value = "Charité"
//* identifier[versichertenId_GKV].use = #official
//* identifier[versichertenId_GKV].type = http://fhir.de/CodeSystem/identifier-type-de-basis#GKV
//* identifier[versichertenId_GKV].system = "http://fhir.de/sid/gkv/kvid-10"
//* identifier[versichertenId_GKV].value = "Z234567890"
//* identifier[versichertenId_GKV].assigner.identifier.use = #official
//* identifier[versichertenId_GKV].assigner.identifier.value = "109519005"
//* identifier[versichertenId_GKV].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
//* identifier[versichertennummer_pkv].use = #secondary
//* identifier[versichertennummer_pkv].type = http://fhir.de/CodeSystem/identifier-type-de-basis#PKV
//* identifier[versichertennummer_pkv].system = "https://www.signal-iduna.de/fhir/sid/pkv"
//* identifier[versichertennummer_pkv].value = "3770010809"
//* identifier[versichertennummer_pkv].assigner.display = "Signal Iduna"
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "Z234567890"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "109519005"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* name[name].use = #official
* name[name].family = "Schumann"
* name[name].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[name].family.extension.valueString = "Schumann"
* name[name].given[0] = "Clara"
* name[name].given[+] = "Josephine"
* name[geburtsname].use = #maiden
* name[geburtsname].family = "Wieck"
* gender = #female
* birthDate = "1968-09-13"
* deceasedBoolean = false
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Schöneberger Ufer 22"
* address[Strassenanschrift].city = "Berlin"
* address[Strassenanschrift].state = "DE-BE"
* address[Strassenanschrift].postalCode = "10785"
* address[Strassenanschrift].country = "DE"
* address[Postfach].type = #postal 
* address[Postfach].line = "Postfach-252618"
* address[Postfach].line.extension[Postfach].valueString = "Postfach-252618"
* address[Postfach].city = "Berlin"
* address[Postfach].postalCode = "10178"
* address[Postfach].country = "DE"

//Patient-4
Instance: mii-exa-test-data-patient-4
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/PatientPseudonymisiert|2024.0.0"
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier[+].type = $v3-ObservationValue#PSEUDED 
* identifier[=].system = "https://www.charite.de/fhir/sid/pseudonyme"
* identifier[=].value = "CP5712840020128"
* gender = #male
* birthDate = "1962"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* address[Strassenanschrift].line.extension[=].valueCode = #masked
* address[Strassenanschrift].city.extension[0].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* address[Strassenanschrift].city.extension[=].valueCode = #masked
* address[Strassenanschrift].postalCode = "10"
* address[Strassenanschrift].country = "DE"