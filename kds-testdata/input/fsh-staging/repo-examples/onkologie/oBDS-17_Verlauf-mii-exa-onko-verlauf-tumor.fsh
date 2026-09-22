Instance: mii-exa-onko-verlauf-tumor
InstanceOf: mii-pr-onko-verlauf
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf)
* status = #final
* code = http://snomed.info/sct#396432002 "Status of regression of tumor (observable entity)"
* subject = Reference(Patient/example)
* focus = Reference(primaertumor-example)


* effectiveDateTime = "2024-02-08"

* valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung#B "klinische Besserung des Zustandes, Teilremissionkriterien jedoch nicht erfüllt (minimal response, MR)"
* component[Tumor_Verlauf].code.coding = http://snomed.info/sct#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor_Verlauf].valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor#T "Tumorreste (Residualtumor)"
* component[Lymphknoten_Verlauf].code.coding = http://snomed.info/sct#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten#P "bekannter Lymphknotenbefall Progress"
* component[Fernmetastasen_Verlauf].code.coding = http://snomed.info/sct#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen#K "keine Fernmetastasen nachweisbar"
