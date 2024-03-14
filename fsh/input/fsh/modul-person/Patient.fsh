// Patient-1
Instance: mii-exa-test-data-patient-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* insert AddVersichertenIdGKV(A123456780, 987654321)
* insert AddPID(808439625, https://www.charite.de/fhir/sid/patientenidentifikation, Charité)
* insert AddName(Markgraf von Brandenburg-Schwedt, Markgraf, Brandenburg-Schwedt, von, Christian, Ludwig, Prinz von Preußen, NB, aus dem Haus der Hohenzollern)
* insert AddGender(male)
* birthDate = "1977-05-24"
* deceasedDateTime = "2024-02-22"
* address
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
* meta.profile = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* insert AddVersichertenIdGKV(B23456789, 123456789)
* insert AddPID(147725268, https://www.charite.de/fhir/sid/patientenidentifikation, Charité)
* insert AddGender(other)
* gender.extension[other-amtlich].valueCoding = $gender-amtlich-de#D
* birthDate = "2000-06-30"
* deceasedBoolean = true 