// PSA-Wert vor Biopsie
Instance: mii-exa-test-data-patho-psa-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-psa
Usage: #example
Title: "PSA vor Biopsie"
Description: "PSA-Wert vor der Prostatastanzenentnahme"
* insert TestDataLabel
* meta.source = "https://www.charite.de/fhir/kds-testdata"
* status = #final
* category[+] = $observation-category#laboratory
* category[+] = $loinc#26436-6 "Laboratory studies (set)"
* category[+] = $loinc#LP7839-6 "Pathology"
* code = $loinc#2857-1 "Prostate specific Ag [Mass/volume] in Serum or Plasma"
* subject = Reference(mii-exa-test-data-patho-patient-1)
* valueQuantity
  * value = 12.8
  * unit = "ng/ml"
  * system = $ucum
  * code = #ng/mL
* effectiveDateTime = "2024-01-10T08:00:00+01:00"
* referenceRange
  * low
    * value = 0
    * unit = "ng/ml"
  * high
    * value = 3
    * unit = "ng/ml"
  * text = "Normbereich für Männer über 50 Jahre"