// Patient-1
Instance: mii-exa-test-data-patient-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
Description: "Patient: Patient-1"
* insert TestDataLabel
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
Usage: #example
Description: "Patient: Patient-2"
* insert TestDataLabel
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient|2024.0.0"
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
//* insert AddVersichertenIdGKV(B23456789, 123456789)
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "B234567890"
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
Description: "Patient: Patient-3"
* insert TestDataLabel
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
Description: "Patient: Patient-4"
* insert TestDataLabel
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

// Patient-5
Instance: mii-exa-test-data-patient-5
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
Description: "Patient: Patient-5"
* insert TestDataLabel
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier[pid].use = #usual
* identifier[pid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[pid].system = "https://www.medizininformatik-initiative.de/fhir/sid/patienten"
* identifier[pid].value = "925847361"
* identifier[pid].assigner.display = "Charité - Universitätsmedizin Berlin"
* identifier[pid].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[pid].assigner.identifier.value = "Charité"
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "C200919710"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "987654321"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* name[name].use = #official
* name[name].family = "Weber"
* name[name].given[0] = "Sabine"
* name[name].given[+] = "Maria"
* name[geburtsname].use = #maiden
* name[geburtsname].family = "Müller"
* gender = #female
* birthDate = "1985-03-12"
* deceasedBoolean = false
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Kantstraße 47"
* address[Strassenanschrift].city = "München"
* address[Strassenanschrift].postalCode = "80636"
* address[Strassenanschrift].country = "DE"

// Patient-6
Instance: mii-exa-test-data-patient-6
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
Description: "Patient: Patient-6"
* insert TestDataLabel
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier[pid].use = #usual
* identifier[pid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[pid].system = "https://www.medizininformatik-initiative.de/fhir/sid/patienten"
* identifier[pid].value = "456789123"
* identifier[pid].assigner.display = "Charité - Universitätsmedizin Berlin"
* identifier[pid].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[pid].assigner.identifier.value = "Charité"
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "D345678901"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "123456789"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* name[name].use = #official
* name[name].family = "Richter"
* name[name].given[0] = "Thomas"
* name[name].given[+] = "Michael"
* gender = #male
* birthDate = "1975-11-08"
* deceasedBoolean = false
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Hauptstraße 134"
* address[Strassenanschrift].city = "Hamburg"
* address[Strassenanschrift].postalCode = "20095"
* address[Strassenanschrift].country = "DE"

// Patient-7
Instance: mii-exa-test-data-patient-7
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
Description: "Patient: Patient-7"
* insert TestDataLabel
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier[pid].use = #usual
* identifier[pid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[pid].system = "https://www.medizininformatik-initiative.de/fhir/sid/patienten"
* identifier[pid].value = "789456321"
* identifier[pid].assigner.display = "Charité - Universitätsmedizin Berlin"
* identifier[pid].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[pid].assigner.identifier.value = "Charité"
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "E456789012"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "567890123"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* name[name].use = #official
* name[name].family = "Hoffmann"
* name[name].given[0] = "Anna"
* name[geburtsname].use = #maiden
* name[geburtsname].family = "Schmidt"
* gender = #female
* birthDate = "1992-07-15"
* deceasedBoolean = false
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Gartenstraße 56"
* address[Strassenanschrift].city = "Köln"
* address[Strassenanschrift].postalCode = "50667"
* address[Strassenanschrift].country = "DE"

// Patient-8
Instance: mii-exa-test-data-patient-8
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
Description: "Patient: Patient-8"
* insert TestDataLabel
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier[pid].use = #usual
* identifier[pid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[pid].system = "https://www.medizininformatik-initiative.de/fhir/sid/patienten"
* identifier[pid].value = "159753486"
* identifier[pid].assigner.display = "Charité - Universitätsmedizin Berlin"
* identifier[pid].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[pid].assigner.identifier.value = "Charité"
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "F567890123"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "234567890"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* name[name].use = #official
* name[name].family = "Bauer"
* name[name].given[0] = "Hans"
* name[name].given[+] = "Peter"
* gender = #male
* birthDate = "1958-02-28"
* deceasedBoolean = true
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Bahnhofstraße 89"
* address[Strassenanschrift].city = "Stuttgart"
* address[Strassenanschrift].postalCode = "70173"
* address[Strassenanschrift].country = "DE"

// Patient-9
Instance: mii-exa-test-data-patient-9
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
Description: "Patient: Patient-9"
* insert TestDataLabel
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier[pid].use = #usual
* identifier[pid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[pid].system = "https://www.medizininformatik-initiative.de/fhir/sid/patienten"
* identifier[pid].value = "321654987"
* identifier[pid].assigner.display = "Charité - Universitätsmedizin Berlin"
* identifier[pid].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[pid].assigner.identifier.value = "Charité"
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "G678901234"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "345678901"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* name[name].use = #official
* name[name].family = "Klein"
* name[name].given[0] = "Petra"
* name[name].given[+] = "Elisabeth"
* name[geburtsname].use = #maiden
* name[geburtsname].family = "Fischer"
* gender = #female
* birthDate = "1981-12-03"
* deceasedBoolean = false
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Müllerstraße 23"
* address[Strassenanschrift].city = "Dresden"
* address[Strassenanschrift].postalCode = "01067"
* address[Strassenanschrift].country = "DE"

// Patient-10
Instance: mii-exa-test-data-patient-10
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
Usage: #example
Description: "Patient: Patient-10"
* insert TestDataLabel
* meta.profile[+] = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* identifier[pid].use = #usual
* identifier[pid].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[pid].system = "https://www.medizininformatik-initiative.de/fhir/sid/patienten"
* identifier[pid].value = "654987321"
* identifier[pid].assigner.display = "Charité - Universitätsmedizin Berlin"
* identifier[pid].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[pid].assigner.identifier.value = "Charité"
* identifier[+].use = #official
* identifier[=].type = $identifier-type-de-basis#KVZ10
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "H789012345"
* identifier[=].assigner.identifier.use = #official
* identifier[=].assigner.identifier.value = "456789012"
* identifier[=].assigner.identifier.system = "http://fhir.de/sid/arge-ik/iknr"
* name[name].use = #official
* name[name].family = "Wolf"
* name[name].given[0] = "Markus"
* gender = #male
* birthDate = "1969-09-17"
* deceasedBoolean = false
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Am Park 12"
* address[Strassenanschrift].city = "Frankfurt am Main"
* address[Strassenanschrift].postalCode = "60311"
* address[Strassenanschrift].country = "DE"