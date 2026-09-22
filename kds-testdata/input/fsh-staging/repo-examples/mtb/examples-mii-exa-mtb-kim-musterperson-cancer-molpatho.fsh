Instance: PatientKimMusterperson-MolecularPathologyReport-1
InstanceOf: MII_PR_MTB_Molecular_Pathology_Report
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report)
* status = #final

* code = http://loinc.org#60568-3 "Pathology synoptic report" 
* subject = Reference(PatientKimMusterperson)
* result[+] = Reference(PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu)

/**
ggfs. Nachreport über einzelnen Bericht, aber vsl. nicht notwendig

Instance: PatientKimMusterperson-MolecularPathologyReport-2
**/

Instance: PatientKimMusterperson-AscitesSpecimen-2
InstanceOf: MII_PR_Onko_Specimen
Usage: #example
* subject = Reference(PatientKimMusterperson)
* type = http://snomed.info/sct#309201001 "Ascitic fluid specimen (specimen)"
* collection.collectedDateTime = "2023-02-01"
* accessionIdentifier.value = "Z230201/23"

Instance: PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry)
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* category[labCategory].coding = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[geCategory].coding = http://terminology.hl7.org/CodeSystem/v2-0074#GE

* code.coding[+] = http://loinc.org#18474-7 "HER2 Ag [Presence] in Tissue by Immune stain"
* valueCodeableConcept.coding[+] = http://loinc.org#LA11842-4 "2+"
* component[+].code.coding = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept[+].coding = http://www.genenames.org/geneId#HGNC:3430 "ERBB2"

Instance: PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-
InstanceOf: MII_PR_MTB_INSITUHYBRIDIZATION_HER2
Usage: #example
Title: "Example In Situ Hybridization HER2/ERBB2"
Description: "Example of HER2 in situ hybridization with ratio measurement for patient Kim Musterperson"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization-her2)
* status = #final
* category[labCategory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* category[mbCategory] = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs#biomarker-category

// code and method are set explicitly per profile requirements
* code.coding[spezifisch] = http://loinc.org#49683-6 "ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH"
* method = http://snomed.info/sct#1303773004 "Fluorescence in situ hybridization technique (qualifier value)"
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* valueRatio.numerator.value = 1.2
* valueRatio.denominator.value = 1
* interpretation = http://snomed.info/sct#260385009 "Negative (qualifier value)"

// Component values - codes are fixed in the HER2 profile
* component[target-signals].valueQuantity.value = 2.4
* component[target-signals].valueQuantity.unit = "#"
* component[reference-signals].valueQuantity.value = 2.0
* component[reference-signals].valueQuantity.unit = "#"
* component[cells-counted].valueQuantity.value = 50
* component[cells-counted].valueQuantity.unit = "#"

Instance: PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry)
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding[+] = http://loinc.org#48676-1 "HER2 Ag [Interpretation] in Tissue"
* valueCodeableConcept.coding = http://snomed.info/sct#1381317004 "Human epidermal growth factor receptor 2 low"
* valueCodeableConcept.text = "HER2-low (IHC 2+/ISH negative)"
* component[+].code.coding = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept[+].coding = http://www.genenames.org/geneId#HGNC:3430 "ERBB2"

Instance: PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry)
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding[+] = http://loinc.org#55229-9 "Immune stain study" // LOINC 105010-3 Folate receptor alpha [Interpretation] in Tissue by Immune stain Narrative -> does not fit, because data type is narraitve
* valueQuantity.code = #{/100}
* valueQuantity.value = 70
* valueQuantity.unit = "%"
* valueQuantity.system = http://unitsofmeasure.org
* component[+].code.coding = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept[+].coding[+] = http://www.genenames.org/geneId#HGNC:3791 "FOLR1"
* component[=].valueCodeableConcept[=].coding[+] = http://loinc.org#LP440974-6 "Folate receptor alpha" //extra LOINC Part!

Instance: PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry)
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding[+] = http://loinc.org#55229-9 "Immune stain study"
* valueCodeableConcept.coding = http://loinc.org#LA6576-8 "Positive"
* component[+].code.coding = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept[+].coding[+] = http://www.genenames.org/geneId#HGNC:11530 "TACSTD2"
* component[=].valueCodeableConcept[=].coding[+] = http://www.uniprot.org#P09758  "Tumor-associated calcium signal transducer 2"

