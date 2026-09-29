# Kontrollschnitt p63-Immunhistochemie - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kontrollschnitt p63-Immunhistochemie**

## Example Specimen: Kontrollschnitt p63-Immunhistochemie

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Profiles: [MII PR Patho Specimen](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen), [MII PR Biobank Specimen Bioprobe Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**Specimen Focus**: [RelatedPerson: relationship = Donor of control material](RelatedPerson-mii-exa-test-data-patho-relatedperson-kontrollspender-1.md)

**identifier**: `https://www.charite.de/fhir/sid/patho/befundbericht`/E_24_001_KTR_P63

**accessionIdentifier**: `https://www.charite.de/fhir/sid/patho/befundbericht`/E_24_001

**status**: Available

**type**: Tissue section (specimen)

**subject**: [Klaus Gewebeprobe Male, DoB: 1963-06-30 ( https://www.charite.de/fhir/sid/patientenidentifikation#PATH-TEST-001)](Patient-mii-exa-test-data-patho-patient-1.md)

### Collections

| | | |
| :--- | :--- | :--- |
| - | **Collected[x]** | **Method** |
| * | 2024-01-18 08:00:00+0100 | Tissue processing technique (procedure) |

### Processings

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Description** | **Procedure** | **Time[x]** |
| * | p63-Immunhistochemie (Positivkontrolle) | Staining method | 2024-01-18 09:00:00+0100 |

### Containers

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Additive[x]** |
| * | Microscope slide (physical object) | Microscope slide mounting medium (substance) |

**note**: 

> 

Tonsillengewebe eines Kontrollspenders, mitgefuehrt als Positivkontrolle der p63-Faerbung.




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-test-data-patho-specimen-p63-kontrolle",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
    "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "extension" : [{
    "url" : "http://hl7.eu/fhir/laboratory/StructureDefinition/specimen-focus",
    "valueReference" : {
      "reference" : "RelatedPerson/mii-exa-test-data-patho-relatedperson-kontrollspender-1"
    }
  }],
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
    "value" : "E_24_001_KTR_P63"
  }],
  "accessionIdentifier" : {
    "system" : "https://www.charite.de/fhir/sid/patho/befundbericht",
    "value" : "E_24_001"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "430856003",
      "display" : "Tissue section (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-test-data-patho-patient-1"
  },
  "collection" : {
    "collectedDateTime" : "2024-01-18T08:00:00+01:00",
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "13283003",
        "display" : "Tissue processing technique (procedure)"
      }]
    }
  },
  "processing" : [{
    "description" : "p63-Immunhistochemie (Positivkontrolle)",
    "procedure" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "127790008",
        "display" : "Staining method"
      }]
    },
    "timeDateTime" : "2024-01-18T09:00:00+01:00"
  }],
  "container" : [{
    "type" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "433466003",
        "display" : "Microscope slide (physical object)"
      }]
    },
    "additiveCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "430862008",
        "display" : "Microscope slide mounting medium (substance)"
      }]
    }
  }],
  "note" : [{
    "text" : "Tonsillengewebe eines Kontrollspenders, mitgefuehrt als Positivkontrolle der p63-Faerbung."
  }]
}

```
