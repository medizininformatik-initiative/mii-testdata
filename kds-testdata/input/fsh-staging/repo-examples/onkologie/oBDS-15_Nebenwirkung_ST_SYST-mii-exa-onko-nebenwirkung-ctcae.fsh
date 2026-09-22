Instance: mii-exa-onko-nebenwirkung-anaemie-grad3
InstanceOf: mii-pr-onko-nebenwirkung-adverse-event
Usage: #example
Title: "MII EXA Onkologie Nebenwirkung Anämie CTCAE Grad 3"
Description: "Anämie CTCAE Grad 3 (MedDRA 10002272, deutsches Display aus dem Supplement) unter systemischer Therapie — mit SNOMED-CT-Zweitkodierung aus der ConceptMap."
* actuality = #actual
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code = #10002272
* extension[ctcaeVersion].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-version#4.03 "CTCAE Version 4.03"
* event.coding[meddra].display = "Anämie"
* event.coding[snomed] = http://snomed.info/sct#271737000 "Anaemia"
* subject = Reference(PatientKimMusterperson)
* date = "2021-08-30"
* seriousness.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad#3 "schwerwiegend"
* suspectEntity.instance = Reference(PatientKimMusterperson-SystemicTherapy-1)

Instance: mii-exa-onko-nebenwirkung-crs-grad4
InstanceOf: mii-pr-onko-nebenwirkung-adverse-event
Usage: #example
Title: "MII EXA Onkologie Nebenwirkung Cytokine-Release-Syndrom CTCAE Grad 4"
Description: "Cytokine-Release-Syndrom CTCAE Grad 4 (MedDRA 10052015) unter medikamentöser systemischer Therapie — SNOMED-Zweitkodierung gemäß ConceptMap gegen die im Expansions-Manifest gepinnte SNOMED-Version (International 20260701)."
* actuality = #actual
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code = #10052015
* extension[ctcaeVersion].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-version#4.03 "CTCAE Version 4.03"
* event.coding[meddra].display = "Zytokin-Freisetzungs-Syndrom"
* event.coding[snomed] = http://snomed.info/sct#710027002 "Cytokine release syndrome"
* subject = Reference(PatientKimMusterperson)
* date = "2021-09-02"
* seriousness.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad#4 "lebensbedrohlich"
* suspectEntity.instance = Reference(PatientKimMusterperson-SystemicTherapyMedication-1a)

Instance: mii-exa-onko-nebenwirkung-rektale-mukositis-grad2
InstanceOf: mii-pr-onko-nebenwirkung-adverse-event
Usage: #example
Title: "MII EXA Onkologie Nebenwirkung Rektale Mukositis CTCAE Grad 2 (MedDRA-only)"
Description: "Rektale Mukositis CTCAE Grad 2 (MedDRA 10063190) nach Strahlentherapie — Beispiel für einen Term OHNE SNOMED-CT-Äquivalent (in der ConceptMap als unmatched geführt): Die Kodierung bleibt MedDRA-only, der optionale snomed-Slice entfällt."
* actuality = #actual
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code = #10063190
* extension[ctcaeVersion].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-version#4.03 "CTCAE Version 4.03"
* event.coding[meddra].display = "Rektale Mukositis"
* subject = Reference(PatientKimMusterperson)
* date = "2021-09-10"
* seriousness.coding = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad#2 "moderat"
* suspectEntity.instance = Reference(mii-exa-onko-strahlentherapie-strahlentherapie-1)
