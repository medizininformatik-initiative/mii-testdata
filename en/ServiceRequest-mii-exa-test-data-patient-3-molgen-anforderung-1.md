# mii-exa-test-data-patient-3-molgen-anforderung-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-patient-3-molgen-anforderung-1**

## Example ServiceRequest: mii-exa-test-data-patient-3-molgen-anforderung-1

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profile: [MII PR MolGen Anforderung genetischer Test](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**status**: Active

**intent**: Order

**category**: Laboratory procedure (procedure)

**code**: BRAF: Exon 15 (Codon 600)

**subject**: [Petra Genomisch Female, DoB: 1985-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MOL-TEST-001)](Patient-mii-exa-test-data-molgen-patient-1.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); period = 2024-03-01 --> 2024-03-20](Encounter-mii-exa-test-data-molgen-encounter-1.md)

**authoredOn**: 2022-04-07

**requester**: [Practitioner Rahel Hirsch ](Practitioner-mii-exa-test-data-practitioner-physician-1.md)

**reasonCode**: Adenocarcinoma of anorectum (disorder)

**supportingInfo**: [FamilyMemberHistory: status = completed; date = 2022-04-07; relationship = Mother (person); sex = Female (finding); deceased[x] = true; reasonCode = Adenocarcinoma of anorectum (disorder)](FamilyMemberHistory-mii-exa-test-data-patient-3-molgen-family-member-history-1.md)

**specimen**: [Specimen: status = available; type = Whole blood](Specimen-mii-exa-test-data-molgen-specimen-1.md)

**note**: 

> 

Dringender Verdacht auf BRAF V600E bei bekanntem kolorektalem Karzinom. Therapieentscheidung abhaengig von Ergebnis.




## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-test-data-patient-3-molgen-anforderung-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/anforderung-genetischer-test"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
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
    },
    {
      "system" : "http://loinc.org",
      "code" : "53844-7",
      "display" : "BRAF gene targeted mutation analysis in Blood or Tissue by Molecular genetics method"
    },
    {
      "system" : "http://www.genenames.org/geneId",
      "code" : "HGNC:1097",
      "display" : "BRAF"
    }],
    "text" : "BRAF: Exon 15 (Codon 600)"
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-molgen-patient-1"
  },
  "encounter" : {
    "reference" : "Encounter/mii-exa-test-data-molgen-encounter-1"
  },
  "authoredOn" : "2022-04-07",
  "requester" : {
    "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "447886005",
      "display" : "Adenocarcinoma of anorectum (disorder)"
    }]
  }],
  "supportingInfo" : [{
    "reference" : "FamilyMemberHistory/mii-exa-test-data-patient-3-molgen-family-member-history-1"
  }],
  "specimen" : [{
    "reference" : "Specimen/mii-exa-test-data-molgen-specimen-1"
  }],
  "note" : [{
    "text" : "Dringender Verdacht auf BRAF V600E bei bekanntem kolorektalem Karzinom. Therapieentscheidung abhaengig von Ergebnis."
  }]
}

```
