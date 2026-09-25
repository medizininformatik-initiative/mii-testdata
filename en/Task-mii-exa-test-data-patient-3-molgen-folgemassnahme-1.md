# mii-exa-test-data-patient-3-molgen-folgemassnahme-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-folgemassnahme-1**

## Example Task: mii-exa-test-data-patient-3-molgen-folgemassnahme-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR MolGen Empfohlene Folgemaßnahme](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/empfohlene-folgemassnahme), [Followup Recommendation](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-followup-recommendation.html)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**basedOn**: [ServiceRequest Molecular genetic test (procedure)](ServiceRequest-mii-exa-test-data-patient-3-molgen-anforderung-1.md)

**status**: Requested

**intent**: proposal

**code**: Genetic counseling recommended

**description**: Genetische Beratung empfohlen mit Dr. Rosalind Franklin

**for**: [Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001)](Patient-mii-exa-test-data-molgen-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-20](Encounter-mii-exa-test-data-molgen-encounter-1.md)

**reasonCode**: Adenocarcinoma of anorectum (disorder)

**reasonReference**: [Observation Therapeutic Implication](Observation-mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "mii-exa-test-data-patient-3-molgen-folgemassnahme-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/empfohlene-folgemassnahme",
    "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/followup-recommendation"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/mii-exa-test-data-patient-3-molgen-anforderung-1"
  }],
  "status" : "requested",
  "intent" : "proposal",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA14020-4",
      "display" : "Genetic counseling recommended"
    }]
  },
  "description" : "Genetische Beratung empfohlen mit Dr. Rosalind Franklin",
  "for" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-1"
  },
  "reasonCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "447886005",
      "display" : "Adenocarcinoma of anorectum (disorder)"
    }]
  },
  "reasonReference" : {
    "reference" : "Observation/mii-exa-test-data-patient-3-molgen-therapeutische-implikation-1"
  }
}

```