Instance: PatientKimMusterperson-MolecularPathologyObservation-1-CA125
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry)
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding[+] = http://loinc.org#48677-9 "Cancer Ag 125 [Presence] in Tissue by Immune stain"
* valueCodeableConcept.text = "Die Tumorzellen sind partiell positiv für CA125,..."
* valueCodeableConcept.coding = http://loinc.org#LA6576-8 "Positive"
* component[+].code.coding = http://loinc.org#48018-6 "Gene studied [ID]"
* component[=].valueCodeableConcept[+].coding[+] = http://www.genenames.org/geneId#HGNC:11530 "TACSTD2"
* component[=].valueCodeableConcept[=].coding[+] = http://www.uniprot.org#P09758  "Tumor-associated calcium signal transducer 2" 



/*
Die Tumorzellen sind partiell positiv für CA125, durchgehend nukleär für Pax 8 und WT1, Östrogenrezeptorpositivität in ca. 70 % der Tumorzellen und das Progesteronrezeptorprotein wird in ca. 30 % der Tumorzellen exprimiert. Kräftige nukleäre Überexpression von p53. Zudem sind die Tumorzellen negativ für CDX2.
*/

Instance: PatientKimMusterperson-MolecularPathologyObservation-2-Pax8
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry)
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding[+] = http://loinc.org#73910-2 "PAX8 Ag [Presence] in Tissue by Immune stain"
* valueCodeableConcept.coding = http://loinc.org#LA6576-8 "Positive" 	
* valueCodeableConcept.text = "Tumorzellen durchgehend nukleär für Pax 8"

Instance: PatientKimMusterperson-MolecularPathologyObservation-3-WT1
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry)
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
// WT1 has no specific LOINC/SNOMED code, so only the generic code (inherited from profile)
* valueCodeableConcept.coding = http://loinc.org#LA6576-8 "Positive"
* valueCodeableConcept.text = "Tumorzellen durchgehend nukleär für WT1" //durchgehend ist ein modifier?
* component[gene-studied].code.coding = http://loinc.org#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept.coding[+] = http://www.genenames.org/geneId#HGNC:12796 "WT1"
* component[gene-studied].valueCodeableConcept.coding[+] = http://loinc.org#LP65352-4 "WT-1 Ag" //extra LOINC Part!
* bodySite.coding = http://snomed.info/sct#84640000 "Nucleus (cell structure)" //alternativ über bodySite
* bodySite.text = "Nukleär"

Instance: PatientKimMusterperson-MolecularPathologyObservation-4-ER
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry)
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding[+] = http://loinc.org#14228-1 "Cells.estrogen receptor/cells in Tissue by Immune stain"
* valueQuantity.code = #/100
* valueQuantity.value = 70
* valueQuantity.unit = "%"
* valueQuantity.system = http://unitsofmeasure.org

Instance: PatientKimMusterperson-MolecularPathologyObservation-5-PR
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry)
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding[+] = http://loinc.org#14230-7 "Cells.progesterone receptor/cells in Tissue by Immune stain"
* valueQuantity.code = #/100
* valueQuantity.value = 30
* valueQuantity.unit = "%"
* valueQuantity.system = http://unitsofmeasure.org

Instance: PatientKimMusterperson-MolecularPathologyObservation-6-p53
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry)
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding[+] = http://loinc.org#14229-9 "P53 protein Ag [Presence] in Tissue by Immune stain"
* valueCodeableConcept.coding = http://loinc.org#LA6576-8 "Positive"
* valueCodeableConcept.text = "Kräftige nukleäre Überexpression von p53"

Instance: PatientKimMusterperson-MolecularPathologyObservation-7-p53
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry)
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding[+] = http://loinc.org#14229-9 "P53 protein Ag [Presence] in Tissue by Immune stain"
* valueCodeableConcept.coding = http://loinc.org#LA6576-8 "Positive" 	
* valueCodeableConcept.text = "Kräftige nukleäre Überexpression von p53"
