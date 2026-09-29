# mii-exa-test-data-patient-13-molgen-variante - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-13-molgen-variante**

## Example Observation: mii-exa-test-data-patient-13-molgen-variante

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Final

**code**: Genetic variant assessment

**subject**: [Miriam Kastner (official) Female, DoB: 1989-06-11 ( Medical record number)](Patient-mii-exa-test-data-patient-13.md)

**encounter**: [Encounter: identifier = Visit number; status = finished; class = ambulatory (ActCode#AMB); type = Einrichtungskontakt,Untersuchung und Behandlung; serviceType = Sonstige Fachabteilung; period = 2023-12-08 09:00:00+0100 --> 2023-12-08 10:45:00+0100](Encounter-mii-exa-test-data-patient-13-encounter-2.md)

**effective**: 2023-12-04

**value**: Positive

**note**: 

> 

Sanger-Sequenzierung aller kodierenden Exons des GLA-Gens; heterozygote pathogene Variante nachgewiesen. Befund durch die Humangenetik freigegeben am 2023-12-08.


> **component****code**: Gene studied [ID]**value**: GLA

> **component****code**: Genetic variation clinical significance [Imp]**value**: Pathogenic



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-test-data-patient-13-molgen-variante",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
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
      "code" : "69548-6",
      "display" : "Genetic variant assessment"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patient-13"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-patient-13-encounter-2"
  },
  "effectiveDateTime" : "2023-12-04",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA6576-8",
      "display" : "Positive"
    }]
  },
  "note" : [{
    "text" : "Sanger-Sequenzierung aller kodierenden Exons des GLA-Gens; heterozygote pathogene Variante nachgewiesen. Befund durch die Humangenetik freigegeben am 2023-12-08."
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "48018-6",
        "display" : "Gene studied [ID]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.genenames.org/geneId",
        "code" : "HGNC:4296",
        "display" : "GLA"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "53037-8",
        "display" : "Genetic variation clinical significance [Imp]"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "LA6668-3",
        "display" : "Pathogenic"
      }]
    }
  }]
}

```
