Instance: mii-exa-onko-weitere-klassifikationen-1
InstanceOf: mii-pr-onko-weitere-klassifikationen
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen)
* status = #final
* code.coding = http://snomed.info/sct#385361009 "International Federation of Gynecology and Obstetrics stage for gynecological malignancy (observable entity)"
* code.text = "FIGO Klassifikation für ovariale Tumore"
* method = http://snomed.info/sct#254386003 "International Federation of Gynecology and Obstetrics ovarian tumor staging system (tumor staging)"
* subject = Reference(Patient/example)
* focus = Reference(Condition/primaertumor-example)
* effectiveDateTime = "2024-01-11"
* valueCodeableConcept.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-weitere-klassifikationen-obds#figo-ivb "FIGO IVB"
* valueCodeableConcept.text = "FIGO Stadium IVB"

Instance: mii-exa-onko-weitere-klassifikationen-3
InstanceOf: mii-pr-onko-weitere-klassifikationen
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-weitere-klassifikationen)
* status = #final
* code = http://snomed.info/sct#1290294004 "International Federation of Gynecology and Obstetrics grading system (qualifier value)"
* code.text = "FIGO Grading für gynäkologische Tumore"
* subject = Reference(Patient/example)
* focus = Reference(Condition/primaertumor-example)
* specimen = Reference(mii-exa-onko-specimen-1)
* effectiveDateTime = "2024-01-11"
* valueCodeableConcept.coding = http://snomed.info/sct#1290303004 "International Federation of Gynecology and Obstetrics grading system grade 2 (qualifier value)"
* valueCodeableConcept.text = "FIGO Grad 2"
