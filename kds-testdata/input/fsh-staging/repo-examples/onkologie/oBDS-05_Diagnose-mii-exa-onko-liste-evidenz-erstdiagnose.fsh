Instance: mii-exa-onko-liste-evidenz-erstdiagnose-1
InstanceOf: mii-pr-onko-liste-evidenz-erstdiagnose
Usage: #example
Description: "Eine Beispielliste, welche Observations zur Diagnosestellung präsent waren"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose)
* status = #current
* mode = #snapshot
* title = "Liste der Evidenz zum Erstdiagnosezeitpunkt"
* subject = Reference(Patient/example)
* entry[0].item = Reference(mii-exa-onko-allgemeiner-leistungszustand-ecog)
* entry[1].item = Reference(mii-exa-onko-tnm-klassifikation-TisN0M0)
* entry[2].item = Reference(mii-exa-onko-tnm-t-kategorie-Tis)
* entry[3].item = Reference(mii-exa-onko-tnm-n-kategorie-N0)
* entry[4].item = Reference(mii-exa-onko-tnm-m-kategorie-M0)
* entry[5].item = Reference(mii-exa-onko-tnm-l-kategorie-L1)
* entry[6].item = Reference(mii-exa-onko-fernmetastasen-1)
* entry[7].item = Reference(mii-exa-onko-cup-fernmetastase-hep)
* entry[8].item = Reference(mii-exa-onko-befund-1)
