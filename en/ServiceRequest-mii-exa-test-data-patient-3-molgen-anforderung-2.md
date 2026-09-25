# mii-exa-test-data-patient-3-molgen-anforderung-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-anforderung-2**

## Example ServiceRequest: mii-exa-test-data-patient-3-molgen-anforderung-2

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MolGen Anforderung genetischer Test](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Related artifact**: No display for RelatedArtifact (type: citation; citation: S3-Leitlinie Lungenkarzinom, Version 4.0 (April 2025), Empfehlung 6.60, AWMF 020-007OL; url: https://register.awmf.org/de/leitlinien/detail/020-007OL)

**status**: Active

**intent**: Order

**category**: Laboratory procedure (procedure)

**code**: NGS-Panel NSCLC: EGFR Exon 18-21, BRAF V600, ALK, ROS1, RET, NTRK 1-3, KRAS G12C, MET Exon 14, NRG1, HER2 Exon 8/18-21

**subject**: [Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001)](Patient-mii-exa-test-data-molgen-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-20](Encounter-mii-exa-test-data-molgen-encounter-1.md)

**authoredOn**: 2024-03-15

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonCode**: Non-small cell lung cancer

**specimen**: [Specimen: status = available; type = Whole blood](Specimen-mii-exa-test-data-molgen-specimen-1.md)

**note**: 

> 

NSCLC Stadium IV. Molekularpathologische Untersuchung gemaess S3-Leitlinie Empfehlung 6.60 vor Einleitung der Erstlinientherapie.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-patient-3-molgen-anforderung-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/workflow-relatedArtifact",
    "valueRelatedArtifact" : {
      "type" : "citation",
      "citation" : "S3-Leitlinie Lungenkarzinom, Version 4.0 (April 2025), Empfehlung 6.60, AWMF 020-007OL",
      "url" : "https://register.awmf.org/de/leitlinien/detail/020-007OL"
    }
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
    "text" : "NGS-Panel NSCLC: EGFR Exon 18-21, BRAF V600, ALK, ROS1, RET, NTRK 1-3, KRAS G12C, MET Exon 14, NRG1, HER2 Exon 8/18-21"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-1"
  },
  "authoredOn" : "2024-03-15",
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
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-molgen-specimen-1"
  }],
  "note" : [{
    "text" : "NSCLC Stadium IV. Molekularpathologische Untersuchung gemaess S3-Leitlinie Empfehlung 6.60 vor Einleitung der Erstlinientherapie."
  }]
}

```
