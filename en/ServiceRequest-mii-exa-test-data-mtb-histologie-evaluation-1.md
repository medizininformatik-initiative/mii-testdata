# MTB Histologie Evaluation Auftrag - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Histologie Evaluation Auftrag**

## Example ServiceRequest: MTB Histologie Evaluation Auftrag

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Histologie-Evaluation Auftrag](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Draft

**intent**: Proposal

**code**: Refer for histology (procedure)

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**reasonReference**: [Observation Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method](Observation-mii-exa-test-data-mtb-tumorzellgehalt-1.md)

**specimen**: [Specimen: status = available; type = Tissue](Specimen-mii-exa-test-data-mtb-specimen-1.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-mtb-histologie-evaluation-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "draft",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "183825009",
      "display" : "Refer for histology (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "reasonReference" : [{
    "reference" : "Observation/mii-exa-test-data-mtb-tumorzellgehalt-1"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-mtb-specimen-1"
  }]
}

```
