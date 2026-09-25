# MTB Follow-Up - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MTB Follow-Up**

## Example ClinicalImpression: MTB Follow-Up

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MTB Clinical Impresssion](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Completed

**statusReason**: medical-reason

**code**: Follow-up encounter (procedure)

**subject**: [Elena Tumorfall Female, DoB: 1971-04-12 ( https://www.charite.de/fhir/sid/patientenidentifikation#MTB-TEST-001)](Patient-mii-exa-test-data-mtb-patient-1.md)

**effective**: 2024-09-15

**previous**: [ClinicalImpression: extension = exhausted (MII CS Leitlinienbehandlung Status#exhausted); status = completed; effective[x] = 2024-01-15 --> 2024-06-30](ClinicalImpression-mii-exa-test-data-mtb-behandlungsepisode-1.md)

### Investigations

| | |
| :--- | :--- |
| - | **Code** |
| * | completed |

**supportingInfo**: 

* [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-mii-exa-test-data-mtb-systemische-therapie-1.md)
* [Claim: status = active; type = Institutional; use = claim; created = 2024-04-01; priority = Normal](Claim-mii-exa-test-data-mtb-antrag-kostenuebernahme-1.md)
* [ClaimResponse: extension = Angenommen; status = active; type = Institutional; use = claim; created = 2024-04-20; outcome = complete](ClaimResponse-mii-exa-test-data-mtb-antwort-kostenuebernahme-1.md)



## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "mii-exa-test-data-mtb-follow-up-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "status" : "completed",
  "statusReason" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-systemische-therapie-status-grund",
      "code" : "medical-reason"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "390906007",
      "display" : "Follow-up encounter (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-mtb-patient-1"
  },
  "effectiveDateTime" : "2024-09-15",
  "previous" : {
    "reference" : "ClinicalImpression/mii-exa-test-data-mtb-behandlungsepisode-1"
  },
  "investigation" : [{
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status",
        "code" : "completed"
      }]
    }
  }],
  "supportingInfo" : [{
    "reference" : "Procedure/mii-exa-test-data-mtb-systemische-therapie-1"
  },
  {
    "reference" : "Claim/mii-exa-test-data-mtb-antrag-kostenuebernahme-1"
  },
  {
    "reference" : "ClaimResponse/mii-exa-test-data-mtb-antwort-kostenuebernahme-1"
  }]
}

```
