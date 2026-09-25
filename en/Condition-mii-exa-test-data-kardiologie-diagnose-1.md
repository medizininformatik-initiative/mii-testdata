# mii-exa-test-data-kardiologie-diagnose-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-kardiologie-diagnose-1**

## Example Condition: mii-exa-test-data-kardiologie-diagnose-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR Kardio Diagnose](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Condition Asserted Date**: 2020-03-15

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**severity**: Severe (severity modifier) (qualifier value)

**code**: Akuter transmuraler Myokardinfarkt der Vorderwand

**bodySite**: Left ventricular structure (body structure)

**subject**: [Karl Herzmann Male, DoB: 1949-11-02 ( https://www.charite.de/fhir/sid/patientenidentifikation#KARDIO-TEST-001)](Patient-mii-exa-test-data-kardiologie-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2025-03-10 --> 2025-03-18](Encounter-mii-exa-test-data-kardiologie-encounter-1.md)

**onset**: 51 Jahre (Details: UCUM codea = 'a')

**abatement**: 51 Jahre (Details: UCUM codea = 'a')

**recordedDate**: 2025-03-10

**recorder**: Facharzt fuer Kardiologie

**asserter**: Facharzt fuer Kardiologie

**note**: 

> 

Z.n. Vorderwandinfarkt 03/2020 mit PCI und Stentimplantation RIVA.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-test-data-kardiologie-diagnose-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-kardio/StructureDefinition/mii-pr-kardio-diagnose"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2020-03-15"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "resolved"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "24484000",
      "display" : "Severe (severity modifier) (qualifier value)"
    }]
  },
  "code" : {
    "coding" : [{
      "extension" : [{
        "url" : "http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit",
        "valueCoding" : {
          "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT",
          "code" : "G",
          "display" : "gesicherte Diagnose"
        }
      },
      {
        "url" : "http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen",
        "valueCoding" : {
          "system" : "http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen",
          "code" : "!",
          "display" : "Ausrufezeichen"
        }
      }],
      "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
      "version" : "2026",
      "code" : "I21.0",
      "display" : "Akuter transmuraler Myokardinfarkt der Vorderwand"
    },
    {
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "22298006",
      "display" : "Myocardial infarction (disorder)"
    }]
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "version" : "http://snomed.info/sct/900000000000207008/version/20260701",
      "code" : "87878005",
      "display" : "Left ventricular structure (body structure)"
    }]
  }],
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-kardiologie-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-kardiologie-encounter-1"
  },
  "onsetAge" : {
    "extension" : [{
      "url" : "http://fhir.de/StructureDefinition/lebensphase",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41847000",
          "display" : "Adulthood (qualifier value)"
        }]
      }
    }],
    "value" : 51,
    "unit" : "Jahre",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "abatementAge" : {
    "extension" : [{
      "url" : "http://fhir.de/StructureDefinition/lebensphase",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41847000",
          "display" : "Adulthood (qualifier value)"
        }]
      }
    }],
    "value" : 51,
    "unit" : "Jahre",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "recordedDate" : "2025-03-10",
  "recorder" : {
    "display" : "Facharzt fuer Kardiologie"
  },
  "asserter" : {
    "display" : "Facharzt fuer Kardiologie"
  },
  "note" : [{
    "text" : "Z.n. Vorderwandinfarkt 03/2020 mit PCI und Stentimplantation RIVA."
  }]
}

```
