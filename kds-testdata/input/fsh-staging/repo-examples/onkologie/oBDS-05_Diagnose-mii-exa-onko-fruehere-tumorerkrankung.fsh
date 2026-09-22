Instance: mii-exa-onko-fruehere-tumorerkrankung-cervix
InstanceOf: mii-pr-onko-fruehere-tumorerkrankung
Usage: #example
Title: "Frühere Tumorerkrankung Cervix in situ"
Description: "Beispiel einer früheren Tumorerkrankung (Carcinoma in situ der Cervix uteri) aus dem Jahr 2013"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung)
* category[oncology] = http://snomed.info/sct#394593009 "Medical oncology (qualifier value)"
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version = "2013"
* code.coding[icd10-gm].code = #D06.9
* code.coding[icd10-gm].display = "Carcinoma in situ: Cervix uteri, nicht näher bezeichnet"
* code.text = "Cervix-Ca in situ"
* subject = Reference(Patient/example)
* extension[assertedDate].valueDateTime = "2013"
* recordedDate = "2024-06-14"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed

// Example: Previous tumor disease - Breast cancer

Instance: mii-exa-onko-fruehere-tumorerkrankung-mamma
InstanceOf: mii-pr-onko-fruehere-tumorerkrankung
Usage: #example
Title: "Frühere Tumorerkrankung Mamma"
Description: "Beispiel einer früheren Tumorerkrankung (Mammakarzinom links) aus dem Jahr 2013"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung)
* category[oncology] = http://snomed.info/sct#394593009 "Medical oncology (qualifier value)"
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version = "2013"
* code.coding[icd10-gm].code = #C50.9
* code.coding[icd10-gm].display = "Bösartige Neubildung: Brustdrüse, nicht näher bezeichnet"
* code.text = "Mamma-Ca, links"
* bodySite.coding[icd-o-3].system = http://terminology.hl7.org/CodeSystem/icd-o-3
* bodySite.coding[icd-o-3] = http://terminology.hl7.org/CodeSystem/icd-o-3#C50.9 "Brustdrüse o.n.A."
* bodySite.coding[icd-o-3].display = "Brust o.n.A."
* subject = Reference(Patient/example)
* extension[assertedDate].valueDateTime = "2013"
* recordedDate = "2024-06-14"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#resolved
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* note.text = "Z.n. brusterhaltender Therapie und Radiatio, derzeit tumorfrei"

// Example: Previous tumor disease - Prostate cancer

Instance: mii-exa-onko-fruehere-tumorerkrankung-prostata
InstanceOf: mii-pr-onko-fruehere-tumorerkrankung
Usage: #example
Title: "Frühere Tumorerkrankung Prostata"
Description: "Beispiel einer früheren Tumorerkrankung (Prostatakarzinom) aus dem Jahr 2018"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung)
* category[oncology] = http://snomed.info/sct#394593009 "Medical oncology (qualifier value)"
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version = "2021"
* code.coding[icd10-gm].code = #C61
* code.coding[icd10-gm].display = "Bösartige Neubildung der Prostata"
* code.text = "Prostatakarzinom"
* bodySite.coding[icd-o-3].system = http://terminology.hl7.org/CodeSystem/icd-o-3
* bodySite.coding[icd-o-3] = http://terminology.hl7.org/CodeSystem/icd-o-3#C61.9 "Prostata o.n.A."
* bodySite.coding[icd-o-3].display = "Prostata"
* subject = Reference(Patient/example)
* extension[assertedDate].valueDateTime = "2018-03-15"
* recordedDate = "2024-06-14"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#remission
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* note.text = "Z.n. radikaler Prostatektomie 2018, PSA aktuell <0.1 ng/ml"

// Example: Previous tumor disease - Freetext only (no ICD-10-GM code)

Instance: mii-exa-onko-fruehere-tumorerkrankung-freetext
InstanceOf: mii-pr-onko-fruehere-tumorerkrankung
Usage: #example
Title: "Frühere Tumorerkrankung nur Freitext"
Description: "Beispiel einer früheren Tumorerkrankung mit nur Freitextangabe, ohne ICD-10-GM Kodierung (typisch bei anamnestischen Angaben)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung)
* category[oncology] = http://snomed.info/sct#394593009 "Medical oncology (qualifier value)"
* code.text = "Hautkrebs am Rücken, ca. 2010"
* subject = Reference(Patient/example)
* extension[assertedDate].valueDateTime = "2010"
* recordedDate = "2024-06-14"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#resolved
* note.text = "Patient berichtet von operativ entferntem Hautkrebs vor ca. 14 Jahren, keine weiteren Details verfügbar"
