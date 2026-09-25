# mii-exa-test-data-bundle-symptom-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-bundle-symptom-1**

## Example Bundle: mii-exa-test-data-bundle-symptom-1



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-test-data-bundle-symptom-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "type" : "transaction",
  "timestamp" : "2025-06-18T13:51:00+02:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/Patient/mii-exa-test-data-symptom-patient-1",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-test-data-symptom-patient-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_mii-exa-test-data-symptom-patient-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-test-data-symptom-patient-1</b></p><a name=\"mii-exa-test-data-symptom-patient-1\"> </a><a name=\"hcmii-exa-test-data-symptom-patient-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Helene Symptomatika  Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)</p><hr/></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
        "value" : "SYMP-TEST-001"
      }],
      "name" : [{
        "family" : "Symptomatika",
        "given" : ["Helene"]
      }],
      "gender" : "female",
      "birthDate" : "1994-08-21"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Patient/mii-exa-test-data-symptom-patient-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Encounter/mii-exa-test-data-symptom-encounter-1",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-test-data-symptom-encounter-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_mii-exa-test-data-symptom-encounter-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-test-data-symptom-encounter-1</b></p><a name=\"mii-exa-test-data-symptom-encounter-1\"> </a><a name=\"hcmii-exa-test-data-symptom-encounter-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB\">ActCode: AMB</a> (ambulatory)</p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-symptom-patient-1.html\">Helene Symptomatika  Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)</a></p><p><b>period</b>: 2025-03-04 --&gt; 2025-03-04</p></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "AMB",
        "display" : "ambulatory"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
      },
      "period" : {
        "start" : "2025-03-04",
        "end" : "2025-03-04"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Encounter/mii-exa-test-data-symptom-encounter-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-symptom-condition-1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-symptom-condition-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-symptom-condition-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-symptom-condition-1</b></p><a name=\"mii-exa-test-data-symptom-condition-1\"> </a><a name=\"hcmii-exa-test-data-symptom-condition-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition\">MII_PR_Symptom_Condition</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Condition Asserted Date</b>: 2025-03-04</p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/symptom-condition</code>/SYMP-CON-0001</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 6736007}\">Moderate (severity modifier)</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 398057008}, {http://fhir.de/CodeSystem/bfarm/icd-10-gm G44.2}\">Chronische Spannungskopfschmerzen</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 69536005}\">Head structure</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-symptom-patient-1.html\">Helene Symptomatika  Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-symptom-encounter-1.html\">Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-03-04 --&gt; 2025-03-04</a></p><p><b>onset</b>: 2009 --&gt; 2012</p><p><b>recordedDate</b>: 2025-03-04</p><h3>Evidences</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Detail</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 25064002}\">Headache</span></td><td><a href=\"Observation-mii-exa-test-data-symptom-observation-1.html\">Observation Symptom</a></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2025-03-04"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/symptom-condition",
        "value" : "SYMP-CON-0001"
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active",
          "display" : "Active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed",
          "display" : "Confirmed"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item",
          "display" : "Problem List Item"
        }]
      }],
      "severity" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "6736007",
          "display" : "Moderate (severity modifier)"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "398057008",
          "display" : "Tension-type headache"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2026",
          "code" : "G44.2",
          "display" : "Spannungskopfschmerz"
        }],
        "text" : "Chronische Spannungskopfschmerzen"
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "69536005",
          "display" : "Head structure"
        }]
      }],
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-symptom-encounter-1"
      },
      "onsetPeriod" : {
        "start" : "2009",
        "_start" : {
          "extension" : [{
            "url" : "http://fhir.de/StructureDefinition/lebensphase",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://snomed.info/sct",
                "code" : "263659003",
                "display" : "Adolescence (qualifier value)"
              }]
            }
          }]
        },
        "end" : "2012",
        "_end" : {
          "extension" : [{
            "url" : "http://fhir.de/StructureDefinition/lebensphase",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://snomed.info/sct",
                "code" : "263659003",
                "display" : "Adolescence (qualifier value)"
              }]
            }
          }]
        }
      },
      "recordedDate" : "2025-03-04",
      "evidence" : [{
        "code" : [{
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "25064002",
            "display" : "Headache"
          }]
        }],
        "detail" : [{
          "reference" : "Observation/mii-exa-test-data-symptom-observation-1"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-test-data-symptom-condition-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-symptom-condition-2",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-symptom-condition-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-symptom-condition-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-symptom-condition-2</b></p><a name=\"mii-exa-test-data-symptom-condition-2\"> </a><a name=\"hcmii-exa-test-data-symptom-condition-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition\">MII_PR_Symptom_Condition</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Condition Asserted Date</b>: 2023-11-20</p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/symptom-condition</code>/SYMP-CON-0002</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 6736007}\">Moderate (severity modifier)</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 84114007}, {http://fhir.de/CodeSystem/bfarm/icd-10-gm I50.9}\">Chronische Herzinsuffizienz</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-symptom-patient-1.html\">Helene Symptomatika  Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-symptom-encounter-1.html\">Encounter: status = finished; class = ambulatory (ActCode#AMB); period = 2025-03-04 --&gt; 2025-03-04</a></p><p><b>onset</b>: 2023-11-20</p><p><b>recordedDate</b>: 2025-03-04</p><h3>Stages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Summary</b></td><td><b>Assessment</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 421704003}\">New York Heart Association Classification - Class II</span></td><td><a href=\"Observation-mii-exa-test-data-symptom-observation-3.html\">Observation Symptom</a></td><td><span title=\"Codes:{http://snomed.info/sct 260998006}\">Clinical staging (qualifier value)</span></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2023-11-20"
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/symptom-condition",
        "value" : "SYMP-CON-0002"
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active",
          "display" : "Active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed",
          "display" : "Confirmed"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item",
          "display" : "Problem List Item"
        }]
      }],
      "severity" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "6736007",
          "display" : "Moderate (severity modifier)"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "84114007",
          "display" : "Heart failure"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2026",
          "code" : "I50.9",
          "display" : "Herzinsuffizienz, nicht näher bezeichnet"
        }],
        "text" : "Chronische Herzinsuffizienz"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-symptom-encounter-1"
      },
      "onsetDateTime" : "2023-11-20",
      "recordedDate" : "2025-03-04",
      "stage" : [{
        "summary" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "421704003",
            "display" : "New York Heart Association Classification - Class II"
          }]
        },
        "assessment" : [{
          "reference" : "Observation/mii-exa-test-data-symptom-observation-3"
        }],
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "260998006",
            "display" : "Clinical staging (qualifier value)"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-test-data-symptom-condition-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-symptom-observation-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-symptom-observation-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-symptom-observation-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-symptom-observation-1</b></p><a name=\"mii-exa-test-data-symptom-observation-1\"> </a><a name=\"hcmii-exa-test-data-symptom-observation-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation\">MII_PR_Symptom_Observation</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Supporting info</b>: <a href=\"Condition-mii-exa-test-data-symptom-condition-1.html\">Condition Tension-type headache</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/symptom-observation</code>/SYMP-OBS-0001</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category exam}\">Exam</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 75325-1}\">Symptom</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-symptom-patient-1.html\">Helene Symptomatika  Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)</a></p><p><b>effective</b>: 2025-03-04</p><p><b>issued</b>: 2025-03-04 10:30:00+0100</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 25064002}\">Drueckender, beidseitiger Kopfschmerz</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 69536005}\">Head structure</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 84100007}\">History taking</span></p><p><b>hasMember</b>: <a href=\"Observation-mii-exa-test-data-symptom-observation-2.html\">Observation Pain severity - 0-10 verbal numeric rating [Score] - Reported</a></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 260864003}\">Frequency (attribute)</span></td><td>Kopfschmerzen an mehr als 15 Tagen pro Monat</td></tr></table></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo",
        "valueReference" : {
          "reference" : "Condition/mii-exa-test-data-symptom-condition-1"
        }
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/symptom-observation",
        "value" : "SYMP-OBS-0001"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "75325-1",
          "display" : "Symptom"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
      },
      "effectiveDateTime" : "2025-03-04",
      "issued" : "2025-03-04T10:30:00+01:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "25064002",
          "display" : "Headache"
        }],
        "text" : "Drueckender, beidseitiger Kopfschmerz"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "69536005",
          "display" : "Head structure"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "84100007",
          "display" : "History taking"
        }]
      },
      "hasMember" : [{
        "reference" : "Observation/mii-exa-test-data-symptom-observation-2"
      }],
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "260864003",
            "display" : "Frequency (attribute)"
          }]
        },
        "valueString" : "Kopfschmerzen an mehr als 15 Tagen pro Monat"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-symptom-observation-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-symptom-observation-2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-symptom-observation-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-symptom-observation-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-symptom-observation-2</b></p><a name=\"mii-exa-test-data-symptom-observation-2\"> </a><a name=\"hcmii-exa-test-data-symptom-observation-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation\">MII_PR_Symptom_Observation</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/symptom-observation</code>/SYMP-OBS-0002</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 72514-3}\">Pain severity - 0-10 verbal numeric rating [Score] - Reported</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-symptom-patient-1.html\">Helene Symptomatika  Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)</a></p><p><b>effective</b>: 2025-03-03</p><p><b>issued</b>: 2025-03-04 10:30:00+0100</p><p><b>value</b>: 6</p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-symptom-device-1.html\">Device: status = active; type = Application program software</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>0 (kein Schmerz) bis 10 (staerkster vorstellbarer Schmerz)</td></tr></table><p><b>derivedFrom</b>: <a href=\"QuestionnaireResponse-mii-exa-test-data-symptom-questionnaireresponse-1.html\">Response to Questionnaire 'Unspecified Questionnaire' about '-&gt;Helene Symptomatika  Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)'</a></p></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/symptom-observation",
        "value" : "SYMP-OBS-0002"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey",
          "display" : "Survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "72514-3",
          "display" : "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
      },
      "effectiveDateTime" : "2025-03-03",
      "issued" : "2025-03-04T10:30:00+01:00",
      "valueInteger" : 6,
      "device" : {
        "reference" : "Device/mii-exa-test-data-symptom-device-1"
      },
      "referenceRange" : [{
        "text" : "0 (kein Schmerz) bis 10 (staerkster vorstellbarer Schmerz)"
      }],
      "derivedFrom" : [{
        "reference" : "QuestionnaireResponse/mii-exa-test-data-symptom-questionnaireresponse-1"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-symptom-observation-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-symptom-observation-3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-symptom-observation-3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-symptom-observation-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-symptom-observation-3</b></p><a name=\"mii-exa-test-data-symptom-observation-3\"> </a><a name=\"hcmii-exa-test-data-symptom-observation-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation\">MII_PR_Symptom_Observation</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Supporting info</b>: <a href=\"Condition-mii-exa-test-data-symptom-condition-2.html\">Condition Heart failure</a></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/symptom-observation</code>/SYMP-OBS-0003</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category exam}\">Exam</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 75325-1}\">Symptom</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-symptom-patient-1.html\">Helene Symptomatika  Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)</a></p><p><b>effective</b>: 2025-03-04</p><p><b>issued</b>: 2025-03-04 11:00:00+0100</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 60845006}\">Luftnot bei staerkerer Belastung (Treppensteigen ueber zwei Etagen)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 84100007}\">History taking</span></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo",
        "valueReference" : {
          "reference" : "Condition/mii-exa-test-data-symptom-condition-2"
        }
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/symptom-observation",
        "value" : "SYMP-OBS-0003"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "75325-1",
          "display" : "Symptom"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
      },
      "effectiveDateTime" : "2025-03-04",
      "issued" : "2025-03-04T11:00:00+01:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "60845006",
          "display" : "Dyspnea on exertion"
        }],
        "text" : "Luftnot bei staerkerer Belastung (Treppensteigen ueber zwei Etagen)"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "84100007",
          "display" : "History taking"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-symptom-observation-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-symptom-observation-4",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-symptom-observation-4",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-symptom-observation-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-symptom-observation-4</b></p><a name=\"mii-exa-test-data-symptom-observation-4\"> </a><a name=\"hcmii-exa-test-data-symptom-observation-4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation\">MII_PR_Symptom_Observation</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/symptom-observation</code>/SYMP-OBS-0004</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category exam}\">Exam</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 404640003}\">Dizziness</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-symptom-patient-1.html\">Helene Symptomatika  Female, DoB: 1994-08-21 ( https://www.charite.de/fhir/sid/patientenidentifikation#SYMP-TEST-001)</a></p><p><b>effective</b>: 2025-03-04</p><p><b>issued</b>: 2025-03-04 11:10:00+0100</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason asked-unknown}\">Asked But Unknown</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 84100007}\">History taking</span></p></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/symptom-observation",
        "value" : "SYMP-OBS-0004"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "exam",
          "display" : "Exam"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "404640003",
          "display" : "Dizziness"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
      },
      "effectiveDateTime" : "2025-03-04",
      "issued" : "2025-03-04T11:10:00+01:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "asked-unknown",
          "display" : "Asked But Unknown"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "84100007",
          "display" : "History taking"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-symptom-observation-4"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-symptom-device-1",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-symptom-device-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-symptom-device-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-symptom-device-1</b></p><a name=\"mii-exa-test-data-symptom-device-1\"> </a><a name=\"hcmii-exa-test-data-symptom-device-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Active</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>Kopfschmerztagebuch-App</td><td>User Friendly name</td></tr></table><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 706689003}\">Application program software</span></p></div>"
      },
      "status" : "active",
      "deviceName" : [{
        "name" : "Kopfschmerztagebuch-App",
        "type" : "user-friendly-name"
      }],
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "706689003",
          "display" : "Application program software"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-symptom-device-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/QuestionnaireResponse/mii-exa-test-data-symptom-questionnaireresponse-1",
    "resource" : {
      "resourceType" : "QuestionnaireResponse",
      "id" : "mii-exa-test-data-symptom-questionnaireresponse-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"QuestionnaireResponse_mii-exa-test-data-symptom-questionnaireresponse-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: QuestionnaireResponse mii-exa-test-data-symptom-questionnaireresponse-1</b></p><a name=\"mii-exa-test-data-symptom-questionnaireresponse-1\"> </a><a name=\"hcmii-exa-test-data-symptom-questionnaireresponse-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The linkID for the item\">LinkID</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Text for the item\">Text</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the item can appear in the instance\">Definition</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"The type of the item\">Answer</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_q_root.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"QuestionnaireResponseRoot\" class=\"hierarchy\"/> mii-exa-test-data-symptom-questionnaireresponse-1</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Questionnaire:None specified</td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck00.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-q-string.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Item\" class=\"hierarchy\"/> schmerzintensitaet-nrs</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Wie stark waren Ihre Kopfschmerzen heute (0-10)?</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">6</td></tr>\r\n<tr><td colspan=\"4\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-symptom-patient-1"
      },
      "authored" : "2025-03-03T18:00:00+01:00",
      "item" : [{
        "linkId" : "schmerzintensitaet-nrs",
        "text" : "Wie stark waren Ihre Kopfschmerzen heute (0-10)?",
        "answer" : [{
          "valueInteger" : 6
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "QuestionnaireResponse/mii-exa-test-data-symptom-questionnaireresponse-1"
    }
  }]
}

```
