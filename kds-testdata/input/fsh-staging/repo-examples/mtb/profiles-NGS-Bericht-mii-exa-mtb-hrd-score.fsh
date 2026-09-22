Instance: MII-EXA-MTB-HRD-Score-1
InstanceOf: MII_PR_MTB_HRD_Score
Usage: #example
Title: "Beispiel HRD-Score"
Description: "Beispiel fuer einen HRD-Score, der den Grad der homologen Rekombinationsdefizienz beschreibt."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-hrd-score)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[geCategory] = http://terminology.hl7.org/CodeSystem/v2-0074#GE
* code = http://loinc.org#107286-7 "Homologous recombination deficiency status analysis [Presence] in Tissue by Molecular genetics method"

* subject = Reference(Patient/mii-exa-mtb-patient)
* specimen = Reference(Specimen/mii-exa-mtb-specimen)
* valueInteger = 43

* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"

* component[LOH].valueInteger = 14
* component[TAI].valueInteger = 12
* component[LST].valueInteger = 17
