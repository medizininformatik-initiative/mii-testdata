Instance: mii-exa-onko-tumorgroesse
InstanceOf: MII_PR_Onko_Tumorgroesse
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorgroesse)
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorgroesse"

* status = #final

* code.coding[loinc] = http://loinc.org#21889-1 "Size Tumor"
* code.coding[snomed] = http://snomed.info/sct#371479009 "Tumor size, largest dimension (observable entity)"

* subject = Reference(Patient/example)
* focus = Reference(primaertumor-example)

* effectiveDateTime = "2024-03-15"

* valueQuantity.value = 25
* valueQuantity.code = #mm
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.unit = "mm"

* bodySite.coding = http://snomed.info/sct#80248007 "Left breast structure (body structure)"
