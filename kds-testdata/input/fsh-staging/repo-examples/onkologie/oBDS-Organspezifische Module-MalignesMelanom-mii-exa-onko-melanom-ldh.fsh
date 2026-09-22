Instance: mii-exa-onko-melanom-ldh
InstanceOf: MII_PR_Onko_Melanom_LDH
Usage: #example
Title: "MII EXA Onko Melanom LDH"
Description: "Beispiel für einen LDH Laborwert beim Malignen Melanom"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ldh)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ldh"

* status = #final

* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"

* code.coding = http://loinc.org#14804-9 "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction"

* subject = Reference(mii-exa-onko-melanom-bundle-patient)
* encounter = Reference(mii-exa-onko-melanom-bundle-encounter)
* focus = Reference(mii-exa-onko-melanom-diagnose)

* effectiveDateTime = "2024-03-18T08:30:00+01:00"

* valueQuantity.value = 280
* valueQuantity.unit = "U/L"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #U/L

* referenceRange.low.value = 135
* referenceRange.low.unit = "U/L"
* referenceRange.low.system = http://unitsofmeasure.org
* referenceRange.low.code = #U/L
* referenceRange.high.value = 250
* referenceRange.high.unit = "U/L"
* referenceRange.high.system = http://unitsofmeasure.org
* referenceRange.high.code = #U/L
* referenceRange.text = "135-250 U/L"

* interpretation.coding = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
