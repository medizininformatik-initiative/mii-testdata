# mii-exa-test-data-patient-4-molgen-anforderung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-4-molgen-anforderung-1**

## Example ServiceRequest: mii-exa-test-data-patient-4-molgen-anforderung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MolGen Anforderung genetischer Test](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/auftragsnummern`/7B369EB0

**status**: Active

**intent**: Order

**category**: Laboratory procedure (procedure)

**code**: Molekulargenetische Untersuchung (Stufendiagnostik) der relevanten Gene

**subject**: [Markus Sequenziert Male, DoB: 1972-11-25 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-002)](Patient-mii-exa-test-data-molgen-patient-2.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-04-01 --> 2024-04-15](Encounter-mii-exa-test-data-molgen-encounter-2.md)

**authoredOn**: 2022-11-30

**requester**: [Practitioner Robert Koch (official)](Practitioner-mii-exa-test-data-practitioner-physician-2.md)

**reasonCode**: Eigenanamnese: Siegelringkarzinom des Magens, diffus wachsend, Mutter an Brustkrebs verstorben

**reasonReference**: [Condition Bösartige Neubildung: Oberlappen (-Bronchus)](Condition-mii-exa-test-data-molgen-diagnose-2.md)

**supportingInfo**: [FamilyMemberHistory: status = completed; date = 2022-11-30; relationship = Mother (person); sex = Female (finding); deceased[x] = true; reasonCode = Malignant adenomatous neoplasm (disorder)](FamilyMemberHistory-mii-exa-test-data-patient-4-molgen-family-member-history-1.md)

**specimen**: [Specimen: status = available; type = Tissue](Specimen-mii-exa-test-data-molgen-specimen-2.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-patient-4-molgen-anforderung-1",
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
    "value" : "7B369EB0"
  }],
  "status" : "active",
  "intent" : "order",
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
    "text" : "Molekulargenetische Untersuchung (Stufendiagnostik) der relevanten Gene"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-2"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-2"
  },
  "authoredOn" : "2022-11-30",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-2"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87737001",
      "display" : "Signet ring cell carcinoma (morphologic abnormality)"
    }],
    "text" : "Eigenanamnese: Siegelringkarzinom des Magens, diffus wachsend"
  },
  {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "429740004",
      "display" : "Family history of malignant neoplasm of breast (situation)"
    }],
    "text" : "Mutter an Brustkrebs verstorben"
  }],
  "reasonReference" : [{
    "reference" : "Condition/mii-exa-test-data-molgen-diagnose-2"
  }],
  "supportingInfo" : [{
    "reference" : "FamilyMemberHistory/mii-exa-test-data-patient-4-molgen-family-member-history-1"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-molgen-specimen-2"
  }]
}

```
