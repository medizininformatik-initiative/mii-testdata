# Fabry-Register Deutschland - MII KDS Test Data v2027.0.0-ballot.rc2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fabry-Register Deutschland**

## Example ResearchStudy: Fabry-Register Deutschland

Information Source: [https://www.charite.de/fhir/kds-testdata](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&canonical=https://www.charite.de/fhir/kds-testdata)

Security Label: [test health data (Details: ActReason code HTEST = 'test health data')](http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html)

**identifier**: `https://www.charite.de/fhir/sid/fabry-register`/FABRY-REG-DE

**title**: Fabry-Register Deutschland

**status**: Active

**description**: 

Krankheitsspezifisches Register zur Verlaufsbeobachtung von Patientinnen und Patienten mit Morbus Fabry unter Enzymersatztherapie.



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "mii-exa-test-data-patient-13-register-study",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "identifier" : [{
    "system" : "https://www.charite.de/fhir/sid/fabry-register",
    "value" : "FABRY-REG-DE"
  }],
  "title" : "Fabry-Register Deutschland",
  "status" : "active",
  "description" : "Krankheitsspezifisches Register zur Verlaufsbeobachtung von Patientinnen und Patienten mit Morbus Fabry unter Enzymersatztherapie."
}

```
