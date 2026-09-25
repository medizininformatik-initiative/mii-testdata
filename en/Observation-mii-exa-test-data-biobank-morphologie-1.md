# mii-exa-test-data-biobank-morphologie-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-biobank-morphologie-1**

## Example Observation: mii-exa-test-data-biobank-morphologie-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Observation Morphologie](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-morphologie)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: cell morphology

**focus**: [Specimen: extension = ->DocumentReference: status = current; date = 2022-03-20 09:00:00+0100; description = Standardprotokoll zur Kultivierung von Kolon-Tumor-Organoiden,,3,->Organization Zentrale Biobank der Charité,->Condition Bösartige Neubildung: Kolon, nicht näher bezeichnet,Aliquot (MII CS Biobank Probenebene#ALIQUOT),Biosafety level 2 (qualifier value); identifier = https://www.charite.de/fhir/sid/Bioproben#BP_000020; status = available; type = Specimen (specimen); receivedTime = 2022-03-24 14:00:00+0100; note = Kolon-Tumor-Organoid, Passage 3, aus der Gewebeprobe etabliert.](Specimen-mii-exa-test-data-biobank-organoid-1.md)

**effective**: 2022-04-14 10:00:00+0200

**value**: Cell structure alteration (morphologic abnormality)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-biobank-morphologie-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-morphologie"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://purl.obolibrary.org/obo/pato.owl",
      "code" : "PATO:0010006",
      "display" : "cell morphology"
    }]
  },
  "focus" : [{
    "reference" : "Specimen/mii-exa-test-data-biobank-organoid-1"
  }],
  "effectiveDateTime" : "2022-04-14T10:00:00+02:00",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "125393006",
      "display" : "Cell structure alteration (morphologic abnormality)"
    }]
  }
}

```
