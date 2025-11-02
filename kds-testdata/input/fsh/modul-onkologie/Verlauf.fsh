Instance: mii-exa-test-data-onko-mamma-verlauf
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf
Usage: #example
Description: "Observation: Verlauf für Onko Mamma PatientIn"
* insert TestDataLabel
* subject = Reference(mii-exa-test-data-patient-onko-mamma)
* focus = Reference(mii-exa-test-data-onko-mamma-primaerdiagnose)
* status = $observation-status#final
* code = $sct#396432002 "Status of regression of tumor (observable entity)"
* effectiveDateTime = "2024-02-08"
* valueCodeableConcept = $mii-cs-onko-verlauf-gesamtbeurteilung#B "klinische Besserung des Zustandes, Teilremissionkriterien jedoch nicht erfüllt (minimal response, MR)"
* component
  * code = $sct#445200009 "Status of residual neoplasm (observable entity)"
  * valueCodeableConcept = $mii-cs-onko-verlauf-primaertumor#T "Tumorreste (Residualtumor)"
* component[+]
  * code = $sct#399656008 "Presence of metastatic neoplasm in regional lymph node (observable entity)"
  * valueCodeableConcept = $mii-cs-onko-verlauf-lymphknoten#P "Presence of metastatic neoplasm in regional lymph node (observable entity)"
* component[+]
  * code = $sct#399608002 "Status of distant metastasis (observable entity)"
  * valueCodeableConcept = $mii-cs-onko-verlauf-fernmetastasen#K "keine Fernmetastasen nachweisbar"
