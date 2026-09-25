# mii-exa-test-data-biobank-dna-konzentration-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-biobank-dna-konzentration-1**

## Example Observation: mii-exa-test-data-biobank-dna-konzentration-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Biobank Observation DNA Konzentration](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-dna-konzentration)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: DNA double strand [Mass/volume] in Specimen

**focus**: [Specimen: extension = Aliquot (MII CS Biobank Probenebene#ALIQUOT),Biosafety level 2 (qualifier value); identifier = https://www.charite.de/fhir/sid/Bioproben#BP_000021; status = available; type = Deoxyribonucleic acid specimen (specimen); receivedTime = 2024-02-15 13:30:00+0100; note = DNA-Extraktion aus dem EDTA-Vollblut, Konzentration 50 ng/uL.](Specimen-mii-exa-test-data-biobank-specimen-dna-1.md)

**effective**: 2024-02-16 09:30:00+0100

**value**: 40 ng/µL (Details: UCUM codeng/uL = 'ng/uL')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-biobank-dna-konzentration-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-pr-biobank-observation-dna-konzentration"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "72496-3",
      "display" : "DNA double strand [Mass/volume] in Specimen"
    }]
  },
  "focus" : [{
    "reference" : "Specimen/mii-exa-test-data-biobank-specimen-dna-1"
  }],
  "effectiveDateTime" : "2024-02-16T09:30:00+01:00",
  "valueQuantity" : {
    "value" : 40,
    "unit" : "ng/µL",
    "system" : "http://unitsofmeasure.org",
    "code" : "ng/uL"
  }
}

```
