# mii-exa-test-data-bundle-mikrobio-1 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-bundle-mikrobio-1**

## Example Bundle: mii-exa-test-data-bundle-mikrobio-1



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-test-data-bundle-mikrobio-1",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "type" : "transaction",
  "timestamp" : "2026-04-05T16:00:00+02:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/Patient/mii-exa-test-data-mikrobio-patient-1",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-test-data-mikrobio-patient-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_mii-exa-test-data-mikrobio-patient-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-test-data-mikrobio-patient-1</b></p><a name=\"mii-exa-test-data-mikrobio-patient-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-patient-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</p><hr/></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
        "value" : "MIKROBIO-TEST-001"
      }],
      "name" : [{
        "family" : "Sepsis",
        "given" : ["Sigmund"]
      }],
      "gender" : "male",
      "birthDate" : "1957-08-14"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Patient/mii-exa-test-data-mikrobio-patient-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Encounter/mii-exa-test-data-mikrobio-encounter-1",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-test-data-mikrobio-encounter-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_mii-exa-test-data-mikrobio-encounter-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-test-data-mikrobio-encounter-1</b></p><a name=\"mii-exa-test-data-mikrobio-encounter-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-encounter-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/encounter-identifier</code>/MIKROBIO-ENC-001</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>period</b>: 2026-04-01 --&gt; 2026-04-14</p></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
        "value" : "MIKROBIO-ENC-001"
      }],
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP",
        "display" : "inpatient encounter"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1"
      },
      "period" : {
        "start" : "2026-04-01",
        "end" : "2026-04-14"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Encounter/mii-exa-test-data-mikrobio-encounter-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-mikrobio-diagnose-1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-mikrobio-diagnose-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-mikrobio-diagnose-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-mikrobio-diagnose-1</b></p><a name=\"mii-exa-test-data-mikrobio-diagnose-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-diagnose-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose\">MII PR Diagnose Condition</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm A41.02}\">A41.02</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>recordedDate</b>: 2024-02-15</p><p><b>note</b>: </p><blockquote><div><p>Sepsis durch MRSA</p>\n</div></blockquote></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "A41.02"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1"
      },
      "recordedDate" : "2024-02-15",
      "note" : [{
        "text" : "Sepsis durch MRSA"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-test-data-mikrobio-diagnose-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Organization/mii-exa-test-data-mikrobio-organization-lab-1",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "mii-exa-test-data-mikrobio-organization-lab-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_mii-exa-test-data-mikrobio-organization-lab-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization mii-exa-test-data-mikrobio-organization-lab-1</b></p><a name=\"mii-exa-test-data-mikrobio-organization-lab-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-organization-lab-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier</code>/DIZ-CHA</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span></p><p><b>name</b>: Mikrobiologisches Labor Charité</p></div>"
      },
      "identifier" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
        "value" : "DIZ-CHA"
      }],
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }]
      }],
      "name" : "Mikrobiologisches Labor Charité"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization/mii-exa-test-data-mikrobio-organization-lab-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-mikrobio-specimen-1",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "mii-exa-test-data-mikrobio-specimen-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_mii-exa-test-data-mikrobio-specimen-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen mii-exa-test-data-mikrobio-specimen-1</b></p><a name=\"mii-exa-test-data-mikrobio-specimen-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-specimen-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Probennummer</code>/BLOOD-CULT-001</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 119297000}\">Blood specimen (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>BodySite</b></td></tr><tr><td style=\"display: none\">*</td><td>2026-04-02 08:30:00+0200</td><td><span title=\"Codes:{http://snomed.info/sct 28273000}\">Bilateral antecubital fossae (body structure)</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Probennummer",
        "value" : "BLOOD-CULT-001"
      }],
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "119297000",
          "display" : "Blood specimen (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1"
      },
      "collection" : {
        "collectedDateTime" : "2026-04-02T08:30:00+02:00",
        "bodySite" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "28273000",
            "display" : "Bilateral antecubital fossae (body structure)"
          }]
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Specimen/mii-exa-test-data-mikrobio-specimen-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-mikrobio-specimen-2",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "mii-exa-test-data-mikrobio-specimen-2",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_mii-exa-test-data-mikrobio-specimen-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen mii-exa-test-data-mikrobio-specimen-2</b></p><a name=\"mii-exa-test-data-mikrobio-specimen-2\"> </a><a name=\"hcmii-exa-test-data-mikrobio-specimen-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Probennummer</code>/URINE-001</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 122575003}\">Urine specimen (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>2026-04-02 09:00:00+0200</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Probennummer",
        "value" : "URINE-001"
      }],
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "122575003",
          "display" : "Urine specimen (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1"
      },
      "collection" : {
        "collectedDateTime" : "2026-04-02T09:00:00+02:00"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Specimen/mii-exa-test-data-mikrobio-specimen-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-mikrobio-probe-1",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "mii-exa-test-data-mikrobio-probe-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_mii-exa-test-data-mikrobio-probe-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen mii-exa-test-data-mikrobio-probe-1</b></p><a name=\"mii-exa-test-data-mikrobio-probe-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-probe-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe\">MII PR Mikrobio Probe</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Biobank Ebene</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#mii-cs-biobank-probenebene-PRIM.196RPROBE\">MII CS Biobank Probenebene: PRIMÄRPROBE</a> (Primärprobe)</p><p><b>MII EX Biobank Infektiositätsstatus</b>: <span title=\"Codes:{http://snomed.info/sct 409603009}\">Biosafety level 2 (qualifier value)</span></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Probennummer</code>/SPUTUM-001</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 119334006}\">Sputum specimen (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>receivedTime</b>: 2026-04-02 08:15:00+0200</p><p><b>request</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Quantity</b></td><td><b>BodySite</b></td><td><b>FastingStatus[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>2026-04-02 07:45:00+0200</td><td>5 mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span></td><td><span title=\"Codes:{http://snomed.info/sct 39607008}\">Lung structure (body structure)</span></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0916 NF}\">The patient indicated they did not fast prior to the procedure.</span></td></tr></table><h3>Processings</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Procedure</b></td><td><b>Time[x]</b></td></tr><tr><td style=\"display: none\">*</td><td/><td><span title=\"Codes:{http://snomed.info/sct 1186936003}\">Storage of specimen (procedure)</span></td><td>2026-04-02 08:15:00+0200 --&gt; 2026-04-02 09:30:00+0200</td></tr></table><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Capacity</b></td><td><b>SpecimenQuantity</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 83059008}\">Tube, device (physical object)</span></td><td>50 mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span></td><td>5 mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span></td></tr></table><p><b>note</b>: </p><blockquote><div><p>Morgensputum, makroskopisch purulent; Transport gekuehlt.</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene",
        "valueCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene",
          "code" : "PRIMÄRPROBE",
          "display" : "Primärprobe"
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "409603009",
            "display" : "Biosafety level 2 (qualifier value)"
          }]
        }
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Probennummer",
        "value" : "SPUTUM-001"
      }],
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "119334006",
          "display" : "Sputum specimen (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1"
      },
      "receivedTime" : "2026-04-02T08:15:00+02:00",
      "request" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "collection" : {
        "collectedDateTime" : "2026-04-02T07:45:00+02:00",
        "quantity" : {
          "value" : 5,
          "unit" : "mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        },
        "bodySite" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "39607008",
            "display" : "Lung structure (body structure)"
          }]
        },
        "fastingStatusCodeableConcept" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0916",
            "code" : "NF",
            "display" : "The patient indicated they did not fast prior to the procedure."
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 2,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 8,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "1186936003",
            "display" : "Storage of specimen (procedure)"
          }]
        },
        "timePeriod" : {
          "start" : "2026-04-02T08:15:00+02:00",
          "end" : "2026-04-02T09:30:00+02:00"
        }
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "83059008",
            "display" : "Tube, device (physical object)"
          }]
        },
        "capacity" : {
          "value" : 50,
          "unit" : "mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        },
        "specimenQuantity" : {
          "value" : 5,
          "unit" : "mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        }
      }],
      "note" : [{
        "text" : "Morgensputum, makroskopisch purulent; Transport gekuehlt."
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Specimen/mii-exa-test-data-mikrobio-probe-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Specimen/mii-exa-test-data-mikrobio-probe-2",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "mii-exa-test-data-mikrobio-probe-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_mii-exa-test-data-mikrobio-probe-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen mii-exa-test-data-mikrobio-probe-2</b></p><a name=\"mii-exa-test-data-mikrobio-probe-2\"> </a><a name=\"hcmii-exa-test-data-mikrobio-probe-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-probe\">MII PR Mikrobio Probe</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Biobank Ebene</b>: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene#mii-cs-biobank-probenebene-PRIM.196RPROBE\">MII CS Biobank Probenebene: PRIMÄRPROBE</a> (Primärprobe)</p><p><b>MII EX Biobank Infektiositätsstatus</b>: <span title=\"Codes:{http://snomed.info/sct 409603009}\">Biosafety level 2 (qualifier value)</span></p><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Probennummer</code>/TISSUE-001</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 128159001}\">Tissue specimen from colon (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>receivedTime</b>: 2026-04-04 09:40:00+0200</p><p><b>request</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Collected[x]</b></td><td><b>Quantity</b></td><td><b>Method</b></td><td><b>BodySite</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>2026-04-04 09:15:00+0200</td><td>1 mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span></td><td><span title=\"Codes:{http://snomed.info/sct 86273004}\">Biopsy (procedure)</span></td><td><span title=\"Codes:{http://snomed.info/sct 71854001}\">Colon structure (body structure)</span></td></tr></table><h3>Processings</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Procedure</b></td><td><b>Time[x]</b></td></tr><tr><td style=\"display: none\">*</td><td/><td><span title=\"Codes:{http://snomed.info/sct 1186936003}\">Storage of specimen (procedure)</span></td><td>2026-04-04 09:40:00+0200 --&gt; 2026-04-04 10:30:00+0200</td></tr></table><h3>Containers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Capacity</b></td><td><b>SpecimenQuantity</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 83059008}\">Tube, device (physical object)</span></td><td>10 mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span></td><td>1 mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span></td></tr></table><p><b>note</b>: </p><blockquote><div><p>Intraoperative Gewebeprobe bei Verdacht auf Anastomoseninsuffizienz; Abklemmen der Blutversorgung 09:05.</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-ebene",
        "valueCoding" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/mii-cs-biobank-probenebene",
          "code" : "PRIMÄRPROBE",
          "display" : "Primärprobe"
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/mii-ex-biobank-infektiositaetsstatus",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "409603009",
            "display" : "Biosafety level 2 (qualifier value)"
          }]
        }
      }],
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Probennummer",
        "value" : "TISSUE-001"
      }],
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "128159001",
          "display" : "Tissue specimen from colon (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1"
      },
      "receivedTime" : "2026-04-04T09:40:00+02:00",
      "request" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "collection" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/EinstellungBlutversorgung",
          "valueDateTime" : "2026-04-04T09:05:00+02:00"
        }],
        "collectedDateTime" : "2026-04-04T09:15:00+02:00",
        "quantity" : {
          "value" : 1,
          "unit" : "mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        },
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "86273004",
            "display" : "Biopsy (procedure)"
          }]
        },
        "bodySite" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "71854001",
            "display" : "Colon structure (body structure)"
          }]
        }
      },
      "processing" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Temperaturbedingungen",
          "valueRange" : {
            "low" : {
              "value" : 2,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            },
            "high" : {
              "value" : 8,
              "unit" : "°C",
              "system" : "http://unitsofmeasure.org",
              "code" : "Cel"
            }
          }
        }],
        "procedure" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "1186936003",
            "display" : "Storage of specimen (procedure)"
          }]
        },
        "timePeriod" : {
          "start" : "2026-04-04T09:40:00+02:00",
          "end" : "2026-04-04T10:30:00+02:00"
        }
      }],
      "container" : [{
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "83059008",
            "display" : "Tube, device (physical object)"
          }]
        },
        "capacity" : {
          "value" : 10,
          "unit" : "mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        },
        "specimenQuantity" : {
          "value" : 1,
          "unit" : "mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        }
      }],
      "note" : [{
        "text" : "Intraoperative Gewebeprobe bei Verdacht auf Anastomoseninsuffizienz; Abklemmen der Blutversorgung 09:05."
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Specimen/mii-exa-test-data-mikrobio-probe-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-mikrobio-device-maldi-1",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-mikrobio-device-maldi-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-mikrobio-device-maldi-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-mikrobio-device-maldi-1</b></p><a name=\"mii-exa-test-data-mikrobio-device-maldi-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-device-maldi-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/device-identifier</code>/MALDI-TOF-001</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>MALDI Biotyper</td><td>Model name</td></tr></table><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 469318003}\">Bacterial identification device (physical object)</span></p></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/device-identifier",
        "value" : "MALDI-TOF-001"
      }],
      "deviceName" : [{
        "name" : "MALDI Biotyper",
        "type" : "model-name"
      }],
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "469318003",
          "display" : "Bacterial identification device (physical object)"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-mikrobio-device-maldi-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-mikrobio-device-pcr-1",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-mikrobio-device-pcr-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-mikrobio-device-pcr-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-mikrobio-device-pcr-1</b></p><a name=\"mii-exa-test-data-mikrobio-device-pcr-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-device-pcr-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/device-identifier</code>/PCR-CYCLER-001</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>Real-Time PCR Cycler</td><td>Model name</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/device-identifier",
        "value" : "PCR-CYCLER-001"
      }],
      "deviceName" : [{
        "name" : "Real-Time PCR Cycler",
        "type" : "model-name"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-mikrobio-device-pcr-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-mikrobio-device-immunoassay-1",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-mikrobio-device-immunoassay-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-mikrobio-device-immunoassay-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-mikrobio-device-immunoassay-1</b></p><a name=\"mii-exa-test-data-mikrobio-device-immunoassay-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-device-immunoassay-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/device-identifier</code>/IMMUNOASSAY-001</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>Immunoassay Analyzer</td><td>Model name</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/device-identifier",
        "value" : "IMMUNOASSAY-001"
      }],
      "deviceName" : [{
        "name" : "Immunoassay Analyzer",
        "type" : "model-name"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-mikrobio-device-immunoassay-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-mikrobio-device-bactec-1",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-mikrobio-device-bactec-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-mikrobio-device-bactec-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-mikrobio-device-bactec-1</b></p><a name=\"mii-exa-test-data-mikrobio-device-bactec-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-device-bactec-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/device-identifier</code>/BACTEC-001</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>Blutkultur-Automat</td><td>User Friendly name</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/device-identifier",
        "value" : "BACTEC-001"
      }],
      "deviceName" : [{
        "name" : "Blutkultur-Automat",
        "type" : "user-friendly-name"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-mikrobio-device-bactec-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-mikrobio-device-mikroskop-1",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-mikrobio-device-mikroskop-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-mikrobio-device-mikroskop-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-mikrobio-device-mikroskop-1</b></p><a name=\"mii-exa-test-data-mikrobio-device-mikroskop-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-device-mikroskop-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/device-identifier</code>/MIKROSKOP-001</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>Lichtmikroskop Labor 2</td><td>User Friendly name</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/device-identifier",
        "value" : "MIKROSKOP-001"
      }],
      "deviceName" : [{
        "name" : "Lichtmikroskop Labor 2",
        "type" : "user-friendly-name"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-mikrobio-device-mikroskop-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-mikrobio-device-vitek-1",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-mikrobio-device-vitek-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-mikrobio-device-vitek-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-mikrobio-device-vitek-1</b></p><a name=\"mii-exa-test-data-mikrobio-device-vitek-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-device-vitek-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/device-identifier</code>/VITEK-001</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>VITEK 2</td><td>Model name</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/device-identifier",
        "value" : "VITEK-001"
      }],
      "deviceName" : [{
        "name" : "VITEK 2",
        "type" : "model-name"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-mikrobio-device-vitek-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-test-data-mikrobio-servicerequest-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-test-data-mikrobio-servicerequest-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-test-data-mikrobio-servicerequest-1</b></p><a name=\"mii-exa-test-data-mikrobio-servicerequest-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-servicerequest-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/service-request</code>/MIKROBIO-SR-001</p><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 252418007}\">Microbiology procedure (procedure)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>authoredOn</b>: 2026-04-02 08:00:00+0200</p></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/service-request",
        "value" : "MIKROBIO-SR-001"
      }],
      "status" : "completed",
      "intent" : "order",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "252418007",
          "display" : "Microbiology procedure (procedure)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1"
      },
      "authoredOn" : "2026-04-02T08:00:00+02:00"
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-allgemeine-kultur-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-allgemeine-kultur-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-allgemeine-kultur-1</b></p><a name=\"mii-exa-test-data-mikrobio-allgemeine-kultur-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-allgemeine-kultur-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur\">MII PR Mikrobio Allgemeine Kultur</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/allg-kultur-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11475-1}\">Microorganism identified in Specimen by Culture</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-02 10:00:00+0200</p><p><b>issued</b>: 2026-04-03 14:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 10828004}\">Positive (qualifier value)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation POS}\">Positive</span></p><p><b>note</b>: </p><blockquote><div><p>Wuchs nach 18h aerob; weitere Differenzierung folgt.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 703750006}\">Aerobic culture technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-bactec-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#BACTEC-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "allg-kultur-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "11475-1",
          "display" : "Microorganism identified in Specimen by Culture"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-02T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-03T14:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20250401",
          "code" : "10828004",
          "display" : "Positive (qualifier value)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "POS",
          "display" : "Positive"
        }]
      }],
      "note" : [{
        "text" : "Wuchs nach 18h aerob; weitere Differenzierung folgt."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "703750006",
          "display" : "Aerobic culture technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-bactec-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "BACTEC-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-allgemeine-kultur-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-allgemeine-kultur-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-allgemeine-kultur-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-allgemeine-kultur-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-allgemeine-kultur-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur\">MII PR Mikrobio Allgemeine Kultur</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/allg-kultur-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11475-1}\">Microorganism identified in Specimen by Culture</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-02 11:00:00+0200</p><p><b>issued</b>: 2026-04-03 15:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Kultur konnte nicht ausgewertet werden (Probe abgelaufen).</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 703750006}\">Aerobic culture technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "allg-kultur-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11475-1",
          "display" : "Microorganism identified in Specimen by Culture"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-02T11:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-03T15:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Kultur konnte nicht ausgewertet werden (Probe abgelaufen)."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "703750006",
          "display" : "Aerobic culture technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-spezifische-bestimmung-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-spezifische-bestimmung-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-spezifische-bestimmung-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-spezifische-bestimmung-1</b></p><a name=\"mii-exa-test-data-mikrobio-spezifische-bestimmung-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-spezifische-bestimmung-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung\">MII PR Mikrobio Spezifische Bestimmung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: reflex</li></ul></blockquote><p><b>identifier</b>: Observation Instance Identifier/spez-bestimmung-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 100897-8}\">Staphylococcus aureus [Presence] in Specimen by Organism specific culture</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-03 15:00:00+0200</p><p><b>issued</b>: 2026-04-03 16:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 3092008}\">Staphylococcus aureus (organism)</span></p><p><b>note</b>: </p><blockquote><div><p>Identifikation via spezifische Kultur.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 703752003}\">Organism specific culture technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-maldi-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#MALDI-TOF-001; type = Bacterial identification device (physical object)</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "reflex"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "spez-bestimmung-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "100897-8",
          "display" : "Staphylococcus aureus [Presence] in Specimen by Organism specific culture"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-03T15:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-03T16:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20250401",
          "code" : "3092008",
          "display" : "Staphylococcus aureus (organism)"
        }]
      },
      "note" : [{
        "text" : "Identifikation via spezifische Kultur."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "703752003",
          "display" : "Organism specific culture technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-maldi-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "MALDI-TOF-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-spezifische-bestimmung-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-allgemeine-bestimmung-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-allgemeine-bestimmung-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-allgemeine-bestimmung-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-allgemeine-bestimmung-1</b></p><a name=\"mii-exa-test-data-mikrobio-allgemeine-bestimmung-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-allgemeine-bestimmung-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung\">MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/allg-bestimmung-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 41852-5}\">Microorganism or agent identified in Specimen</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-03 15:30:00+0200</p><p><b>issued</b>: 2026-04-03 16:30:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 3092008}\">Staphylococcus aureus (organism)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Bakteriennachweis in Gram-Faerbung; weitere Typisierung folgt.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 278289002}\">Microscopy technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-maldi-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#MALDI-TOF-001; type = Bacterial identification device (physical object)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "allg-bestimmung-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "41852-5",
          "display" : "Microorganism or agent identified in Specimen"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-03T15:30:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-03T16:30:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20250401",
          "code" : "3092008",
          "display" : "Staphylococcus aureus (organism)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Bakteriennachweis in Gram-Faerbung; weitere Typisierung folgt."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "278289002",
          "display" : "Microscopy technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-maldi-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "MALDI-TOF-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-allgemeine-bestimmung-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-mikroskopie-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-mikroskopie-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-mikroskopie-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-mikroskopie-1</b></p><a name=\"mii-exa-test-data-mikrobio-mikroskopie-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-mikroskopie-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie\">MII PR Mikrobio Allgemeine Mikroskopie</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Mikrobio Färbung</b>: <span title=\"Codes:{http://snomed.info/sct 62777006}\">Gram stain method</span></p><p><b>identifier</b>: Observation Instance Identifier/mikroskopie-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 105059-0}\">Microscopic observation [Identifier] in Specimen</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-02 10:30:00+0200</p><p><b>issued</b>: 2026-04-02 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 70003006}\">Gram-positive cocci in clusters (finding)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Mikroskopisch typisches Bild fuer S. aureus.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 702661004}\">Light microscopy technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-mikroskop-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#MIKROSKOP-001</a></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 103392008}\">Semi-quantitative value (qualifier value)</span></td><td><span title=\"Codes:{http://snomed.info/sct 441517005}\">Present two plus out of three plus (qualifier value)</span></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "62777006",
            "display" : "Gram stain method"
          }]
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "mikroskopie-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "105059-0",
          "display" : "Microscopic observation [Identifier] in Specimen"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-02T10:30:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-02T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20250401",
          "code" : "70003006",
          "display" : "Gram-positive cocci in clusters (finding)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Mikroskopisch typisches Bild fuer S. aureus."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702661004",
          "display" : "Light microscopy technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-mikroskop-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "MIKROSKOP-001"
        }
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "103392008",
            "display" : "Semi-quantitative value (qualifier value)"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "441517005",
            "display" : "Present two plus out of three plus (qualifier value)"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-mikroskopie-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-spezifische-mikroskopie-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-spezifische-mikroskopie-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-spezifische-mikroskopie-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-spezifische-mikroskopie-1</b></p><a name=\"mii-exa-test-data-mikrobio-spezifische-mikroskopie-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-spezifische-mikroskopie-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie\">MII PR Mikrobio Spezifische Mikroskopie</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Mikrobio Färbung</b>: <span title=\"Codes:{http://snomed.info/sct 36878004}\">Acid fast Kinyoun's cold carbolfuchsin stain method (procedure)</span></p><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-mikroskopie-1.html\">Observation Microscopic observation [Identifier] in Specimen</a></li><li>type: reflex</li></ul></blockquote><p><b>identifier</b>: Observation Instance Identifier/spezifische-mikroskopie-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 72357-7}\">Microscopic observation [Presence] in Specimen by Acid fast stain</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-02 10:00:00+0200</p><p><b>issued</b>: 2026-04-02 11:30:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 260373001}\">Detected (qualifier value)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Saeurefeste Staebchen 2+ — V.a. Mykobakterien, Kultur und PCR angefordert.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 702661004}\">Light microscopy technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-probe-1.html\">Specimen: extension = Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = https://www.charite.de/fhir/sid/Probennummer#SPUTUM-001; status = available; type = Sputum specimen (specimen); receivedTime = 2026-04-02 08:15:00+0200; note = Morgensputum, makroskopisch purulent; Transport gekuehlt.</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-mikroskop-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#MIKROSKOP-001</a></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 103392008}\">Semi-quantitative value (qualifier value)</span></td><td><span title=\"Codes:{http://snomed.info/sct 441517005}\">Present two plus out of three plus (qualifier value)</span></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "36878004",
            "display" : "Acid fast Kinyoun's cold carbolfuchsin stain method (procedure)"
          }]
        }
      },
      {
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-mikroskopie-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "reflex"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "spezifische-mikroskopie-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "72357-7",
          "display" : "Microscopic observation [Presence] in Specimen by Acid fast stain"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-02T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-02T11:30:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20250401",
          "code" : "260373001",
          "display" : "Detected (qualifier value)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Saeurefeste Staebchen 2+ — V.a. Mykobakterien, Kultur und PCR angefordert."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702661004",
          "display" : "Light microscopy technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-probe-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "SPUTUM-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-mikroskop-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "MIKROSKOP-001"
        }
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "103392008",
            "display" : "Semi-quantitative value (qualifier value)"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "441517005",
            "display" : "Present two plus out of three plus (qualifier value)"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-spezifische-mikroskopie-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-keimzahl-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-keimzahl-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-keimzahl-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-keimzahl-1</b></p><a name=\"mii-exa-test-data-mikrobio-keimzahl-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-keimzahl-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl\">MII PR Mikrobio Keimzahl</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/167569004\">SNOMED CT: 167569004</a> (Urine culture - mixed growth (finding))</p><p><b>identifier</b>: Observation Instance Identifier/keimzahl-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 49223-1}\">Colony count [#/volume] in Specimen by Visual count</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-03 14:00:00+0200</p><p><b>issued</b>: 2026-04-03 15:00:00+0200</p><p><b>value</b>: &gt;=100000 /mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/mL = '/mL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>note</b>: </p><blockquote><div><p>Signifikante Bakteriurie.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 410681005}\">Count of entities (property) (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-2.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#URINE-001; status = available; type = Urine specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-bactec-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#BACTEC-001</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>0 /mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/mL = '/mL')</span></td><td>100000 /mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/mL = '/mL')</span></td></tr></table></div>"
      },
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "167569004",
          "display" : "Urine culture - mixed growth (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "keimzahl-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "49223-1",
          "display" : "Colony count [#/volume] in Specimen by Visual count"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-03T14:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-03T15:00:00+02:00",
      "valueQuantity" : {
        "value" : 100000,
        "_value" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/quantity-precision",
            "valueInteger" : 0
          }]
        },
        "comparator" : ">=",
        "unit" : "/mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "/mL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "note" : [{
        "text" : "Signifikante Bakteriurie."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "410681005",
          "display" : "Count of entities (property) (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-2",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "URINE-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-bactec-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "BACTEC-001"
        }
      },
      "referenceRange" : [{
        "low" : {
          "value" : 0,
          "unit" : "/mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "/mL"
        },
        "high" : {
          "value" : 100000,
          "unit" : "/mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "/mL"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-keimzahl-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-empfindlichkeit-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-empfindlichkeit-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-empfindlichkeit-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-empfindlichkeit-1</b></p><a name=\"mii-exa-test-data-mikrobio-empfindlichkeit-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-empfindlichkeit-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit\">MII PR Mikrobio Empfindlichkeit</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: reflex</li></ul></blockquote><p><b>identifier</b>: Observation Instance Identifier/empfindlichkeit-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 19000-9}\">Vancomycin [Susceptibility]</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-04 09:00:00+0200</p><p><b>issued</b>: 2026-04-04 10:00:00+0200</p><p><b>value</b>: &lt;=1 mg/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/L = 'mg/L')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation S}\">Susceptible</span></p><p><b>note</b>: </p><blockquote><div><p>Vancomycin als empirische Therapie geeignet; gemaess EUCAST-Kriterien empfindlich.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708073008}\">Minimum inhibitory concentration susceptibility test technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-vitek-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#VITEK-001</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>0 mg/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/L = 'mg/L')</span></td><td>2 mg/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/L = 'mg/L')</span></td></tr></table></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "reflex"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "empfindlichkeit-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "19000-9",
          "display" : "Vancomycin [Susceptibility]"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-04T09:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-04T10:00:00+02:00",
      "valueQuantity" : {
        "value" : 1,
        "_value" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/quantity-precision",
            "valueInteger" : 1
          }]
        },
        "comparator" : "<=",
        "unit" : "mg/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/L"
      },
      "interpretation" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm",
              "code" : "EUCAST",
              "display" : "EUCAST"
            }]
          }
        }],
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "S",
          "display" : "Susceptible"
        }]
      }],
      "note" : [{
        "text" : "Vancomycin als empirische Therapie geeignet; gemaess EUCAST-Kriterien empfindlich."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708073008",
          "display" : "Minimum inhibitory concentration susceptibility test technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-vitek-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "VITEK-001"
        }
      },
      "referenceRange" : [{
        "low" : {
          "value" : 0,
          "unit" : "mg/L",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/L"
        },
        "high" : {
          "value" : 2,
          "unit" : "mg/L",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/L"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-empfindlichkeit-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1</b></p><a name=\"mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit\">MII PR Mikrobio Voraussichtliche Empfindlichkeit</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-resistenzmechanismen-1.html\">Observation Methicillin resistance mecA gene [Presence] by Molecular method</a></li><li>type: reflex</li></ul></blockquote><p><b>identifier</b>: Observation Instance Identifier/voraus-empfindlichkeit-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 92255-9}\">Methicillin [Susceptibility] by Genotype method</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-04 07:00:00+0200</p><p><b>issued</b>: 2026-04-04 08:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation R}\">Resistant</span></p><p><b>note</b>: </p><blockquote><div><p>Prognose der Methicillin-Resistenz aufgrund mecA-Nachweis.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708060009}\">Genotype determination technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-resistenzmechanismen-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "reflex"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "voraus-empfindlichkeit-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "92255-9",
          "display" : "Methicillin [Susceptibility] by Genotype method"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-04T07:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-04T08:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "version" : "3.0.0",
          "code" : "R",
          "display" : "Resistant"
        }]
      },
      "note" : [{
        "text" : "Prognose der Methicillin-Resistenz aufgrund mecA-Nachweis."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708060009",
          "display" : "Genotype determination technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-resistenzkategorie-status-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-resistenzkategorie-status-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-resistenzkategorie-status-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-resistenzkategorie-status-1</b></p><a name=\"mii-exa-test-data-mikrobio-resistenzkategorie-status-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-resistenzkategorie-status-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status\">MII PR Mikrobio Resistenzkategorie Status</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-spezifische-bestimmung-1.html\">Observation Staphylococcus aureus [Presence] in Specimen by Organism specific culture</a></li><li>type: reflex</li></ul></blockquote><p><b>identifier</b>: Observation Instance Identifier/resistenzkategorie-status-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie mrsa-status}\">MRSA-Status</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-04 10:30:00+0200</p><p><b>issued</b>: 2026-04-04 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 10828004}\">Positive</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation POS}\">Positive</span></p><p><b>note</b>: </p><blockquote><div><p>MRSA-Befund (Methicillin-resistenter Staphylococcus aureus nachgewiesen) — Isolation noetig.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708068002}\">Molecular genetics technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p><p><b>derivedFrom</b>: <a href=\"Observation-mii-exa-test-data-mikrobio-resistenzmechanismen-1.html\">Observation Methicillin resistance mecA gene [Presence] by Molecular method</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-spezifische-bestimmung-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "reflex"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "resistenzkategorie-status-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie",
          "version" : "2027.0.0-ballot2",
          "code" : "mrsa-status",
          "display" : "MRSA-Status"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-04T10:30:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-04T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20250401",
          "code" : "10828004",
          "display" : "Positive"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "POS",
          "display" : "Positive"
        }]
      }],
      "note" : [{
        "text" : "MRSA-Befund (Methicillin-resistenter Staphylococcus aureus nachgewiesen) — Isolation noetig."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708068002",
          "display" : "Molecular genetics technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      },
      "derivedFrom" : [{
        "reference" : "Observation/mii-exa-test-data-mikrobio-resistenzmechanismen-1"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-resistenzkategorie-status-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-mrgn-klasse-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-mrgn-klasse-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-mrgn-klasse-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-mrgn-klasse-1</b></p><a name=\"mii-exa-test-data-mikrobio-mrgn-klasse-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-mrgn-klasse-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse\">MII PR Mikrobio MRGN Klasse</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/mrgn-klasse-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 99780-9}\">Multidrug resistant gram-negative organism classification [Type]</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-04 11:00:00+0200</p><p><b>issued</b>: 2026-04-04 11:30:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA33215-7}\">3MRGN</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation R}\">Resistant</span></p><p><b>note</b>: </p><blockquote><div><p>3MRGN gemaess KRINKO 2012; Cephalosporin, Acylureidopenicilline, Fluorchinolone -Resistenz nachgewiesen.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 14788002}\">Antimicrobial susceptibility test (procedure)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-2.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#URINE-001; status = available; type = Urine specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-vitek-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#VITEK-001</a></p><p><b>derivedFrom</b>: <a href=\"Observation-mii-exa-test-data-mikrobio-empfindlichkeit-1.html\">Observation Vancomycin [Susceptibility]</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "mrgn-klasse-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "99780-9",
          "display" : "Multidrug resistant gram-negative organism classification [Type]"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-04T11:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-04T11:30:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "LA33215-7",
          "display" : "3MRGN"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "R",
          "display" : "Resistant"
        }]
      }],
      "note" : [{
        "text" : "3MRGN gemaess KRINKO 2012; Cephalosporin, Acylureidopenicilline, Fluorchinolone -Resistenz nachgewiesen."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "14788002",
          "display" : "Antimicrobial susceptibility test (procedure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-2",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "URINE-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-vitek-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "VITEK-001"
        }
      },
      "derivedFrom" : [{
        "reference" : "Observation/mii-exa-test-data-mikrobio-empfindlichkeit-1"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-mrgn-klasse-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-resistenzmechanismen-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-resistenzmechanismen-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-resistenzmechanismen-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-resistenzmechanismen-1</b></p><a name=\"mii-exa-test-data-mikrobio-resistenzmechanismen-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-resistenzmechanismen-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten\">MII PR Mikrobio Resistenzmechanismen Determinanten</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-spezifische-bestimmung-1.html\">Observation Staphylococcus aureus [Presence] in Specimen by Organism specific culture</a></li><li>type: reflex</li></ul></blockquote><p><b>identifier</b>: Observation Instance Identifier/resistenz-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48813-0}\">Methicillin resistance mecA gene [Presence] by Molecular method</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-04 07:00:00+0200</p><p><b>issued</b>: 2026-04-04 07:30:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 260373001}\">Detected (qualifier value)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation POS}\">Positive</span></p><p><b>note</b>: </p><blockquote><div><p>mecA-Gen via PCR nachgewiesen.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708068002}\">Molecular genetics technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-spezifische-bestimmung-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "reflex"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "resistenz-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "48813-0",
          "display" : "Methicillin resistance mecA gene [Presence] by Molecular method"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-04T07:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-04T07:30:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20250401",
          "code" : "260373001",
          "display" : "Detected (qualifier value)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "POS",
          "display" : "Positive"
        }]
      }],
      "note" : [{
        "text" : "mecA-Gen via PCR nachgewiesen."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708068002",
          "display" : "Molecular genetics technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-resistenzmechanismen-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-virulenzfaktor-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-virulenzfaktor-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-virulenzfaktor-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-virulenzfaktor-1</b></p><a name=\"mii-exa-test-data-mikrobio-virulenzfaktor-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-virulenzfaktor-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor\">MII PR Mikrobio Virulenzfaktor</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/virulenz-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48816-3}\">Staphylococcus aureus Panton-Valentine leukocidin gene [Presence] in Isolate or Specimen by Molecular genetics method</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-04 08:00:00+0200</p><p><b>issued</b>: 2026-04-04 08:30:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 260415000}\">Not detected (qualifier value)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation NEG}\">Negative</span></p><p><b>note</b>: </p><blockquote><div><p>Panton-Valentine-Leukocidin (PVL) nicht nachgewiesen — kein Hinweis auf erhoehte Virulenz.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 70601000052104}\">Real-time polymerase chain reaction technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "virulenz-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "48816-3",
          "display" : "Staphylococcus aureus Panton-Valentine leukocidin gene [Presence] in Isolate or Specimen by Molecular genetics method"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-04T08:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-04T08:30:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "version" : "http://snomed.info/sct/900000000000207008/version/20250401",
          "code" : "260415000",
          "display" : "Not detected (qualifier value)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "NEG",
          "display" : "Negative"
        }]
      }],
      "note" : [{
        "text" : "Panton-Valentine-Leukocidin (PVL) nicht nachgewiesen — kein Hinweis auf erhoehte Virulenz."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "70601000052104",
          "display" : "Real-time polymerase chain reaction technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-virulenzfaktor-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-antigen-antikoerper-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-antigen-antikoerper-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-antigen-antikoerper-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-antigen-antikoerper-1</b></p><a name=\"mii-exa-test-data-mikrobio-antigen-antikoerper-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-antigen-antikoerper-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ\">MII PR Mikrobio Antigen Antikoerper Quantitativ</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118128002\">SNOMED CT: 118128002</a> (Specimen hemolyzed (finding))</p><p><b>identifier</b>: Observation Instance Identifier/antigen-ak-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 5060-9}\">Borrelia burgdorferi Ab [Units/volume] in Serum by Immunoassay</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 09:00:00+0200</p><p><b>issued</b>: 2026-04-05 10:00:00+0200</p><p><b>value</b>: &gt;42 [IU]/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[IU]/mL = '[IU]/mL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>note</b>: </p><blockquote><div><p>Borrelien-Antikörper nachweisbar. Klinische Korrelation empfohlen.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 726449005}\">Immunoassay technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-immunoassay-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#IMMUNOASSAY-001</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>0 [IU]/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[IU]/mL = '[IU]/mL')</span></td><td>10 [IU]/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[IU]/mL = '[IU]/mL')</span></td></tr></table></div>"
      },
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118128002",
          "display" : "Specimen hemolyzed (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "antigen-ak-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "5060-9",
          "display" : "Borrelia burgdorferi Ab [Units/volume] in Serum by Immunoassay"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T09:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T10:00:00+02:00",
      "valueQuantity" : {
        "value" : 42,
        "_value" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/quantity-precision",
            "valueInteger" : 0
          }]
        },
        "comparator" : ">",
        "unit" : "[IU]/mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "[IU]/mL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "note" : [{
        "text" : "Borrelien-Antikörper nachweisbar. Klinische Korrelation empfohlen."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "726449005",
          "display" : "Immunoassay technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-immunoassay-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "IMMUNOASSAY-001"
        }
      },
      "referenceRange" : [{
        "low" : {
          "value" : 0,
          "unit" : "[IU]/mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "[IU]/mL"
        },
        "high" : {
          "value" : 10,
          "unit" : "[IU]/mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "[IU]/mL"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-antigen-antikoerper-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-aviditaet-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-aviditaet-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-aviditaet-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-aviditaet-1</b></p><a name=\"mii-exa-test-data-mikrobio-aviditaet-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-aviditaet-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet\">MII PR Mikrobio Aviditaet</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/aviditaet-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 56990-5}\">Toxoplasma gondii IgG Ab avidity [Ratio] in Serum by Immunoassay</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:30:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: &lt;14 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Low</span></p><p><b>note</b>: </p><blockquote><div><p>Niedrige Avidität spricht fuer kuerzlich durchgemachte Infektion.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 726449005}\">Immunoassay technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-immunoassay-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#IMMUNOASSAY-001</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>40 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td><td>100 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "aviditaet-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "56990-5",
          "display" : "Toxoplasma gondii IgG Ab avidity [Ratio] in Serum by Immunoassay"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:30:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueQuantity" : {
        "value" : 14,
        "_value" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/quantity-precision",
            "valueInteger" : 0
          }]
        },
        "comparator" : "<",
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "L",
          "display" : "Low"
        }]
      }],
      "note" : [{
        "text" : "Niedrige Avidität spricht fuer kuerzlich durchgemachte Infektion."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "726449005",
          "display" : "Immunoassay technique"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-immunoassay-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "IMMUNOASSAY-001"
        }
      },
      "referenceRange" : [{
        "low" : {
          "value" : 40,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        },
        "high" : {
          "value" : 100,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org",
          "code" : "%"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-aviditaet-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-titer-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-titer-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-titer-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-titer-1</b></p><a name=\"mii-exa-test-data-mikrobio-titer-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-titer-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer\">MII PR Mikrobio Titer</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/titer-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 22080-6}\">Adenovirus Ab [Titer] in Serum</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 11:00:00+0200</p><p><b>issued</b>: 2026-04-05 12:00:00+0200</p><p><b>value</b>: 1/128 {titer}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{titer} = '{titer}')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>note</b>: </p><blockquote><div><p>Titerstufe 1:128</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708104000}\">Agglutination technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-immunoassay-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#IMMUNOASSAY-001</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>0 {titer}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{titer} = '{titer}')</span></td><td>32 {titer}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{titer} = '{titer}')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "titer-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "22080-6",
          "display" : "Adenovirus Ab [Titer] in Serum"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T11:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T12:00:00+02:00",
      "valueRatio" : {
        "numerator" : {
          "value" : 1
        },
        "denominator" : {
          "value" : 128,
          "unit" : "{titer}",
          "system" : "http://unitsofmeasure.org",
          "code" : "{titer}"
        }
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "note" : [{
        "text" : "Titerstufe 1:128"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708104000",
          "display" : "Agglutination technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-immunoassay-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "IMMUNOASSAY-001"
        }
      },
      "referenceRange" : [{
        "low" : {
          "value" : 0,
          "unit" : "{titer}",
          "system" : "http://unitsofmeasure.org",
          "code" : "{titer}"
        },
        "high" : {
          "value" : 32,
          "unit" : "{titer}",
          "system" : "http://unitsofmeasure.org",
          "code" : "{titer}"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-titer-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-ct-wert-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-ct-wert-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-ct-wert-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-ct-wert-1</b></p><a name=\"mii-exa-test-data-mikrobio-ct-wert-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-ct-wert-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert\">MII PR Mikrobio CT Wert</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/ct-wert-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 74039-9}\">Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-03 17:00:00+0200</p><p><b>issued</b>: 2026-04-03 18:00:00+0200</p><p><b>value</b>: &lt;21.3 Ct<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>note</b>: </p><blockquote><div><p>Niedriger CT-Wert (21.3) spricht fuer hohe Erregerlast.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 70601000052104}\">Real-time PCR technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>0 Ct<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td><td>35 Ct<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td></tr></table><p><b>derivedFrom</b>: <a href=\"Observation-mii-exa-test-data-mikrobio-molekulare-pathogenlast-1.html\">Observation SARS-CoV-2 (COVID-19) N gene [#/volume] (viral load) in Respiratory system specimen by NAA with probe detection</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "ct-wert-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "74039-9",
          "display" : "Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-03T17:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-03T18:00:00+02:00",
      "valueQuantity" : {
        "value" : 21.3,
        "_value" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/quantity-precision",
            "valueInteger" : 1
          }]
        },
        "comparator" : "<",
        "unit" : "Ct",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "note" : [{
        "text" : "Niedriger CT-Wert (21.3) spricht fuer hohe Erregerlast."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "70601000052104",
          "display" : "Real-time PCR technique"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      },
      "referenceRange" : [{
        "low" : {
          "value" : 0,
          "unit" : "Ct",
          "system" : "http://unitsofmeasure.org",
          "code" : "1"
        },
        "high" : {
          "value" : 35,
          "unit" : "Ct",
          "system" : "http://unitsofmeasure.org",
          "code" : "1"
        }
      }],
      "derivedFrom" : [{
        "reference" : "Observation/mii-exa-test-data-mikrobio-molekulare-pathogenlast-1"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-ct-wert-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-molekulare-pathogenlast-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-molekulare-pathogenlast-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-molekulare-pathogenlast-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-molekulare-pathogenlast-1</b></p><a name=\"mii-exa-test-data-mikrobio-molekulare-pathogenlast-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-molekulare-pathogenlast-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast\">MII PR Mikrobio Molekulare Pathogenlast</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/pathogenlast-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 95521-1}\">SARS-CoV-2 (COVID-19) N gene [#/volume] (viral load) in Respiratory system specimen by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-03 18:00:00+0200</p><p><b>issued</b>: 2026-04-03 19:00:00+0200</p><p><b>value</b>: &gt;=350000 Copies/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1/mL = '1/mL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>note</b>: </p><blockquote><div><p>Hohe Pathogenlast — klinische Relevanz mit Behandelndem besprechen.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 70601000052104}\">Real-time PCR technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>0 Copies/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1/mL = '1/mL')</span></td><td>500 Copies/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1/mL = '1/mL')</span></td><td>Nachweisgrenze des Assays</td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "pathogenlast-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "95521-1",
          "display" : "SARS-CoV-2 (COVID-19) N gene [#/volume] (viral load) in Respiratory system specimen by NAA with probe detection"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-03T18:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-03T19:00:00+02:00",
      "valueQuantity" : {
        "value" : 350000,
        "_value" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/quantity-precision",
            "valueInteger" : 0
          }]
        },
        "comparator" : ">=",
        "unit" : "Copies/mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "1/mL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "note" : [{
        "text" : "Hohe Pathogenlast — klinische Relevanz mit Behandelndem besprechen."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "70601000052104",
          "display" : "Real-time PCR technique"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      },
      "referenceRange" : [{
        "low" : {
          "value" : 0,
          "unit" : "Copies/mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "1/mL"
        },
        "high" : {
          "value" : 500,
          "unit" : "Copies/mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "1/mL"
        },
        "text" : "Nachweisgrenze des Assays"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-molekulare-pathogenlast-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-bartlett-score-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-bartlett-score-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-bartlett-score"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-bartlett-score-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-bartlett-score-1</b></p><a name=\"mii-exa-test-data-mikrobio-bartlett-score-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-bartlett-score-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-bartlett-score\">MII PR Mikrobio Bartlett Score</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/bartlett-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 75371-5}\">Bartlett score of Sputum Qualitative by Light microscopy</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-02 11:15:00+0200</p><p><b>issued</b>: 2026-04-02 11:30:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA21390-2}\">+1 Active inflammation</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Sputum-Probe verwertbar (Bartlett-Score positiv).</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 702661004}\">Light microscopy technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-mikroskop-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#MIKROSKOP-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "bartlett-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "75371-5",
          "display" : "Bartlett score of Sputum Qualitative by Light microscopy"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-02T11:15:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-02T11:30:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "LA21390-2",
          "display" : "+1 Active inflammation"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Sputum-Probe verwertbar (Bartlett-Score positiv)."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702661004",
          "display" : "Light microscopy technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-mikroskop-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "MIKROSKOP-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-bartlett-score-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-nugent-score-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-nugent-score-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-nugent-score-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-nugent-score-1</b></p><a name=\"mii-exa-test-data-mikrobio-nugent-score-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-nugent-score-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score\">MII PR Mikrobio Nugent Score</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/nugent-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 101433-1}\">Bacterial vaginosis score in Vaginal fluid Qualitative by Nugent</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-02 11:30:00+0200</p><p><b>issued</b>: 2026-04-02 12:00:00+0200</p><p><b>value</b>: &gt;=7 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>note</b>: </p><blockquote><div><p>Nugent-Score 7 spricht fuer bakterielle Vaginose.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 702661004}\">Light microscopy technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-mikroskop-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#MIKROSKOP-001</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>0 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td><td>3 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "nugent-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "101433-1",
          "display" : "Bacterial vaginosis score in Vaginal fluid Qualitative by Nugent"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-02T11:30:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-02T12:00:00+02:00",
      "valueQuantity" : {
        "value" : 7,
        "_value" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/quantity-precision",
            "valueInteger" : 0
          }]
        },
        "comparator" : ">=",
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "note" : [{
        "text" : "Nugent-Score 7 spricht fuer bakterielle Vaginose."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702661004",
          "display" : "Light microscopy technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-mikroskop-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "MIKROSKOP-001"
        }
      },
      "referenceRange" : [{
        "low" : {
          "value" : 0,
          "unit" : "1",
          "system" : "http://unitsofmeasure.org",
          "code" : "1"
        },
        "high" : {
          "value" : 3,
          "unit" : "1",
          "system" : "http://unitsofmeasure.org",
          "code" : "1"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-nugent-score-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-allgemeine-bestimmung-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-allgemeine-bestimmung-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-allgemeine-bestimmung-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-allgemeine-bestimmung-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-allgemeine-bestimmung-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-allgemeine-bestimmung-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung\">MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/allgemeine-bestimmung-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 41852-5}\">Microorganism or agent identified in Specimen</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 260373001}\">Detected (qualifier value)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (allgemeine-bestimmung)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 278289002}\">Microscopy technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "allgemeine-bestimmung-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "41852-5"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "260373001",
          "display" : "Detected (qualifier value)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (allgemeine-bestimmung)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "278289002",
          "display" : "Microscopy technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-allgemeine-bestimmung-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-allgemeine-bestimmung-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-allgemeine-bestimmung-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-allgemeine-bestimmung-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-allgemeine-bestimmung-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-allgemeine-bestimmung-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-allgemeine-bestimmung-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-bestimmung\">MII PR Mikrobio Allgemeine Bestimmung (Identifizierung)</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/allgemeine-bestimmung-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 41852-5}\">Microorganism or agent identified in Specimen</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 278289002}\">Microscopy technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "allgemeine-bestimmung-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "41852-5"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "278289002"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-allgemeine-bestimmung-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-allgemeine-kultur-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-allgemeine-kultur-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-allgemeine-kultur-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-allgemeine-kultur-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-allgemeine-kultur-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-allgemeine-kultur\">MII PR Mikrobio Allgemeine Kultur</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/allgemeine-kultur-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11475-1}\">Microorganism identified in Specimen by Culture</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 264868006}\">No growth (qualifier value)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (allgemeine-kultur)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 703750006}\">Aerobic culture technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "allgemeine-kultur-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11475-1"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "264868006",
          "display" : "No growth (qualifier value)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (allgemeine-kultur)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "703750006",
          "display" : "Aerobic culture technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ\">MII PR Mikrobio Antigen Antikoerper Quantitativ</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/antigen-antikoerper-quantitativ-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 5060-9}\">Borrelia burgdorferi Ab [Units/volume] in Serum by Immunoassay</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: &lt;8 [IU]/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[IU]/mL = '[IU]/mL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (antigen-antikoerper-quantitativ)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 726449005}\">Immunoassay technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-immunoassay-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#IMMUNOASSAY-001</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "antigen-antikoerper-quantitativ-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "5060-9",
          "display" : "Borrelia burgdorferi Ab [Units/volume] in Serum by Immunoassay"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueQuantity" : {
        "value" : 8,
        "comparator" : "<",
        "unit" : "[IU]/mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "[IU]/mL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (antigen-antikoerper-quantitativ)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "726449005",
          "display" : "Immunoassay technique"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-immunoassay-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "IMMUNOASSAY-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-antigen-antikoerper-quantitativ\">MII PR Mikrobio Antigen Antikoerper Quantitativ</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/antigen-antikoerper-quantitativ-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 5060-9}\">Borrelia burgdorferi Ab [Units/volume] in Serum by Immunoassay</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 726449005}\">Immunoassay technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-immunoassay-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#IMMUNOASSAY-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "antigen-antikoerper-quantitativ-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "5060-9",
          "display" : "Borrelia burgdorferi Ab [Units/volume] in Serum by Immunoassay"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "726449005"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-immunoassay-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "IMMUNOASSAY-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-antigen-antikoerper-quantitativ-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-aviditaet-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-aviditaet-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-aviditaet-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-aviditaet-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-aviditaet-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-aviditaet-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet\">MII PR Mikrobio Aviditaet</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/aviditaet-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 104428-8}\">Measles virus IgG Ab avidity [Ratio] in Serum by Immunoassay</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: &gt;65 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (aviditaet)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 726449005}\">Immunoassay technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-immunoassay-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#IMMUNOASSAY-001</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "aviditaet-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "104428-8",
          "display" : "Measles virus IgG Ab avidity [Ratio] in Serum by Immunoassay"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueQuantity" : {
        "value" : 65,
        "comparator" : ">",
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (aviditaet)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "726449005",
          "display" : "Immunoassay technique"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-immunoassay-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "IMMUNOASSAY-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-aviditaet-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-aviditaet-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-aviditaet-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-aviditaet-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-aviditaet-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-aviditaet-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-aviditaet-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-aviditaet\">MII PR Mikrobio Aviditaet</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/aviditaet-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 104428-8}\">Measles virus IgG Ab avidity [Ratio] in Serum by Immunoassay</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 726449005}\">Immunoassay technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-immunoassay-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#IMMUNOASSAY-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "aviditaet-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "104428-8",
          "display" : "Measles virus IgG Ab avidity [Ratio] in Serum by Immunoassay"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "726449005"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-immunoassay-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "IMMUNOASSAY-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-aviditaet-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-bartlett-score-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-bartlett-score-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-bartlett-score"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-bartlett-score-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-bartlett-score-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-bartlett-score-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-bartlett-score-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-bartlett-score\">MII PR Mikrobio Bartlett Score</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/bartlett-score-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 75371-5}\">Bartlett score of Sputum Qualitative by Light microscopy</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA21390-2}\">+1 Active inflammation</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (bartlett-score)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 702661004}\">Light microscopy technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "bartlett-score-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "75371-5"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA21390-2",
          "display" : "+1 Active inflammation"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (bartlett-score)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702661004",
          "display" : "Light microscopy technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-bartlett-score-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-bartlett-score-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-bartlett-score-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-bartlett-score"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-bartlett-score-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-bartlett-score-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-bartlett-score-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-bartlett-score-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-bartlett-score\">MII PR Mikrobio Bartlett Score</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/bartlett-score-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 75371-5}\">Bartlett score of Sputum Qualitative by Light microscopy</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 702661004}\">Light microscopy</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "bartlett-score-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "75371-5"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702661004"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-bartlett-score-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-ct-wert-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-ct-wert-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-ct-wert-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-ct-wert-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-ct-wert-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-ct-wert-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert\">MII PR Mikrobio CT Wert</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/ct-wert-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 74039-9}\">Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: &lt;30.5 Ct<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (ct-wert)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 70601000052104}\">Real-time PCR technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "ct-wert-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "74039-9"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueQuantity" : {
        "value" : 30.5,
        "comparator" : "<",
        "unit" : "Ct",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (ct-wert)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "70601000052104",
          "display" : "Real-time PCR technique"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-ct-wert-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-ct-wert-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-ct-wert-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-ct-wert-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-ct-wert-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-ct-wert-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-ct-wert-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-ct-wert\">MII PR Mikrobio CT Wert</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/ct-wert-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 74039-9}\">Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 70601000052104}\">Real-time polymerase chain reaction technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "ct-wert-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "74039-9"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "70601000052104"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-ct-wert-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-empfindlichkeit-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-empfindlichkeit-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-empfindlichkeit-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-empfindlichkeit-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-empfindlichkeit-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-empfindlichkeit-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit\">MII PR Mikrobio Empfindlichkeit</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/empfindlichkeit-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 100045-4}\">Cefozopran [Susceptibility]</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: &gt;8 mg/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/L = 'mg/L')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation R}\">Resistant</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (empfindlichkeit)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708073008}\">Minimum inhibitory concentration susceptibility test technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "empfindlichkeit-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "100045-4",
          "display" : "Cefozopran [Susceptibility]"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueQuantity" : {
        "value" : 8,
        "comparator" : ">",
        "unit" : "mg/L",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/L"
      },
      "interpretation" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm",
              "code" : "CLSI",
              "display" : "CLSI"
            }]
          }
        }],
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "R",
          "display" : "Resistant"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (empfindlichkeit)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708073008",
          "display" : "Minimum inhibitory concentration susceptibility test technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-empfindlichkeit-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-empfindlichkeit-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-empfindlichkeit-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-empfindlichkeit-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-empfindlichkeit-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-empfindlichkeit-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-empfindlichkeit-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit\">MII PR Mikrobio Empfindlichkeit</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/empfindlichkeit-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 100045-4}\">Cefozopran [Susceptibility]</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708073008}\">MIC</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "empfindlichkeit-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "100045-4",
          "display" : "Cefozopran [Susceptibility]"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708073008"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-empfindlichkeit-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-keimzahl-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-keimzahl-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-keimzahl-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-keimzahl-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-keimzahl-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-keimzahl-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl\">MII PR Mikrobio Keimzahl</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/keimzahl-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 49223-1}\">Colony count [#/volume] in Specimen by Visual count</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: &gt;=10000 /mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/mL = '/mL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (keimzahl)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 410681005}\">Count of entities (property) (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "keimzahl-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "49223-1"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueQuantity" : {
        "value" : 10000,
        "comparator" : ">=",
        "unit" : "/mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "/mL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (keimzahl)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "410681005",
          "display" : "Count of entities (property) (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-keimzahl-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-keimzahl-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-keimzahl-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-keimzahl-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-keimzahl-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-keimzahl-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-keimzahl-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-keimzahl\">MII PR Mikrobio Keimzahl</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/keimzahl-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 49223-1}\">Colony count [#/volume] in Specimen by Visual count</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 410681005}\">Count of entities</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "keimzahl-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "49223-1"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "410681005"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-keimzahl-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-mikroskopie-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-mikroskopie-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-mikroskopie-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-mikroskopie-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-mikroskopie-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-mikroskopie-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie\">MII PR Mikrobio Allgemeine Mikroskopie</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/mikroskopie-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 105059-0}\">Microscopic observation [Identifier] in Specimen</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 260373001}\">Detected (qualifier value)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (mikroskopie)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 702661004}\">Light microscopy technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "mikroskopie-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "105059-0"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "260373001",
          "display" : "Detected (qualifier value)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (mikroskopie)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702661004",
          "display" : "Light microscopy technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-mikroskopie-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-mikroskopie-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-mikroskopie-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-mikroskopie-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-mikroskopie-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-mikroskopie-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-mikroskopie-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mikroskopie\">MII PR Mikrobio Allgemeine Mikroskopie</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/mikroskopie-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 105059-0}\">Microscopic observation [Identifier] in Specimen</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 702661004}\">Light microscopy</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "mikroskopie-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "105059-0"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702661004"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-mikroskopie-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-molekulare-pathogenlast-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-molekulare-pathogenlast-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-molekulare-pathogenlast-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-molekulare-pathogenlast-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-molekulare-pathogenlast-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-molekulare-pathogenlast-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast\">MII PR Mikrobio Molekulare Pathogenlast</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/molekulare-pathogenlast-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 66719-6}\">Adenovirus DNA [Log #/volume] (viral load) in Urine by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: &gt;=5000 Copies/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1/mL = '1/mL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (molekulare-pathogenlast)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 70601000052104}\">Real-time PCR technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "molekulare-pathogenlast-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "66719-6",
          "display" : "Adenovirus DNA [Log #/volume] (viral load) in Urine by NAA with probe detection"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueQuantity" : {
        "value" : 5000,
        "comparator" : ">=",
        "unit" : "Copies/mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "1/mL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (molekulare-pathogenlast)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "70601000052104",
          "display" : "Real-time PCR technique"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-molekulare-pathogenlast-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-molekulare-pathogenlast-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-molekulare-pathogenlast-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-molekulare-pathogenlast-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-molekulare-pathogenlast-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-molekulare-pathogenlast-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-molekulare-pathogenlast-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-molekulare-pathogenlast\">MII PR Mikrobio Molekulare Pathogenlast</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/molekulare-pathogenlast-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 66719-6}\">Adenovirus DNA [Log #/volume] (viral load) in Urine by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 70601000052104}\">Real-time polymerase chain reaction technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "molekulare-pathogenlast-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "66719-6",
          "display" : "Adenovirus DNA [Log #/volume] (viral load) in Urine by NAA with probe detection"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "70601000052104"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-molekulare-pathogenlast-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-resistenzkategorie-status-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-resistenzkategorie-status-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-resistenzkategorie-status-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-resistenzkategorie-status-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-resistenzkategorie-status-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-resistenzkategorie-status-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status\">MII PR Mikrobio Resistenzkategorie Status</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/resistenzkategorie-status-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie mrsa-status}\">MRSA-Status</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 10828004}\">Positive</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (resistenzkategorie-status)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708068002}\">Molecular genetics technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "resistenzkategorie-status-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie",
          "code" : "mrsa-status",
          "display" : "MRSA-Status"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "10828004",
          "display" : "Positive"
        }]
      },
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (resistenzkategorie-status)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708068002",
          "display" : "Molecular genetics technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-resistenzkategorie-status-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-resistenzkategorie-status-neg-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-resistenzkategorie-status-neg-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-resistenzkategorie-status-neg-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-resistenzkategorie-status-neg-1</b></p><a name=\"mii-exa-test-data-mikrobio-resistenzkategorie-status-neg-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-resistenzkategorie-status-neg-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzkategorie-status\">MII PR Mikrobio Resistenzkategorie Status</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/resistenzkategorie-status-neg-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie mrsa-status}\">MRSA-Status</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 260385009}\">Negative</span></p><p><b>note</b>: </p><blockquote><div><p>MRSA nicht nachgewiesen (negatives Screening-Ergebnis).</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708068002}\">Molecular genetics</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "resistenzkategorie-status-neg-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie",
          "code" : "mrsa-status",
          "display" : "MRSA-Status"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "260385009",
          "display" : "Negative"
        }]
      },
      "note" : [{
        "text" : "MRSA nicht nachgewiesen (negatives Screening-Ergebnis)."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708068002"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-resistenzkategorie-status-neg-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-mrgn-klasse-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-mrgn-klasse-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-mrgn-klasse-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-mrgn-klasse-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-mrgn-klasse-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-mrgn-klasse-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse\">MII PR Mikrobio MRGN Klasse</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/mrgn-klasse-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 99780-9}\">Multidrug resistant gram-negative organism classification [Type]</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA33214-0}\">2MRGN</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (mrgn-klasse)</p>\n</div></blockquote><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "mrgn-klasse-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "99780-9"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA33214-0",
          "display" : "2MRGN"
        }]
      },
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (mrgn-klasse)"
      }],
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-mrgn-klasse-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-mrgn-klasse-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-mrgn-klasse-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-mrgn-klasse-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-mrgn-klasse-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-mrgn-klasse-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-mrgn-klasse-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-mrgn-klasse\">MII PR Mikrobio MRGN Klasse</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/mrgn-klasse-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 99780-9}\">Multidrug resistant gram-negative organism classification [Type]</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "mrgn-klasse-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "99780-9"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-mrgn-klasse-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-nugent-score-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-nugent-score-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-nugent-score-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-nugent-score-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-nugent-score-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-nugent-score-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score\">MII PR Mikrobio Nugent Score</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/nugent-score-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 101433-1}\">Bacterial vaginosis score in Vaginal fluid Qualitative by Nugent</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: &lt;=2 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (nugent-score)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 702661004}\">Light microscopy technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "nugent-score-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "101433-1"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueQuantity" : {
        "value" : 2,
        "comparator" : "<=",
        "unit" : "1",
        "system" : "http://unitsofmeasure.org",
        "code" : "1"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (nugent-score)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702661004",
          "display" : "Light microscopy technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-nugent-score-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-nugent-score-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-nugent-score-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-nugent-score-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-nugent-score-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-nugent-score-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-nugent-score-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-nugent-score\">MII PR Mikrobio Nugent Score</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/nugent-score-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 101433-1}\">Bacterial vaginosis score in Vaginal fluid Qualitative by Nugent</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 702661004}\">Light microscopy</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "nugent-score-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "101433-1"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702661004"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-nugent-score-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-resistenz-mech-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-resistenz-mech-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-resistenz-mech-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-resistenz-mech-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-resistenz-mech-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-resistenz-mech-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten\">MII PR Mikrobio Resistenzmechanismen Determinanten</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/resistenzmechanismen-determinanten-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 72891-5}\">Staphylococcus protein A spa gene [Presence] in Isolate or Specimen by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 260373001}\">Detected (qualifier value)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (resistenzmechanismen-determinanten)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708068002}\">Molecular genetics technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "resistenzmechanismen-determinanten-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "72891-5",
          "display" : "Staphylococcus protein A spa gene [Presence] in Isolate or Specimen by NAA with probe detection"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "260373001",
          "display" : "Detected (qualifier value)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (resistenzmechanismen-determinanten)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708068002",
          "display" : "Molecular genetics technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-resistenz-mech-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-resistenz-mech-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-resistenz-mech-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-resistenz-mech-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-resistenz-mech-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-resistenz-mech-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-resistenz-mech-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-resistenzmechanismen-determinanten\">MII PR Mikrobio Resistenzmechanismen Determinanten</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/resistenzmechanismen-determinanten-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 72891-5}\">Staphylococcus protein A spa gene [Presence] in Isolate or Specimen by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708068002}\">Molecular genetics</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "resistenzmechanismen-determinanten-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "72891-5",
          "display" : "Staphylococcus protein A spa gene [Presence] in Isolate or Specimen by NAA with probe detection"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708068002"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-resistenz-mech-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-spezifische-bestimmung-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-spezifische-bestimmung-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-spezifische-bestimmung-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-spezifische-bestimmung-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-spezifische-bestimmung-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-spezifische-bestimmung-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung\">MII PR Mikrobio Spezifische Bestimmung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/spezifische-bestimmung-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 105651-4}\">Enterobacter cloacae complex DNA [Presence] in Specimen by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 260373001}\">Detected (qualifier value)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (spezifische-bestimmung)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 70601000052104}\">Real-time polymerase chain reaction technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "spezifische-bestimmung-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "105651-4",
          "display" : "Enterobacter cloacae complex DNA [Presence] in Specimen by NAA with probe detection"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "260373001",
          "display" : "Detected (qualifier value)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (spezifische-bestimmung)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "70601000052104",
          "display" : "Real-time polymerase chain reaction technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-spezifische-bestimmung-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-spezifische-bestimmung-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-spezifische-bestimmung-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-spezifische-bestimmung-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-spezifische-bestimmung-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-spezifische-bestimmung-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-spezifische-bestimmung-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-bestimmung\">MII PR Mikrobio Spezifische Bestimmung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/spezifische-bestimmung-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 61398-4}\">Escherichia coli DNA [Presence] in Specimen by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 70601000052104}\">Real-time polymerase chain reaction technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "spezifische-bestimmung-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "61398-4",
          "display" : "Escherichia coli DNA [Presence] in Specimen by NAA with probe detection"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "70601000052104"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-spezifische-bestimmung-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-spezifische-mikroskopie-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-spezifische-mikroskopie-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-spezifische-mikroskopie-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-spezifische-mikroskopie-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-spezifische-mikroskopie-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-spezifische-mikroskopie-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-spezifische-mikroskopie\">MII PR Mikrobio Spezifische Mikroskopie</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Mikrobio Färbung</b>: <span title=\"Codes:{http://snomed.info/sct 36878004}\">Acid fast Kinyoun's cold carbolfuchsin stain method (procedure)</span></p><p><b>identifier</b>: Observation Instance Identifier/spezifische-mikroskopie-dar-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 72357-7}\">Microscopic observation [Presence] in Specimen by Acid fast stain</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 09:30:00+0200</p><p><b>issued</b>: 2026-04-05 10:45:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://snomed.info/sct 82334004}\">Indeterminate (qualifier value)</span></p><p><b>note</b>: </p><blockquote><div><p>Materialmenge nicht ausreichend — Ausstrich zu zellarm, saeurefeste Staebchen nicht beurteilbar. Neue Probe angefordert.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 702661004}\">Light microscopy technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-probe-1.html\">Specimen: extension = Primärprobe (MII CS Biobank Probenebene#PRIMÄRPROBE),Biosafety level 2 (qualifier value); identifier = https://www.charite.de/fhir/sid/Probennummer#SPUTUM-001; status = available; type = Sputum specimen (specimen); receivedTime = 2026-04-02 08:15:00+0200; note = Morgensputum, makroskopisch purulent; Transport gekuehlt.</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-mikroskop-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#MIKROSKOP-001</a></p></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-faerbung",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "36878004",
            "display" : "Acid fast Kinyoun's cold carbolfuchsin stain method (procedure)"
          }]
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "spezifische-mikroskopie-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "72357-7",
          "display" : "Microscopic observation [Presence] in Specimen by Acid fast stain"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T09:30:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T10:45:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "82334004",
          "display" : "Indeterminate (qualifier value)"
        }]
      },
      "note" : [{
        "text" : "Materialmenge nicht ausreichend — Ausstrich zu zellarm, saeurefeste Staebchen nicht beurteilbar. Neue Probe angefordert."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702661004",
          "display" : "Light microscopy technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-probe-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "SPUTUM-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-mikroskop-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "MIKROSKOP-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-spezifische-mikroskopie-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-titer-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-titer-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-titer-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-titer-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-titer-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-titer-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer\">MII PR Mikrobio Titer</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/titer-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 23648-9}\">Actinobacillus pleuropneumoniae Ab [Titer] in Serum</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: 1 {titer}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{titer} = '{titer}')</span>/64 {titer}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{titer} = '{titer}')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (titer)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708104000}\">Agglutination technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "titer-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "23648-9",
          "display" : "Actinobacillus pleuropneumoniae Ab [Titer] in Serum"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueRatio" : {
        "numerator" : {
          "value" : 1,
          "unit" : "{titer}",
          "system" : "http://unitsofmeasure.org",
          "code" : "{titer}"
        },
        "denominator" : {
          "value" : 64,
          "unit" : "{titer}",
          "system" : "http://unitsofmeasure.org",
          "code" : "{titer}"
        }
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (titer)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708104000",
          "display" : "Agglutination technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-titer-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-titer-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-titer-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-titer-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-titer-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-titer-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-titer-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-titer\">MII PR Mikrobio Titer</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/titer-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 23648-9}\">Actinobacillus pleuropneumoniae Ab [Titer] in Serum</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708104000}\">Agglutination technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "titer-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "23648-9",
          "display" : "Actinobacillus pleuropneumoniae Ab [Titer] in Serum"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708104000"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-titer-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-virulenzfaktor-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-virulenzfaktor-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-virulenzfaktor-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-virulenzfaktor-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-virulenzfaktor-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-virulenzfaktor-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor\">MII PR Mikrobio Virulenzfaktor</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/virulenzfaktor-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 87402-4}\">Escherichia coli aidA-I gene [Presence] in Isolate by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 260373001}\">Detected (qualifier value)</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (virulenzfaktor)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 70601000052104}\">Real-time polymerase chain reaction technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "virulenzfaktor-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "87402-4"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "260373001",
          "display" : "Detected (qualifier value)"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (virulenzfaktor)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "70601000052104",
          "display" : "Real-time polymerase chain reaction technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-virulenzfaktor-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-virulenzfaktor-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-virulenzfaktor-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-virulenzfaktor-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-virulenzfaktor-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-virulenzfaktor-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-virulenzfaktor-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-virulenzfaktor\">MII PR Mikrobio Virulenzfaktor</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/virulenzfaktor-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 87402-4}\">Escherichia coli aidA-I gene [Presence] in Isolate by NAA with probe detection</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 70601000052104}\">Real-time polymerase chain reaction technique</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "virulenzfaktor-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "87402-4"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "70601000052104"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-virulenzfaktor-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-voraus-empf-alt-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-voraus-empf-alt-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-voraus-empf-alt-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-voraus-empf-alt-1</b></p><a name=\"mii-exa-test-data-mikrobio-voraus-empf-alt-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-voraus-empf-alt-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit\">MII PR Mikrobio Voraussichtliche Empfindlichkeit</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><blockquote><p><b>R5: Triggering observation(s) (new)</b></p><ul><li>observation: <a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\">Observation Microorganism identified in Specimen by Culture</a></li><li>type: repeat</li></ul></blockquote><p><b>MII EX Labor Interpretationsbeeinflussende Eigenschaft</b>: <a href=\"http://snomed.info/id/118127007\">SNOMED CT: 118127007</a> (Specimen lipemic (finding))</p><p><b>identifier</b>: Observation Instance Identifier/voraussichtliche-empfindlichkeit-alt-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 92255-9}\">Methicillin [Susceptibility] by Genotype method</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation S}\">Susceptible</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></p><p><b>note</b>: </p><blockquote><div><p>Alt-Variante zur MS-Coverage (voraussichtliche-empfindlichkeit)</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708060009}\">Genotype determination technique (qualifier value)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "observation",
          "valueReference" : {
            "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
          }
        },
        {
          "url" : "type",
          "valueCode" : "repeat"
        }],
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.triggeredBy"
      }],
      "modifierExtension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/InterpretationsbeeinflussendeEigenschaft",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "118127007",
          "display" : "Specimen lipemic (finding)"
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "voraussichtliche-empfindlichkeit-alt-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "92255-9",
          "display" : "Methicillin [Susceptibility] by Genotype method"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "S",
          "display" : "Susceptible"
        }]
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "A",
          "display" : "Abnormal"
        }]
      }],
      "note" : [{
        "text" : "Alt-Variante zur MS-Coverage (voraussichtliche-empfindlichkeit)"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708060009",
          "display" : "Genotype determination technique (qualifier value)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-voraus-empf-alt-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-voraus-empf-dar-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-voraus-empf-dar-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-voraus-empf-dar-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-voraus-empf-dar-1</b></p><a name=\"mii-exa-test-data-mikrobio-voraus-empf-dar-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-voraus-empf-dar-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-voraussichtliche-empfindlichkeit\">MII PR Mikrobio Voraussichtliche Empfindlichkeit</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/voraussichtliche-empfindlichkeit-dar-1</p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 92255-9}\">Methicillin [Susceptibility] by Genotype method</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>dataAbsentReason</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/data-absent-reason unknown}\">Unknown</span></p><p><b>note</b>: </p><blockquote><div><p>Probe nicht auswertbar — Ergebnis nicht verfügbar.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 708060009}\">Genotype determination</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-mikrobio-device-pcr-1.html\">Device: identifier = https://www.charite.de/fhir/sid/device-identifier#PCR-CYCLER-001</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "voraussichtliche-empfindlichkeit-dar-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "92255-9",
          "display" : "Methicillin [Susceptibility] by Genotype method"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "dataAbsentReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
          "code" : "unknown",
          "display" : "Unknown"
        }]
      },
      "note" : [{
        "text" : "Probe nicht auswertbar — Ergebnis nicht verfügbar."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "708060009"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-mikrobio-device-pcr-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/device-identifier",
          "value" : "PCR-CYCLER-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-voraus-empf-dar-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-mikrobio-empfindlichkeit-sir-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-mikrobio-empfindlichkeit-sir-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-mikrobio-empfindlichkeit-sir-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-mikrobio-empfindlichkeit-sir-1</b></p><a name=\"mii-exa-test-data-mikrobio-empfindlichkeit-sir-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-empfindlichkeit-sir-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-empfindlichkeit\">MII PR Mikrobio Empfindlichkeit</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/empfindlichkeit-sir-1</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-mikrobio-servicerequest-1.html\">ServiceRequest Microbiology procedure (procedure)</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 18928-2}\">Gentamicin [Susceptibility]</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-mikrobio-patient-1.html\">Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-mikrobio-encounter-1.html\">Encounter: identifier = https://www.charite.de/fhir/sid/encounter-identifier#MIKROBIO-ENC-001; status = finished; class = inpatient encounter (ActCode#IMP); period = 2026-04-01 --&gt; 2026-04-14</a></p><p><b>effective</b>: 2026-04-05 10:00:00+0200</p><p><b>issued</b>: 2026-04-05 11:00:00+0200</p><p><b>value</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation S}\">Susceptible</span></p><p><b>note</b>: </p><blockquote><div><p>SIR-Kategorisierung nach EUCAST-Grenzwerten.</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 14788002}\">Antimicrobial susceptibility test (procedure)</span></p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-test-data-mikrobio-specimen-1.html\">Specimen: identifier = https://www.charite.de/fhir/sid/Probennummer#BLOOD-CULT-001; status = available; type = Blood specimen (specimen)</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/test-lab-results",
        "value" : "empfindlichkeit-sir-1",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB",
          "display" : "Microbiology"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "version" : "2.80",
          "code" : "18928-2",
          "display" : "Gentamicin [Susceptibility]"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-05T10:00:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T11:00:00+02:00",
      "valueCodeableConcept" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-ex-mikrobio-empfindlichkeit-norm",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-susceptibility-norm",
              "code" : "EUCAST",
              "display" : "EUCAST"
            }]
          }
        }],
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "version" : "3.0.0",
          "code" : "S",
          "display" : "Susceptible"
        }]
      },
      "note" : [{
        "text" : "SIR-Kategorisierung nach EUCAST-Grenzwerten."
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "14788002",
          "display" : "Antimicrobial susceptibility test (procedure)"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-mikrobio-empfindlichkeit-sir-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/DiagnosticReport/mii-exa-test-data-mikrobio-diagnostic-report-1",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "mii-exa-test-data-mikrobio-diagnostic-report-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/mikrobiologie-lab-system",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_mii-exa-test-data-mikrobio-diagnostic-report-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport mii-exa-test-data-mikrobio-diagnostic-report-1</b></p><a name=\"mii-exa-test-data-mikrobio-diagnostic-report-1\"> </a><a name=\"hcmii-exa-test-data-mikrobio-diagnostic-report-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/mikrobiologie-lab-system\">https://www.charite.de/fhir/mikrobiologie-lab-system</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/StructureDefinition/mii-pr-mikrobio-diagnostic-report\">MII PR Mikrobio Diagnostic Report</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2><span title=\"Codes:{http://loinc.org 11502-2}, {http://loinc.org 11475-1}\">Microorganism identified in Blood by Aerobic culture</span> (<span title=\"Codes:{http://loinc.org 18725-2}\">Microbiology studies (set)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 LAB}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 MB}\">Microbiology</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>Sigmund Sepsis  Male, DoB: 1957-08-14 ( https://www.charite.de/fhir/sid/patientenidentifikation#MIKROBIO-TEST-001)</td></tr><tr><td>Relevant Time</td><td>2026-04-02 08:30:00+0200</td></tr><tr><td>Reported</td><td>2026-04-05 15:00:00+0200</td></tr><tr><td>Performer</td><td> <a href=\"Organization-mii-exa-test-data-mikrobio-organization-lab-1.html\">Organization Mikrobiologisches Labor Charité</a></td></tr><tr><td>Identifier</td><td> Filler Identifier/MIKROBIO-DR-001</td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Reference Range</b></td><td><b>Flags</b></td><td><b>Note</b></td><td><b>Relevant Time</b></td><td><b>Reported</b></td></tr><tr><td><a href=\"Observation-mii-exa-test-data-mikrobio-allgemeine-kultur-1.html\"><span title=\"Codes:{http://loinc.org 11475-1}\">Microorganism identified in Specimen by Culture</span></a></td><td><span title=\"Codes:{http://snomed.info/sct 10828004}\">Positive (qualifier value)</span></td><td/><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation POS}\">Positive</span></td><td><blockquote><div><p>Wuchs nach 18h aerob; weitere Differenzierung folgt.</p>\n</div></blockquote></td><td>2026-04-02 10:00:00+0200</td><td>2026-04-03 14:00:00+0200</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-mikrobio-spezifische-bestimmung-1.html\"><span title=\"Codes:{http://loinc.org 100897-8}\">Staphylococcus aureus [Presence] in Specimen by Organism specific culture</span></a></td><td><span title=\"Codes:{http://snomed.info/sct 3092008}\">Staphylococcus aureus (organism)</span></td><td/><td>Final</td><td><blockquote><div><p>Identifikation via spezifische Kultur.</p>\n</div></blockquote></td><td>2026-04-03 15:00:00+0200</td><td>2026-04-03 16:00:00+0200</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-mikrobio-mikroskopie-1.html\"><span title=\"Codes:{http://loinc.org 105059-0}\">Microscopic observation [Identifier] in Specimen</span></a></td><td><span title=\"Codes:{http://snomed.info/sct 70003006}\">Gram-positive cocci in clusters (finding)</span></td><td/><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation A}\">Abnormal</span></td><td><blockquote><div><p>Mikroskopisch typisches Bild fuer S. aureus.</p>\n</div></blockquote></td><td>2026-04-02 10:30:00+0200</td><td>2026-04-02 11:00:00+0200</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-mikrobio-empfindlichkeit-1.html\"><span title=\"Codes:{http://loinc.org 19000-9}\">Vancomycin [Susceptibility]</span></a></td><td>&lt;=1 mg/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/L = 'mg/L')</span></td><td>0 mg/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/L = 'mg/L')</span> - 2 mg/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/L = 'mg/L')</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation S}\">Susceptible</span></td><td><blockquote><div><p>Vancomycin als empirische Therapie geeignet; gemaess EUCAST-Kriterien empfindlich.</p>\n</div></blockquote></td><td>2026-04-04 09:00:00+0200</td><td>2026-04-04 10:00:00+0200</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1.html\"><span title=\"Codes:{http://loinc.org 92255-9}\">Methicillin [Susceptibility] by Genotype method</span></a></td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation R}\">Resistant</span></td><td/><td>Final</td><td><blockquote><div><p>Prognose der Methicillin-Resistenz aufgrund mecA-Nachweis.</p>\n</div></blockquote></td><td>2026-04-04 07:00:00+0200</td><td>2026-04-04 08:00:00+0200</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-mikrobio-resistenzkategorie-status-1.html\"><span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/modul-mikrobio/CodeSystem/mii-cs-mikrobio-resistenzkategorie mrsa-status}\">MRSA-Status</span></a></td><td><span title=\"Codes:{http://snomed.info/sct 10828004}\">Positive</span></td><td/><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation POS}\">Positive</span></td><td><blockquote><div><p>MRSA-Befund (Methicillin-resistenter Staphylococcus aureus nachgewiesen) — Isolation noetig.</p>\n</div></blockquote></td><td>2026-04-04 10:30:00+0200</td><td>2026-04-04 11:00:00+0200</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-mikrobio-resistenzmechanismen-1.html\"><span title=\"Codes:{http://loinc.org 48813-0}\">Methicillin resistance mecA gene [Presence] by Molecular method</span></a></td><td><span title=\"Codes:{http://snomed.info/sct 260373001}\">Detected (qualifier value)</span></td><td/><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation POS}\">Positive</span></td><td><blockquote><div><p>mecA-Gen via PCR nachgewiesen.</p>\n</div></blockquote></td><td>2026-04-04 07:00:00+0200</td><td>2026-04-04 07:30:00+0200</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-mikrobio-virulenzfaktor-1.html\"><span title=\"Codes:{http://loinc.org 48816-3}\">Staphylococcus aureus Panton-Valentine leukocidin gene [Presence] in Isolate or Specimen by Molecular genetics method</span></a></td><td><span title=\"Codes:{http://snomed.info/sct 260415000}\">Not detected (qualifier value)</span></td><td/><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation NEG}\">Negative</span></td><td><blockquote><div><p>Panton-Valentine-Leukocidin (PVL) nicht nachgewiesen — kein Hinweis auf erhoehte Virulenz.</p>\n</div></blockquote></td><td>2026-04-04 08:00:00+0200</td><td>2026-04-04 08:30:00+0200</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-mikrobio-ct-wert-1.html\"><span title=\"Codes:{http://loinc.org 74039-9}\">Influenza virus A H3 RNA [Cycle Threshold #] in Specimen by NAA with probe detection</span></a></td><td>&lt;21.3 Ct<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td><td>0 Ct<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span> - 35 Ct<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></td><td><blockquote><div><p>Niedriger CT-Wert (21.3) spricht fuer hohe Erregerlast.</p>\n</div></blockquote></td><td>2026-04-03 17:00:00+0200</td><td>2026-04-03 18:00:00+0200</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-mikrobio-molekulare-pathogenlast-1.html\"><span title=\"Codes:{http://loinc.org 95521-1}\">SARS-CoV-2 (COVID-19) N gene [#/volume] (viral load) in Respiratory system specimen by NAA with probe detection</span></a></td><td>&gt;=350000 Copies/mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1/mL = '1/mL')</span></td><td>Nachweisgrenze des Assays</td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></td><td><blockquote><div><p>Hohe Pathogenlast — klinische Relevanz mit Behandelndem besprechen.</p>\n</div></blockquote></td><td>2026-04-03 18:00:00+0200</td><td>2026-04-03 19:00:00+0200</td></tr></table><p>Nachweis MRSA in Blutkultur. mecA-positiv, Vancomycin-empfindlich. Empfehlung: Linezolid oder Daptomycin als Reserve. Klinik konsultieren.</p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "FILL"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/diagnostic-report",
        "value" : "MIKROBIO-DR-001",
        "assigner" : {
          "reference" : "Organization/mii-exa-test-data-mikrobio-organization-lab-1",
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "DIZ-CHA"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-mikrobio-servicerequest-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/service-request",
          "value" : "MIKROBIO-SR-001"
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "18725-2",
          "display" : "Microbiology studies (set)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "MB"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11502-2"
        },
        {
          "system" : "http://loinc.org",
          "code" : "11475-1",
          "display" : "Microorganism identified in Blood by Aerobic culture"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-mikrobio-patient-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
          "value" : "MIKROBIO-TEST-001"
        }
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-mikrobio-encounter-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/encounter-identifier",
          "value" : "MIKROBIO-ENC-001"
        }
      },
      "effectiveDateTime" : "2026-04-02T08:30:00+02:00",
      "_effectiveDateTime" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum",
          "valueCoding" : {
            "system" : "http://snomed.info/sct",
            "code" : "399445004",
            "display" : "Specimen collection date (observable entity)"
          }
        }]
      },
      "issued" : "2026-04-05T15:00:00+02:00",
      "performer" : [{
        "reference" : "Organization/mii-exa-test-data-mikrobio-organization-lab-1",
        "identifier" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
          "value" : "DIZ-CHA"
        }
      }],
      "resultsInterpreter" : [{
        "reference" : "Organization/mii-exa-test-data-mikrobio-organization-lab-1"
      }],
      "specimen" : [{
        "reference" : "Specimen/mii-exa-test-data-mikrobio-specimen-1",
        "identifier" : {
          "system" : "https://www.charite.de/fhir/sid/Probennummer",
          "value" : "BLOOD-CULT-001"
        }
      }],
      "result" : [{
        "reference" : "Observation/mii-exa-test-data-mikrobio-allgemeine-kultur-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-mikrobio-spezifische-bestimmung-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-mikrobio-mikroskopie-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-mikrobio-empfindlichkeit-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-mikrobio-voraussichtliche-empfindlichkeit-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-mikrobio-resistenzkategorie-status-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-mikrobio-resistenzmechanismen-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-mikrobio-virulenzfaktor-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-mikrobio-ct-wert-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-mikrobio-molekulare-pathogenlast-1"
      }],
      "conclusion" : "Nachweis MRSA in Blutkultur. mecA-positiv, Vancomycin-empfindlich. Empfehlung: Linezolid oder Daptomycin als Reserve. Klinik konsultieren."
    },
    "request" : {
      "method" : "PUT",
      "url" : "DiagnosticReport/mii-exa-test-data-mikrobio-diagnostic-report-1"
    }
  }]
}

```
