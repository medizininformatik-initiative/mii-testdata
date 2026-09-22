Instance: MII-EXA-MTB-BRCAness-1
InstanceOf: MII_PR_MTB_BRCAness
Usage: #example
Title: "Beispiel fuer BRCAness-Analyse"
Description: "Dieses Beispiel beschreibt eine BRCAness-Analyse, die das Verhalten eines Tumors in Bezug auf BRCA-ähnliche Eigenschaften darstellt."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-brcaness)
* status = #final

* category[labCategory].coding.system = http://terminology.hl7.org/CodeSystem/observation-category
* category[labCategory].coding.code = #laboratory "Laboratory"
* category[geCategory].coding.system = http://terminology.hl7.org/CodeSystem/v2-0074
* category[geCategory].coding.code = #GE "Genetic Test"

* code = https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker#brcaness "BRCAness"

* subject = Reference(Patient/mii-exa-mtb-patient)
* specimen = Reference(Specimen/mii-exa-mtb-specimen)

* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
// Components
* component[gene-studied].code.coding.system = http://loinc.org
* component[gene-studied].code.coding.code = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = #HGNC:1100 "BRCA1"
