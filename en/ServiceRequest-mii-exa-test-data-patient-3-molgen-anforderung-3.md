# mii-exa-test-data-patient-3-molgen-anforderung-3 - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-anforderung-3**

## Example ServiceRequest: mii-exa-test-data-patient-3-molgen-anforderung-3

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MolGen Anforderung genetischer Test](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/auftragsnummern`/TK-2024-0314-NSCLC

**status**: Completed

**intent**: Proposal

**category**: Laboratory procedure (procedure)

**code**: Molekularpathologische Diagnostik vor Erstlinientherapie

**subject**: [Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001)](Patient-mii-exa-test-data-molgen-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-20](Encounter-mii-exa-test-data-molgen-encounter-1.md)

**authoredOn**: 2024-03-14

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonCode**: Non-small cell lung cancer

**note**: 

> 

Beschluss der interdisziplinaeren Tumorkonferenz vom 14.03.2024: molekularpathologische Diagnostik vor Einleitung der Erstlinientherapie.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-patient-3-molgen-anforderung-3",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/auftragsnummern",
    "value" : "TK-2024-0314-NSCLC"
  }],
  "status" : "completed",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "108252007",
      "display" : "Laboratory procedure (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "405825005",
      "display" : "Molecular genetic test (procedure)"
    }],
    "text" : "Molekularpathologische Diagnostik vor Erstlinientherapie"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-1"
  },
  "authoredOn" : "2024-03-14",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "254637007",
      "display" : "Non-small cell lung cancer"
    }]
  }],
  "note" : [{
    "text" : "Beschluss der interdisziplinaeren Tumorkonferenz vom 14.03.2024: molekularpathologische Diagnostik vor Einleitung der Erstlinientherapie."
  }]
}

```
