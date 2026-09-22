Instance: mii-exa-onko-strahlentherapie-nuklearmedizin-1
InstanceOf: MII_PR_Onko_Strahlentherapie
Usage: #example
Title: "Example radiation therapy"
Description: "Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie)
* subject = Reference(Patient/example)
* status = #completed

* extension[Intention].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention#P // palliativ
* extension[Intention].url = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-intention
* extension[StellungZurOp].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop#A // adjuvant
* extension[StellungZurOp].url = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellungzurop
* category = http://snomed.info/sct#399315003 "Radionuclide therapy"
* code.coding = http://fhir.de/CodeSystem/bfarm/ops#8-53 // allgemeiner OPS-Code, ggfs noch beispiel mit zwei spezifischeren OPS-Codes
* code.coding.version = "2019"
* performedPeriod.start = "2019-07-04"
* performedPeriod.end = "2019-09-14"

Instance: mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1
InstanceOf: MII_PR_Onko_Strahlentherapie_Bestrahlung_Nuklearmedizin
Usage: #example
Title: "Strahlentherapie: Beispiel einer Nuklearmedizinischen Bestrahlungstherapie"
Description: "Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin)
* subject = Reference(Patient/example)
* status = #completed



* bodySite =  https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet#6.14 "Becken (r, l)"
* bodySite.extension[Seitenlokalisation].valueCodeableConcept =  https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation#L
* extension[Gesamtdosis].valueQuantity.value =  30.0
* extension[Gesamtdosis].valueQuantity.unit =  http://unitsofmeasure.org#GBq
* extension[Boost].valueCodeableConcept =  https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost#N
* category = http://snomed.info/sct#399315003 "Radionuclide therapy" 
* code.coding = http://fhir.de/CodeSystem/bfarm/ops#8-530.d0 "Therapie mit offenen Radionukliden: Intravenöse Radioliganden-Therapie: Therapie mit Lutetium-177-PSMA-Liganden" // achtung, in der aktuellen OPS-Version ist hier ein anderer Code! 
* code.coding.version = "2019"
* performedPeriod.start = "2019-07-04"
* performedPeriod.end = "2019-09-14"
* usedCode[Strahlenart] = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart#Lu-177
* extension[Applikationsart].valueCodeableConcept = https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart#MPSMA
