Instance: mii-exa-mtb-who-grad-tumor-zns-1
InstanceOf: MII_PR_MTB_WHO_Grad_Tumor_ZNS
Usage: #example
Title: "MII PR MTB WHO Grad Tumor ZNS"
Description: "Beispiel für WHO Grad Tumor"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns)
* status = #final

* subject = Reference(Patient/mii-exa-mtb-patient)
* effectiveDateTime = 2023-03-01
* code.coding = http://snomed.info/sct#396921005 "WHO grade finding for central nervous system tumor"
* valueCodeableConcept = http://snomed.info/sct#396924002 "World Health Organization grade III central nervous system tumor (finding)"
