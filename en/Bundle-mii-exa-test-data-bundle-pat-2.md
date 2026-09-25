# mii-exa-test-data-bundle-pat-2 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-bundle-pat-2**

## Example Bundle: mii-exa-test-data-bundle-pat-2



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-test-data-bundle-pat-2",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "type" : "transaction",
  "timestamp" : "2025-06-18T13:53:00+02:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/Patient/mii-exa-test-data-patient-2",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-test-data-patient-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient",
        "http://fhir.de/ConsentManagement/StructureDefinition/Patient"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_mii-exa-test-data-patient-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-test-data-patient-2</b></p><a name=\"mii-exa-test-data-patient-2\"> </a><a name=\"hcmii-exa-test-data-patient-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient\">MII PR Person Patient</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.consent@2027.0.0-ballot&amp;canonical=http://fhir.de/ConsentManagement/StructureDefinition/Patient\">Consent Management: Patient</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\">Krankenversichertennummer/B234567890 (use: official, )</td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
            "code" : "KVZ10"
          }]
        },
        "system" : "http://fhir.de/sid/gkv/kvid-10",
        "value" : "B234567890",
        "assigner" : {
          "identifier" : {
            "use" : "official",
            "system" : "http://fhir.de/sid/arge-ik/iknr",
            "value" : "123456789"
          }
        }
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MR"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/patientenidentifikation",
        "value" : "147725268",
        "assigner" : {
          "identifier" : {
            "type" : {
              "coding" : [{
                "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                "code" : "XX"
              }]
            },
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "gender" : "other",
      "_gender" : {
        "extension" : [{
          "url" : "http://fhir.de/StructureDefinition/gender-amtlich-de",
          "valueCoding" : {
            "system" : "http://fhir.de/CodeSystem/gender-amtlich-de",
            "code" : "D"
          }
        }]
      },
      "birthDate" : "2000-06-30",
      "deceasedBoolean" : true
    },
    "request" : {
      "method" : "PUT",
      "url" : "Patient/mii-exa-test-data-patient-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Consent/mii-exa-test-data-patient-2-consent-1",
    "resource" : {
      "resourceType" : "Consent",
      "id" : "mii-exa-test-data-patient-2-consent-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Consent_mii-exa-test-data-patient-2-consent-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Consent mii-exa-test-data-patient-2-consent-1</b></p><a name=\"mii-exa-test-data-patient-2-consent-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-consent-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung\">Profile - MI-I - Consent - Einwilligung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2>Participants</h2><table class=\"grid\"><tr><td><b>Role</b></td><td><b>Details</b></td></tr><tr><td title=\"Who the consent applies to\">Patient</td><td><a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></td></tr><tr><td title=\"Who manages the consent through its lifecycle.\">Manager</td><td><a href=\"Organization-mii-exa-test-data-organization-charite.html\">Organization Charité – Universitätsmedizin Berlin</a></td></tr></table><p>This consent is made under the policy <code>urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791</code> .</p><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Rule\">Rule</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Period\">Time Period</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Data\">What</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck01.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-qi-hidden.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> deny</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2024-03-14 --&gt; 2054-02-28</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2024-03-14 --&gt; 2054-02-28</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.6}\">MDAT erheben</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2024-03-14 --&gt; 2054-02-28</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.7}\">MDAT speichern, verarbeiten</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2024-03-14 --&gt; 2054-02-28</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.8}\">MDAT wissenschaftlich nutzen</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2024-03-14 --&gt; 2054-02-28</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.19}\">BIOMAT erheben</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2024-03-14 --&gt; 2054-02-28</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.20}\">BIOMAT lagern verarbeiten</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck000.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2024-03-14 --&gt; 2054-02-28</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.22}\">BIOMAT wissenschaftlich nutzen</span></li></ul></td></tr>\r\n<tr><td colspan=\"3\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
      },
      "status" : "active",
      "scope" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
          "code" : "research"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57016-8"
        }]
      },
      {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/modul-consent/CodeSystem/mii-cs-consent-version-modules",
          "code" : "2.16.840.1.113883.3.1937.777.24.2.184"
        }]
      }],
      "patient" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "dateTime" : "2024-03-14T11:00:00+01:00",
      "organization" : [{
        "reference" : "Organization/mii-exa-test-data-organization-charite"
      }],
      "policy" : [{
        "uri" : "urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791"
      }],
      "provision" : {
        "type" : "deny",
        "period" : {
          "start" : "2024-03-14",
          "end" : "2054-02-28"
        },
        "provision" : [{
          "type" : "permit",
          "period" : {
            "start" : "2024-03-14",
            "end" : "2054-02-28"
          },
          "code" : [{
            "coding" : [{
              "system" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.3",
              "code" : "2.16.840.1.113883.3.1937.777.24.5.3.6",
              "display" : "MDAT erheben"
            }]
          }]
        },
        {
          "type" : "permit",
          "period" : {
            "start" : "2024-03-14",
            "end" : "2054-02-28"
          },
          "code" : [{
            "coding" : [{
              "system" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.3",
              "code" : "2.16.840.1.113883.3.1937.777.24.5.3.7",
              "display" : "MDAT speichern, verarbeiten"
            }]
          }]
        },
        {
          "type" : "permit",
          "period" : {
            "start" : "2024-03-14",
            "end" : "2054-02-28"
          },
          "code" : [{
            "coding" : [{
              "system" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.3",
              "code" : "2.16.840.1.113883.3.1937.777.24.5.3.8",
              "display" : "MDAT wissenschaftlich nutzen"
            }]
          }]
        },
        {
          "type" : "permit",
          "period" : {
            "start" : "2024-03-14",
            "end" : "2054-02-28"
          },
          "code" : [{
            "coding" : [{
              "system" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.3",
              "code" : "2.16.840.1.113883.3.1937.777.24.5.3.19",
              "display" : "BIOMAT erheben"
            }]
          }]
        },
        {
          "type" : "permit",
          "period" : {
            "start" : "2024-03-14",
            "end" : "2054-02-28"
          },
          "code" : [{
            "coding" : [{
              "system" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.3",
              "code" : "2.16.840.1.113883.3.1937.777.24.5.3.20",
              "display" : "BIOMAT lagern verarbeiten"
            }]
          }]
        },
        {
          "type" : "permit",
          "period" : {
            "start" : "2024-03-14",
            "end" : "2054-02-28"
          },
          "code" : [{
            "coding" : [{
              "system" : "urn:oid:2.16.840.1.113883.3.1937.777.24.5.3",
              "code" : "2.16.840.1.113883.3.1937.777.24.5.3.22",
              "display" : "BIOMAT wissenschaftlich nutzen"
            }]
          }]
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Consent/mii-exa-test-data-patient-2-consent-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Encounter/mii-exa-test-data-patient-2-encounter-1",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-test-data-patient-2-encounter-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_mii-exa-test-data-patient-2-encounter-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-test-data-patient-2-encounter-1</b></p><a name=\"mii-exa-test-data-patient-2-encounter-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-encounter-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung\">MII PR Fall Kontakt mit einer Gesundheitseinrichtung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Visit number/MII_0000004</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>type</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/Kontaktebene einrichtungskontakt}\">Einrichtungskontakt</span>, <span title=\"Codes:{http://fhir.de/CodeSystem/kontaktart-de normalstationaer}\">Normalstationär</span></p><p><b>serviceType</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel 0500}\">Hämatologie und internistische Onkologie</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>period</b>: 2024-03-02 --&gt; 2024-03-13</p><h3>Hospitalizations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>AdmitSource</b></td><td><b>DischargeDisposition</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/dgkev/Aufnahmeanlass E}\">Einweisung durch einen Arzt</span></td><td><span title=\"Codes:\"></span></td></tr></table><p><b>serviceProvider</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Charité - Universitätsmedizin Berlin</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "VN"
          }]
        },
        "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
        "value" : "MII_0000004"
      }],
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/Kontaktebene",
          "code" : "einrichtungskontakt"
        }]
      },
      {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/kontaktart-de",
          "code" : "normalstationaer"
        }]
      }],
      "serviceType" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel",
          "code" : "0500"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "period" : {
        "start" : "2024-03-02",
        "end" : "2024-03-13"
      },
      "hospitalization" : {
        "admitSource" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/dgkev/Aufnahmeanlass",
            "code" : "E",
            "display" : "Einweisung durch einen Arzt"
          }]
        },
        "dischargeDisposition" : {
          "extension" : [{
            "extension" : [{
              "url" : "ErsteUndZweiteStelle",
              "valueCoding" : {
                "system" : "http://fhir.de/CodeSystem/dkgev/EntlassungsgrundErsteUndZweiteStelle",
                "code" : "07",
                "display" : "Tod"
              }
            },
            {
              "url" : "DritteStelle",
              "valueCoding" : {
                "system" : "http://fhir.de/CodeSystem/dkgev/EntlassungsgrundDritteStelle",
                "code" : "9",
                "display" : "keine Angabe"
              }
            }],
            "url" : "http://fhir.de/StructureDefinition/Entlassungsgrund"
          }]
        }
      },
      "serviceProvider" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite",
        "identifier" : {
          "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
          "value" : "Charité"
        },
        "display" : "Charité - Universitätsmedizin Berlin"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-patient-2-diagnose-1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-patient-2-diagnose-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-patient-2-diagnose-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-patient-2-diagnose-1</b></p><a name=\"mii-exa-test-data-patient-2-diagnose-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-diagnose-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose\">MII PR Diagnose Condition</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm C34.1}, {http://fhir.de/CodeSystem/bfarm/alpha-id I30011}, {http://snomed.info/sct 254637007}\">Bösartige Neubildung des Lungenoberlappens</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 45653009}\">Structure of upper lobe of lung (body structure)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>recordedDate</b>: 2024-03-02</p><p><b>note</b>: </p><blockquote><div><p>Bösartige Neubildung: Oberlappen-Bronchus</p>\n</div></blockquote></div>"
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
          "code" : "C34.1"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
          "version" : "2024",
          "code" : "I30011",
          "display" : "Bösartige Neubildung des Lungenoberlappens"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "254637007",
          "display" : "Non-small cell lung cancer (disorder)"
        }]
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "45653009",
          "display" : "Structure of upper lobe of lung (body structure)"
        }]
      }],
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "recordedDate" : "2024-03-02",
      "note" : [{
        "text" : "Bösartige Neubildung: Oberlappen-Bronchus"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-test-data-patient-2-diagnose-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-2-vitalstatus-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-2-vitalstatus-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-2-vitalstatus-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-2-vitalstatus-1</b></p><a name=\"mii-exa-test-data-patient-2-vitalstatus-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-vitalstatus-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus\">MII PR Person Vitalstatus</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 67162-8}\">Patient Disposition</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>effective</b>: 2024-03-13 11:28:00+0100</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus T}\">Patient verstorben</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "survey"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "67162-8"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "effectiveDateTime" : "2024-03-13T11:28:00+01:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus",
          "code" : "T"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-2-vitalstatus-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-patient-2-todesursache-1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-patient-2-todesursache-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-patient-2-todesursache-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-patient-2-todesursache-1</b></p><a name=\"mii-exa-test-data-patient-2-todesursache-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-todesursache-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Todesursache\">MII PR Person Todesursache</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 16100001}, {http://loinc.org 79378-6}\">Death diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{http://hl7.org/fhir/sid/icd-10 C34.8}\">C34.8</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>recordedDate</b>: 2024-03-13</p><p><b>note</b>: </p><blockquote><div><p>Bösartige Neubildung: Bronchus und Lunge mehrere Teilbereiche überlappend</p>\n</div></blockquote></div>"
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
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "16100001"
        },
        {
          "system" : "http://loinc.org",
          "code" : "79378-6"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/sid/icd-10",
          "version" : "2019",
          "code" : "C34.8"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "recordedDate" : "2024-03-13",
      "note" : [{
        "text" : "Bösartige Neubildung: Bronchus und Lunge mehrere Teilbereiche überlappend"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-test-data-patient-2-todesursache-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Procedure/mii-exa-test-data-patient-2-prozedur-1",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-test-data-patient-2-prozedur-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-test-data-patient-2-prozedur-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-test-data-patient-2-prozedur-1</b></p><a name=\"mii-exa-test-data-patient-2-prozedur-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-prozedur-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Prozedur Durchführungsabsicht</b>: <a href=\"http://snomed.info/id/262202000\">SNOMED CT: 262202000</a> (Therapeutic)</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 387713003}\">Surgical procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 726428009}, {http://fhir.de/CodeSystem/bfarm/ops 5-322.d1}\">Lobectomy of upper lobe of right lung</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>performed</b>: 2024-03-05 08:00:00+0100 --&gt; 2024-03-05 12:30:00+0100</p><p><b>recorder</b>: <a href=\"PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.html\">PractitionerRole Physician (occupation)</a></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 39607008}\">Lung structure</span></p><p><b>note</b>: </p><blockquote><div><p>Thorakotomie mit Lobektomie des rechten Oberlappens bei Lungenkarzinom</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "262202000",
          "display" : "Therapeutic"
        }
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "387713003"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "726428009"
        },
        {
          "extension" : [{
            "url" : "http://fhir.de/StructureDefinition/seitenlokalisation",
            "valueCoding" : {
              "system" : "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION",
              "code" : "R"
            }
          }],
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2024",
          "code" : "5-322.d1"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "performedPeriod" : {
        "start" : "2024-03-05T08:00:00+01:00",
        "end" : "2024-03-05T12:30:00+01:00"
      },
      "recorder" : {
        "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "39607008"
        }]
      }],
      "note" : [{
        "text" : "Thorakotomie mit Lobektomie des rechten Oberlappens bei Lungenkarzinom"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-test-data-patient-2-prozedur-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Procedure/mii-exa-test-data-patient-2-prozedur-2",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-test-data-patient-2-prozedur-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-test-data-patient-2-prozedur-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-test-data-patient-2-prozedur-2</b></p><a name=\"mii-exa-test-data-patient-2-prozedur-2\"> </a><a name=\"hcmii-exa-test-data-patient-2-prozedur-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Prozedur Durchführungsabsicht</b>: <a href=\"http://snomed.info/id/74964007\">SNOMED CT: 74964007</a> (Other)</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 394841004}\">Other category</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 182810003}, {http://fhir.de/CodeSystem/bfarm/ops 8-930}\">Intensive care monitoring</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>performed</b>: 2024-03-05 12:30:00+0100 --&gt; 2024-03-10 10:00:00+0100</p><p><b>recorder</b>: <a href=\"PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.html\">PractitionerRole Physician (occupation)</a></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 442083009}\">Anatomical or acquired body structure</span></p><p><b>note</b>: </p><blockquote><div><p>Postoperative Intensivüberwachung nach Lobektomie</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "74964007",
          "display" : "Other"
        }
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "394841004"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "182810003"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2024",
          "code" : "8-930"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "performedPeriod" : {
        "start" : "2024-03-05T12:30:00+01:00",
        "end" : "2024-03-10T10:00:00+01:00"
      },
      "recorder" : {
        "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "442083009"
        }]
      }],
      "note" : [{
        "text" : "Postoperative Intensivüberwachung nach Lobektomie"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-test-data-patient-2-prozedur-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Procedure/mii-exa-test-data-patient-2-prozedur-3",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-test-data-patient-2-prozedur-3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-test-data-patient-2-prozedur-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-test-data-patient-2-prozedur-3</b></p><a name=\"mii-exa-test-data-patient-2-prozedur-3\"> </a><a name=\"hcmii-exa-test-data-patient-2-prozedur-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Prozedur Durchführungsabsicht</b>: <a href=\"http://snomed.info/id/264931009\">SNOMED CT: 264931009</a> (Symptomatic)</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 18629005}\">Administration of medication</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 182836005}, {http://fhir.de/CodeSystem/bfarm/ops 8-800.61}\">Review of medication</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>performed</b>: 2024-03-08 14:00:00+0100 --&gt; 2024-03-08 18:00:00+0100</p><p><b>recorder</b>: <a href=\"PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.html\">PractitionerRole Physician (occupation)</a></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 19715009}\">Structure of basilic vein</span></p><p><b>note</b>: </p><blockquote><div><p>Transfusion von 2 Einheiten Erythrozytenkonzentrat bei Anämie</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "264931009",
          "display" : "Symptomatic"
        }
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "18629005"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "182836005"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2024",
          "code" : "8-800.61"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "performedPeriod" : {
        "start" : "2024-03-08T14:00:00+01:00",
        "end" : "2024-03-08T18:00:00+01:00"
      },
      "recorder" : {
        "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "19715009"
        }]
      }],
      "note" : [{
        "text" : "Transfusion von 2 Einheiten Erythrozytenkonzentrat bei Anämie"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-test-data-patient-2-prozedur-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/ServiceRequest/mii-exa-test-data-patient-2-labrequest-1",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-test-data-patient-2-labrequest-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-test-data-patient-2-labrequest-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-test-data-patient-2-labrequest-1</b></p><a name=\"mii-exa-test-data-patient-2-labrequest-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-labrequest-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab\">MII PR Labor Laboranforderung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Placer Identifier/LAB_000002</p><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 58410-2}\">CBC panel - Blood by Automated count</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>authoredOn</b>: 2024-03-04 07:00:00+0100</p><p><b>requester</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p><p><b>reasonCode</b>: <span title=\"Codes:{http://snomed.info/sct 254637007}\">Non-small cell lung cancer (disorder)</span></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-requests",
        "value" : "LAB_000002",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "status" : "completed",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "58410-2",
          "display" : "CBC panel - Blood by Automated count"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "authoredOn" : "2024-03-04T07:00:00+01:00",
      "requester" : {
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      },
      "reasonCode" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "254637007",
          "display" : "Non-small cell lung cancer (disorder)"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-test-data-patient-2-labrequest-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/DiagnosticReport/mii-exa-test-data-patient-2-labreport-1",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "mii-exa-test-data-patient-2-labreport-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_mii-exa-test-data-patient-2-labreport-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport mii-exa-test-data-patient-2-labreport-1</b></p><a name=\"mii-exa-test-data-patient-2-labreport-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-labreport-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab\">MII PR Labor Laborbefund</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2><span title=\"Codes:{http://loinc.org 11502-2}\">Laboratory report</span> (<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 LAB}, {http://loinc.org 26436-6}\">Laboratory studies (set)</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</td></tr><tr><td>Relevant Time</td><td>2024-03-04 07:30:00+0100</td></tr><tr><td>Reported</td><td>2024-03-04 11:30:00+0100</td></tr><tr><td>Performer</td><td> <a href=\"Organization-mii-exa-test-data-organization-labor-berlin.html\">Organization Labor Berlin – Charité Vivantes GmbH</a></td></tr><tr><td>Identifier</td><td> Filler Identifier/LDR_000002</td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Reference Range</b></td><td><b>Flags</b></td><td><b>Note</b></td><td><b>Reported</b></td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-2-labobs-1.html\"><span title=\"Codes:{http://loinc.org 26464-8}\">Leukocytes [#/volume] in Blood</span></a></td><td>3.2 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span></td><td>3.9 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span> - 10.5 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Low</span></td><td><blockquote><div><p>Leukopenie bei Tumorpatient</p>\n</div></blockquote></td><td>2024-03-04 09:15:00+0100</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-2-labobs-2.html\"><span title=\"Codes:{http://loinc.org 26453-1}\">Erythrocytes [#/volume] in Blood</span></a></td><td>3.8 /picoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/pL = '/pL')</span></td><td/><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Low</span></td><td/><td>2024-03-04 09:15:00+0100</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-2-labobs-3.html\"><span title=\"Codes:{http://loinc.org 718-7}\">Hemoglobin [Mass/volume] in Blood</span></a></td><td>9.2 gram per deciliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeg/dL = 'g/dL')</span></td><td/><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Low</span></td><td/><td>2024-03-04 09:15:00+0100</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-2-labobs-4.html\"><span title=\"Codes:{http://loinc.org 26515-7}\">Platelets [#/volume] in Blood</span></a></td><td>120 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span></td><td/><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Low</span></td><td/><td>2024-03-04 09:15:00+0100</td></tr></table><p>Panzytopenie bei Tumorpatient: Leukopenie (3,2/nL), Anämie (Hb 9,2 g/dL), Thrombozytopenie (120/nL). Chemotherapie-assoziierte Knochenmarkssuppression.</p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "FILL"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LDR_000002",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-2-labrequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB"
        },
        {
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11502-2",
          "display" : "Laboratory report"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "effectiveDateTime" : "2024-03-04T07:30:00+01:00",
      "issued" : "2024-03-04T11:30:00+01:00",
      "performer" : [{
        "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
      }],
      "result" : [{
        "reference" : "Observation/mii-exa-test-data-patient-2-labobs-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-2-labobs-2"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-2-labobs-3"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-2-labobs-4"
      }],
      "conclusion" : "Panzytopenie bei Tumorpatient: Leukopenie (3,2/nL), Anämie (Hb 9,2 g/dL), Thrombozytopenie (120/nL). Chemotherapie-assoziierte Knochenmarkssuppression."
    },
    "request" : {
      "method" : "PUT",
      "url" : "DiagnosticReport/mii-exa-test-data-patient-2-labreport-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-2-labobs-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-2-labobs-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-2-labobs-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-2-labobs-1</b></p><a name=\"mii-exa-test-data-patient-2-labobs-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-labobs-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000007</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-2-labrequest-1.html\">ServiceRequest CBC panel - Blood by Automated count</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 26464-8}\">Leukocytes [#/volume] in Blood</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>effective</b>: 2024-03-04 07:30:00+0100</p><p><b>issued</b>: 2024-03-04 09:15:00+0100</p><p><b>value</b>: 3.2 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Low</span></p><p><b>note</b>: </p><blockquote><div><p>Leukopenie bei Tumorpatient</p>\n</div></blockquote><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 703452004}\">Electrical impedance technique (qualifier value)</span></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p><h3>ReferenceRanges</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Low</b></td><td><b>High</b></td></tr><tr><td style=\"display: none\">*</td><td>3.9 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span></td><td>10.5 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000007",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-2-labrequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        },
        {
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "26464-8",
          "display" : "Leukocytes [#/volume] in Blood"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "effectiveDateTime" : "2024-03-04T07:30:00+01:00",
      "issued" : "2024-03-04T09:15:00+01:00",
      "valueQuantity" : {
        "value" : 3.2,
        "unit" : "/nanoliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "/nL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "L",
          "display" : "Low"
        }]
      }],
      "note" : [{
        "text" : "Leukopenie bei Tumorpatient"
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "703452004",
          "display" : "Electrical impedance technique (qualifier value)"
        }]
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
      },
      "referenceRange" : [{
        "low" : {
          "value" : 3.9,
          "unit" : "/nanoliter",
          "system" : "http://unitsofmeasure.org",
          "code" : "/nL"
        },
        "high" : {
          "value" : 10.5,
          "unit" : "/nanoliter",
          "system" : "http://unitsofmeasure.org",
          "code" : "/nL"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-2-labobs-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-2-labobs-2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-2-labobs-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-2-labobs-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-2-labobs-2</b></p><a name=\"mii-exa-test-data-patient-2-labobs-2\"> </a><a name=\"hcmii-exa-test-data-patient-2-labobs-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000008</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-2-labrequest-1.html\">ServiceRequest CBC panel - Blood by Automated count</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 26453-1}\">Erythrocytes [#/volume] in Blood</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>effective</b>: 2024-03-04 07:30:00+0100</p><p><b>issued</b>: 2024-03-04 09:15:00+0100</p><p><b>value</b>: 3.8 /picoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/pL = '/pL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Low</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 703452004}\">Electrical impedance technique (qualifier value)</span></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000008",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-2-labrequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        },
        {
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "26453-1",
          "display" : "Erythrocytes [#/volume] in Blood"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "effectiveDateTime" : "2024-03-04T07:30:00+01:00",
      "issued" : "2024-03-04T09:15:00+01:00",
      "valueQuantity" : {
        "value" : 3.8,
        "unit" : "/picoliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "/pL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "L",
          "display" : "Low"
        }]
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "703452004",
          "display" : "Electrical impedance technique (qualifier value)"
        }]
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-2-labobs-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-2-labobs-3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-2-labobs-3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-2-labobs-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-2-labobs-3</b></p><a name=\"mii-exa-test-data-patient-2-labobs-3\"> </a><a name=\"hcmii-exa-test-data-patient-2-labobs-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000009</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-2-labrequest-1.html\">ServiceRequest CBC panel - Blood by Automated count</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 718-7}\">Hemoglobin [Mass/volume] in Blood</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>effective</b>: 2024-03-04 07:30:00+0100</p><p><b>issued</b>: 2024-03-04 09:15:00+0100</p><p><b>value</b>: 9.2 gram per deciliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeg/dL = 'g/dL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Low</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 83561000052101}\">Photometry technique (qualifier value)</span></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000009",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-2-labrequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        },
        {
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "718-7",
          "display" : "Hemoglobin [Mass/volume] in Blood"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "effectiveDateTime" : "2024-03-04T07:30:00+01:00",
      "issued" : "2024-03-04T09:15:00+01:00",
      "valueQuantity" : {
        "value" : 9.2,
        "unit" : "gram per deciliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "g/dL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "L",
          "display" : "Low"
        }]
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "83561000052101",
          "display" : "Photometry technique (qualifier value)"
        }]
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-2-labobs-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-2-labobs-4",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-2-labobs-4",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-2-labobs-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-2-labobs-4</b></p><a name=\"mii-exa-test-data-patient-2-labobs-4\"> </a><a name=\"hcmii-exa-test-data-patient-2-labobs-4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000010</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-2-labrequest-1.html\">ServiceRequest CBC panel - Blood by Automated count</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 26515-7}\">Platelets [#/volume] in Blood</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>effective</b>: 2024-03-04 07:30:00+0100</p><p><b>issued</b>: 2024-03-04 09:15:00+0100</p><p><b>value</b>: 120 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation L}\">Low</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 703452004}\">Electrical impedance technique (qualifier value)</span></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000010",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-2-labrequest-1"
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        },
        {
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "26515-7",
          "display" : "Platelets [#/volume] in Blood"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "effectiveDateTime" : "2024-03-04T07:30:00+01:00",
      "issued" : "2024-03-04T09:15:00+01:00",
      "valueQuantity" : {
        "value" : 120,
        "unit" : "/nanoliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "/nL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "L",
          "display" : "Low"
        }]
      }],
      "method" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "703452004",
          "display" : "Electrical impedance technique (qualifier value)"
        }]
      },
      "device" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-2-labobs-4"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationRequest/mii-exa-test-data-patient-2-medrequest-1",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-test-data-patient-2-medrequest-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-test-data-patient-2-medrequest-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-test-data-patient-2-medrequest-1</b></p><a name=\"mii-exa-test-data-patient-2-medrequest-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-medrequest-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest\">MII PR Medikation MedicationRequest</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationOrders</code>/MO_0000006</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <span title=\"Codes:\">Morphin 10 mg Tabletten</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>authoredOn</b>: 2024-03-06 08:00:00+0100</p><h3>DosageInstructions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>Morphin 10 mg oral, alle 6 Stunden bei Bedarf</td></tr></table><h3>Substitutions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Allowed[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>true</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
        "value" : "MO_0000006"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationCodeableConcept" : {
        "text" : "Morphin 10 mg Tabletten"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "authoredOn" : "2024-03-06T08:00:00+01:00",
      "dosageInstruction" : [{
        "text" : "Morphin 10 mg oral, alle 6 Stunden bei Bedarf"
      }],
      "substitution" : {
        "allowedBoolean" : true
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-test-data-patient-2-medrequest-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationRequest/mii-exa-test-data-patient-2-medrequest-2",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-test-data-patient-2-medrequest-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-test-data-patient-2-medrequest-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-test-data-patient-2-medrequest-2</b></p><a name=\"mii-exa-test-data-patient-2-medrequest-2\"> </a><a name=\"hcmii-exa-test-data-patient-2-medrequest-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest\">MII PR Medikation MedicationRequest</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationOrders</code>/MO_0000007</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <span title=\"Codes:\">Carboplatin Infusionsloesung 450 mg</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>authoredOn</b>: 2024-03-07 10:00:00+0100</p><h3>DosageInstructions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>Carboplatin 450 mg intravenös über 1 Stunde, Gabe am 07.03.2024</td></tr></table><h3>Substitutions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Allowed[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>false</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
        "value" : "MO_0000007"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationCodeableConcept" : {
        "text" : "Carboplatin Infusionsloesung 450 mg"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "authoredOn" : "2024-03-07T10:00:00+01:00",
      "dosageInstruction" : [{
        "text" : "Carboplatin 450 mg intravenös über 1 Stunde, Gabe am 07.03.2024"
      }],
      "substitution" : {
        "allowedBoolean" : false
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-test-data-patient-2-medrequest-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationRequest/mii-exa-test-data-patient-2-medrequest-3",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-test-data-patient-2-medrequest-3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-test-data-patient-2-medrequest-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-test-data-patient-2-medrequest-3</b></p><a name=\"mii-exa-test-data-patient-2-medrequest-3\"> </a><a name=\"hcmii-exa-test-data-patient-2-medrequest-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest\">MII PR Medikation MedicationRequest</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationOrders</code>/MO_0000008</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <span title=\"Codes:\">Paclitaxel Infusionsloesung 175 mg</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>authoredOn</b>: 2024-03-07 10:30:00+0100</p><h3>DosageInstructions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>Paclitaxel 175 mg intravenös über 3 Stunden, Gabe am 07.03.2024</td></tr></table><h3>Substitutions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Allowed[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>false</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
        "value" : "MO_0000008"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationCodeableConcept" : {
        "text" : "Paclitaxel Infusionsloesung 175 mg"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "authoredOn" : "2024-03-07T10:30:00+01:00",
      "dosageInstruction" : [{
        "text" : "Paclitaxel 175 mg intravenös über 3 Stunden, Gabe am 07.03.2024"
      }],
      "substitution" : {
        "allowedBoolean" : false
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-test-data-patient-2-medrequest-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-2-medstatement-1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-2-medstatement-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-2-medstatement-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-2-medstatement-1</b></p><a name=\"mii-exa-test-data-patient-2-medstatement-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-medstatement-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000007</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-2-medrequest-1.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000006; status = active; intent = order; medication[x] = ; authoredOn = 2024-03-06 08:00:00+0100</a></p><p><b>status</b>: Active</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category inpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></p><p><b>medication</b>: <span title=\"Codes:\">Morphin 10 mg Tabletten</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>effective</b>: 2024-03-06 08:00:00+0100 --&gt; 2024-03-13 10:00:00+0100</p><p><b>dateAsserted</b>: 2024-03-06</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>Morphin 10 mg oral, alle 6 Stunden bei Bedarf</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000007"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-2-medrequest-1"
      }],
      "status" : "active",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
          "code" : "inpatient"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E200",
          "display" : "stationärer Aufenthalt"
        }]
      },
      "medicationCodeableConcept" : {
        "text" : "Morphin 10 mg Tabletten"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2024-03-06T08:00:00+01:00",
        "end" : "2024-03-13T10:00:00+01:00"
      },
      "dateAsserted" : "2024-03-06",
      "dosage" : [{
        "text" : "Morphin 10 mg oral, alle 6 Stunden bei Bedarf"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-2-medstatement-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-2-medstatement-2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-2-medstatement-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-2-medstatement-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-2-medstatement-2</b></p><a name=\"mii-exa-test-data-patient-2-medstatement-2\"> </a><a name=\"hcmii-exa-test-data-patient-2-medstatement-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000008</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-2-medrequest-2.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000007; status = active; intent = order; medication[x] = ; authoredOn = 2024-03-07 10:00:00+0100</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category inpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></p><p><b>medication</b>: <span title=\"Codes:\">Carboplatin Infusionsloesung 450 mg</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>effective</b>: 2024-03-07 10:00:00+0100 --&gt; 2024-03-07 11:00:00+0100</p><p><b>dateAsserted</b>: 2024-03-07</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>Carboplatin 450 mg intravenös über 1 Stunde</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000008"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-2-medrequest-2"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
          "code" : "inpatient"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E200",
          "display" : "stationärer Aufenthalt"
        }]
      },
      "medicationCodeableConcept" : {
        "text" : "Carboplatin Infusionsloesung 450 mg"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2024-03-07T10:00:00+01:00",
        "end" : "2024-03-07T11:00:00+01:00"
      },
      "dateAsserted" : "2024-03-07",
      "dosage" : [{
        "text" : "Carboplatin 450 mg intravenös über 1 Stunde"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-2-medstatement-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-2-medstatement-3",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-2-medstatement-3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-2-medstatement-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-2-medstatement-3</b></p><a name=\"mii-exa-test-data-patient-2-medstatement-3\"> </a><a name=\"hcmii-exa-test-data-patient-2-medstatement-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000009</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-2-medrequest-3.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000008; status = active; intent = order; medication[x] = ; authoredOn = 2024-03-07 10:30:00+0100</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category inpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></p><p><b>medication</b>: <span title=\"Codes:\">Paclitaxel Infusionsloesung 175 mg</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>effective</b>: 2024-03-07 10:30:00+0100 --&gt; 2024-03-07 13:30:00+0100</p><p><b>dateAsserted</b>: 2024-03-07</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>Paclitaxel 175 mg intravenös über 3 Stunden</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000009"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-2-medrequest-3"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
          "code" : "inpatient"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E200",
          "display" : "stationärer Aufenthalt"
        }]
      },
      "medicationCodeableConcept" : {
        "text" : "Paclitaxel Infusionsloesung 175 mg"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2024-03-07T10:30:00+01:00",
        "end" : "2024-03-07T13:30:00+01:00"
      },
      "dateAsserted" : "2024-03-07",
      "dosage" : [{
        "text" : "Paclitaxel 175 mg intravenös über 3 Stunden"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-2-medstatement-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-2-medstatement-4",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-2-medstatement-4",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-2-medstatement-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-2-medstatement-4</b></p><a name=\"mii-exa-test-data-patient-2-medstatement-4\"> </a><a name=\"hcmii-exa-test-data-patient-2-medstatement-4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000004</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category inpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></p><p><b>medication</b>: <span title=\"Codes:\">Erythrozytenkonzentrat</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>effective</b>: 2022-08-01</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>Erythrozytenkonzentrat 150 bis 300 mL/h intravenös</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000004"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
          "code" : "inpatient"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E200",
          "display" : "stationärer Aufenthalt"
        }]
      },
      "medicationCodeableConcept" : {
        "text" : "Erythrozytenkonzentrat"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "effectiveDateTime" : "2022-08-01",
      "dosage" : [{
        "text" : "Erythrozytenkonzentrat 150 bis 300 mL/h intravenös"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-2-medstatement-4"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-2-medstatement-5",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-2-medstatement-5",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-2-medstatement-5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-2-medstatement-5</b></p><a name=\"mii-exa-test-data-patient-2-medstatement-5\"> </a><a name=\"hcmii-exa-test-data-patient-2-medstatement-5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000028</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category inpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></p><p><b>medication</b>: <span title=\"Codes:\">Erythrozytenkonzentrat</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>effective</b>: 2022-08-02</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>Erythrozytenkonzentrat 150 mL/h intravenös</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000028"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
          "code" : "inpatient"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E200",
          "display" : "stationärer Aufenthalt"
        }]
      },
      "medicationCodeableConcept" : {
        "text" : "Erythrozytenkonzentrat"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "effectiveDateTime" : "2022-08-02",
      "dosage" : [{
        "text" : "Erythrozytenkonzentrat 150 mL/h intravenös"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-2-medstatement-5"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationAdministration/mii-exa-test-data-patient-2-medadmin-1",
    "resource" : {
      "resourceType" : "MedicationAdministration",
      "id" : "mii-exa-test-data-patient-2-medadmin-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationAdministration_mii-exa-test-data-patient-2-medadmin-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationAdministration mii-exa-test-data-patient-2-medadmin-1</b></p><a name=\"mii-exa-test-data-patient-2-medadmin-1\"> </a><a name=\"hcmii-exa-test-data-patient-2-medadmin-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration\">MII PR Medikation MedicationAdministration</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationAdministrations</code>/MA_0000003</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-admin-category inpatient}\">Inpatient</span></p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/ifa/pzn 02746517}, {http://fhir.de/CodeSystem/bfarm/atc N02AA01}, {http://www.whocc.no/atc N02AA01}\">Morphin 10 mg oral</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>effective</b>: 2024-03-06 14:00:00+0100</p><p><b>request</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-2-medrequest-1.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000006; status = active; intent = order; medication[x] = ; authoredOn = 2024-03-06 08:00:00+0100</a></p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td><td><b>Route</b></td><td><b>Dose</b></td></tr><tr><td style=\"display: none\">*</td><td>Morphin 10mg oral bei Schmerzen</td><td><span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></td><td>10 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
        "value" : "MA_0000003"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
          "code" : "inpatient",
          "display" : "Inpatient"
        }]
      },
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/ifa/pzn",
          "code" : "02746517",
          "display" : "MORPHIN Merck Tropfen 0,5 %"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2023",
          "code" : "N02AA01",
          "display" : "Morphin"
        },
        {
          "system" : "http://www.whocc.no/atc",
          "code" : "N02AA01",
          "display" : "morphine"
        }],
        "text" : "Morphin 10 mg oral"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "effectiveDateTime" : "2024-03-06T14:00:00+01:00",
      "request" : {
        "reference" : "MedicationRequest/mii-exa-test-data-patient-2-medrequest-1"
      },
      "dosage" : {
        "text" : "Morphin 10mg oral bei Schmerzen",
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "dose" : {
          "value" : 10,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationAdministration/mii-exa-test-data-patient-2-medadmin-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationAdministration/mii-exa-test-data-patient-2-medadmin-2",
    "resource" : {
      "resourceType" : "MedicationAdministration",
      "id" : "mii-exa-test-data-patient-2-medadmin-2",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationAdministration_mii-exa-test-data-patient-2-medadmin-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationAdministration mii-exa-test-data-patient-2-medadmin-2</b></p><a name=\"mii-exa-test-data-patient-2-medadmin-2\"> </a><a name=\"hcmii-exa-test-data-patient-2-medadmin-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration\">MII PR Medikation MedicationAdministration</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationAdministrations</code>/MA_0000004</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-admin-category inpatient}\">Inpatient</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-carboplatin.html\">Medication Carboplatin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>effective</b>: 2024-03-07 10:00:00+0100 --&gt; 2024-03-07 11:00:00+0100</p><p><b>request</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-2-medrequest-2.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000007; status = active; intent = order; medication[x] = ; authoredOn = 2024-03-07 10:00:00+0100</a></p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td><td><b>Route</b></td><td><b>Dose</b></td><td><b>Rate[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>Carboplatin 450mg IV über 1 Stunde</td><td><span title=\"Codes:{http://standardterms.edqm.eu 20045000}\">Intravenous use</span></td><td>450 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td><td>450 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 h<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeh = 'h')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
        "value" : "MA_0000004"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
          "code" : "inpatient",
          "display" : "Inpatient"
        }]
      },
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-carboplatin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2024-03-07T10:00:00+01:00",
        "end" : "2024-03-07T11:00:00+01:00"
      },
      "request" : {
        "reference" : "MedicationRequest/mii-exa-test-data-patient-2-medrequest-2"
      },
      "dosage" : {
        "text" : "Carboplatin 450mg IV über 1 Stunde",
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20045000",
            "display" : "Intravenous use"
          }]
        },
        "dose" : {
          "value" : 450,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "rateRatio" : {
          "numerator" : {
            "value" : 450,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 1,
            "unit" : "h",
            "system" : "http://unitsofmeasure.org",
            "code" : "h"
          }
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationAdministration/mii-exa-test-data-patient-2-medadmin-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationAdministration/mii-exa-test-data-patient-2-medadmin-3",
    "resource" : {
      "resourceType" : "MedicationAdministration",
      "id" : "mii-exa-test-data-patient-2-medadmin-3",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationAdministration_mii-exa-test-data-patient-2-medadmin-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationAdministration mii-exa-test-data-patient-2-medadmin-3</b></p><a name=\"mii-exa-test-data-patient-2-medadmin-3\"> </a><a name=\"hcmii-exa-test-data-patient-2-medadmin-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration\">MII PR Medikation MedicationAdministration</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationAdministrations</code>/MA_0000005</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-admin-category inpatient}\">Inpatient</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-paclitaxel.html\">Medication Paclitaxel</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-2-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Hämatologie und internistische Onkologie; period = 2024-03-02 --&gt; 2024-03-13</a></p><p><b>effective</b>: 2024-03-07 10:30:00+0100 --&gt; 2024-03-07 13:30:00+0100</p><p><b>request</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-2-medrequest-3.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000008; status = active; intent = order; medication[x] = ; authoredOn = 2024-03-07 10:30:00+0100</a></p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td><td><b>Route</b></td><td><b>Dose</b></td><td><b>Rate[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>Paclitaxel 175mg IV über 3 Stunden</td><td><span title=\"Codes:{http://standardterms.edqm.eu 20045000}\">Intravenous use</span></td><td>175 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td><td>175 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/3 h<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeh = 'h')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
        "value" : "MA_0000005"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-admin-category",
          "code" : "inpatient",
          "display" : "Inpatient"
        }]
      },
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-paclitaxel"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-2-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2024-03-07T10:30:00+01:00",
        "end" : "2024-03-07T13:30:00+01:00"
      },
      "request" : {
        "reference" : "MedicationRequest/mii-exa-test-data-patient-2-medrequest-3"
      },
      "dosage" : {
        "text" : "Paclitaxel 175mg IV über 3 Stunden",
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20045000",
            "display" : "Intravenous use"
          }]
        },
        "dose" : {
          "value" : 175,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "rateRatio" : {
          "numerator" : {
            "value" : 175,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 3,
            "unit" : "h",
            "system" : "http://unitsofmeasure.org",
            "code" : "h"
          }
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationAdministration/mii-exa-test-data-patient-2-medadmin-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/List/mii-exa-test-data-patient-2-list-stat-aufenthalt",
    "resource" : {
      "resourceType" : "List",
      "id" : "mii-exa-test-data-patient-2-list-stat-aufenthalt",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_mii-exa-test-data-patient-2-list-stat-aufenthalt\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List mii-exa-test-data-patient-2-list-stat-aufenthalt</b></p><a name=\"mii-exa-test-data-patient-2-list-stat-aufenthalt\"> </a><a name=\"hcmii-exa-test-data-patient-2-list-stat-aufenthalt\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste\">MII PR Medikation Medikationsliste</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2>Medikationsliste während stationärem Aufenthalt</h2><table class=\"clstu\"><tr><td>Mode: Working List </td><td>Status: Current </td><td>Code: Medication List </td></tr><tr><td>Subject: <a href=\"Patient-mii-exa-test-data-patient-2.html\">Anonymous Patient Other, DoB: 2000-06-30 ( Medical record number)</a></td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-2-medstatement-1.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000007; status = active; category = stationärer Aufenthalt; medication[x] = ; effective[x] = 2024-03-06 08:00:00+0100 --&gt; 2024-03-13 10:00:00+0100; dateAsserted = 2024-03-06</a></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-2-medstatement-2.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000008; status = completed; category = stationärer Aufenthalt; medication[x] = ; effective[x] = 2024-03-07 10:00:00+0100 --&gt; 2024-03-07 11:00:00+0100; dateAsserted = 2024-03-07</a></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-2-medstatement-3.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000009; status = completed; category = stationärer Aufenthalt; medication[x] = ; effective[x] = 2024-03-07 10:30:00+0100 --&gt; 2024-03-07 13:30:00+0100; dateAsserted = 2024-03-07</a></td></tr></table></div>"
      },
      "status" : "current",
      "mode" : "working",
      "title" : "Medikationsliste während stationärem Aufenthalt",
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
          "code" : "medications"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E200"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-2"
      },
      "entry" : [{
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-2-medstatement-1"
        }
      },
      {
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-2-medstatement-2"
        }
      },
      {
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-2-medstatement-3"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "List/mii-exa-test-data-patient-2-list-stat-aufenthalt"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Medication/mii-exa-test-data-medication-morphin",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "mii-exa-test-data-medication-morphin",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_mii-exa-test-data-medication-morphin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication mii-exa-test-data-medication-morphin</b></p><a name=\"mii-exa-test-data-medication-morphin\"> </a><a name=\"hcmii-exa-test-data-medication-morphin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication\">MII PR Medikation Medication</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc N02AA01}\">Morphin</span></p><p><b>status</b>: Active</p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 10219000}\">Tablet</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/ask 07651}\">Morphinhemisulfat-2,5-Hydrat</span></td><td>10 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td></tr></table></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2024",
          "code" : "N02AA01",
          "display" : "Morphin"
        }]
      },
      "status" : "active",
      "form" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "10219000",
          "display" : "Tablet"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/ask",
            "version" : "20260105",
            "code" : "07651"
          }]
        },
        "strength" : {
          "numerator" : {
            "value" : 10,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 1,
            "unit" : "1",
            "system" : "http://unitsofmeasure.org",
            "code" : "1"
          }
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Medication/mii-exa-test-data-medication-morphin"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Medication/mii-exa-test-data-medication-carboplatin",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "mii-exa-test-data-medication-carboplatin",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_mii-exa-test-data-medication-carboplatin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication mii-exa-test-data-medication-carboplatin</b></p><a name=\"mii-exa-test-data-medication-carboplatin\"> </a><a name=\"hcmii-exa-test-data-medication-carboplatin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication\">MII PR Medikation Medication</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01XA02}\">Carboplatin</span></p><p><b>status</b>: Active</p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 11210000}\">Solution for infusion</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/ask 23168}\">Carboplatin</span></td><td>450 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/45 ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeml = 'ml')</span></td></tr></table></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2024",
          "code" : "L01XA02",
          "display" : "Carboplatin"
        }]
      },
      "status" : "active",
      "form" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "11210000",
          "display" : "Solution for infusion"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/ask",
            "version" : "20260105",
            "code" : "23168"
          }]
        },
        "strength" : {
          "numerator" : {
            "value" : 450,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 45,
            "unit" : "ml",
            "system" : "http://unitsofmeasure.org",
            "code" : "ml"
          }
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Medication/mii-exa-test-data-medication-carboplatin"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Medication/mii-exa-test-data-medication-paclitaxel",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "mii-exa-test-data-medication-paclitaxel",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_mii-exa-test-data-medication-paclitaxel\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication mii-exa-test-data-medication-paclitaxel</b></p><a name=\"mii-exa-test-data-medication-paclitaxel\"> </a><a name=\"hcmii-exa-test-data-medication-paclitaxel\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication\">MII PR Medikation Medication</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01CD01}\">Paclitaxel</span></p><p><b>status</b>: Active</p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 11210000}\">Solution for infusion</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/ask 26509}\">Paclitaxel ((Mit Angaben zu Herkunft))</span></td><td>175 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/29 ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeml = 'ml')</span></td></tr></table></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2024",
          "code" : "L01CD01",
          "display" : "Paclitaxel"
        }]
      },
      "status" : "active",
      "form" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "11210000",
          "display" : "Solution for infusion"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/ask",
            "version" : "20260105",
            "code" : "26509"
          }]
        },
        "strength" : {
          "numerator" : {
            "value" : 175,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 29,
            "unit" : "ml",
            "system" : "http://unitsofmeasure.org",
            "code" : "ml"
          }
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Medication/mii-exa-test-data-medication-paclitaxel"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Organization/mii-exa-test-data-organization-charite",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "mii-exa-test-data-organization-charite",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_mii-exa-test-data-organization-charite\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization mii-exa-test-data-organization-charite</b></p><a name=\"mii-exa-test-data-organization-charite\"> </a><a name=\"hcmii-exa-test-data-organization-charite\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span></p><p><b>name</b>: Charité – Universitätsmedizin Berlin</p></div>"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }]
      }],
      "name" : "Charité – Universitätsmedizin Berlin"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization/mii-exa-test-data-organization-charite"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Organization/mii-exa-test-data-organization-labor-berlin",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "mii-exa-test-data-organization-labor-berlin",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_mii-exa-test-data-organization-labor-berlin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization mii-exa-test-data-organization-labor-berlin</b></p><a name=\"mii-exa-test-data-organization-labor-berlin\"> </a><a name=\"hcmii-exa-test-data-organization-labor-berlin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span></p><p><b>name</b>: Labor Berlin – Charité Vivantes GmbH</p></div>"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }]
      }],
      "name" : "Labor Berlin – Charité Vivantes GmbH"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization/mii-exa-test-data-organization-labor-berlin"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Organization/mii-exa-test-data-organization-biobank-charite",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "mii-exa-test-data-organization-biobank-charite",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_mii-exa-test-data-organization-biobank-charite\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization mii-exa-test-data-organization-biobank-charite</b></p><a name=\"mii-exa-test-data-organization-biobank-charite\"> </a><a name=\"hcmii-exa-test-data-organization-biobank-charite\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Organization\">MII PR Biobank Organization Sammlung Biobank</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>Description extension</b>: Zentrale Biobank der Charité</p><p><b>identifier</b>: <code>http://www.bbmri-eric.eu/</code>/de-12345</p><p><b>name</b>: Zentrale Biobank der Charité</p><p><b>alias</b>: ZeBanC</p><p><b>partOf</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Organization Charité – Universitätsmedizin Berlin</a></p><h3>Contacts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Purpose</b></td><td><b>Name</b></td><td><b>Telecom</b></td><td><b>Address</b></td></tr><tr><td style=\"display: none\">*</td><td/><td><span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/ContactType RESEARCH}\">Research</span></td><td>Koch Robert </td><td><a href=\"mailto:robert.koch@charite.de\">robert.koch@charite.de</a></td><td>Südring 7 Berlin 13353 </td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://fhir.bbmri-eric.eu/StructureDefinition/miabis-organization-description-extension",
        "valueString" : "Zentrale Biobank der Charité"
      }],
      "identifier" : [{
        "system" : "http://www.bbmri-eric.eu/",
        "value" : "de-12345"
      }],
      "name" : "Zentrale Biobank der Charité",
      "alias" : ["ZeBanC"],
      "partOf" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite"
      },
      "contact" : [{
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/KontaktRolle",
          "valueString" : "Direktor"
        }],
        "purpose" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/CodeSystem/ContactType",
            "code" : "RESEARCH"
          }]
        },
        "name" : {
          "family" : "Robert",
          "given" : ["Koch"],
          "prefix" : ["Prof."]
        },
        "telecom" : [{
          "system" : "email",
          "value" : "robert.koch@charite.de"
        }],
        "address" : {
          "line" : ["Südring 7"],
          "city" : "Berlin",
          "postalCode" : "13353"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization/mii-exa-test-data-organization-biobank-charite"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Practitioner/mii-exa-test-data-practitioner-physician-1",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "mii-exa-test-data-practitioner-physician-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_mii-exa-test-data-practitioner-physician-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner mii-exa-test-data-practitioner-physician-1</b></p><a name=\"mii-exa-test-data-practitioner-physician-1\"> </a><a name=\"hcmii-exa-test-data-practitioner-physician-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>active</b>: true</p><p><b>name</b>: Rahel Hirsch </p></div>"
      },
      "active" : true,
      "name" : [{
        "family" : "Hirsch",
        "given" : ["Rahel"]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/PractitionerRole/mii-exa-test-data-practitioner-role-physician-1",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "mii-exa-test-data-practitioner-role-physician-1",
      "meta" : {
        "source" : "https://www.charite.de/fhir/kds-testdata",
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST",
          "display" : "test health data"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_mii-exa-test-data-practitioner-role-physician-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PractitionerRole mii-exa-test-data-practitioner-role-physician-1</b></p><a name=\"mii-exa-test-data-practitioner-role-physician-1\"> </a><a name=\"hcmii-exa-test-data-practitioner-role-physician-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person\">MII PR Studie Beteiligte Person</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>active</b>: true</p><p><b>practitioner</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p><p><b>organization</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Organization Charité – Universitätsmedizin Berlin</a></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 309343006}\">Physician (occupation)</span></p><p><b>telecom</b>: <a href=\"mailto:studienteam@charite.de\">studienteam@charite.de</a></p></div>"
      },
      "active" : true,
      "practitioner" : {
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      },
      "organization" : {
        "reference" : "Organization/mii-exa-test-data-organization-charite"
      },
      "code" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "309343006",
          "display" : "Physician (occupation)"
        }]
      }],
      "telecom" : [{
        "system" : "email",
        "value" : "studienteam@charite.de",
        "use" : "work"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-device-roche-cobas",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-device-roche-cobas",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-device-roche-cobas\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-device-roche-cobas</b></p><a name=\"mii-exa-test-data-device-roche-cobas\"> </a><a name=\"hcmii-exa-test-data-device-roche-cobas\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Laboratory-device-identifier</code>/RocheCobas</p><p><b>status</b>: Active</p><p><b>manufacturer</b>: Roche</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>cobas</td><td>Manufacturer name</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Laboratory-device-identifier",
        "value" : "RocheCobas"
      }],
      "status" : "active",
      "manufacturer" : "Roche",
      "deviceName" : [{
        "name" : "cobas",
        "type" : "manufacturer-name"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-device-roche-cobas"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-device-roche-cobas-c303",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-device-roche-cobas-c303",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-device-roche-cobas-c303\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-device-roche-cobas-c303</b></p><a name=\"mii-exa-test-data-device-roche-cobas-c303\"> </a><a name=\"hcmii-exa-test-data-device-roche-cobas-c303\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Laboratory-device-identifier</code>/RocheCobasC303</p><p><b>status</b>: Active</p><p><b>manufacturer</b>: Roche</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>cobas</td><td>Manufacturer name</td></tr></table><p><b>modelNumber</b>: c 303</p><blockquote><p><b>property</b></p><p><b>type</b>: <span title=\"Codes:{urn:iso:std:iso:11073:10101 69684}\">MDC_DEV_ANALY_BLD_CHEM_MULTI_PARAM</span></p></blockquote><blockquote><p><b>property</b></p><p><b>type</b>: <span title=\"Codes:{urn:iso:std:iso:11073:10101 69652}\">MDC_DEV_ANALY_URINE_CHEM</span></p></blockquote><blockquote><p><b>property</b></p><p><b>type</b>: <span title=\"Codes:{urn:iso:std:iso:11073:10101 69844}\">MDC_DEV_METER_BLD_CHEM</span></p></blockquote><p><b>parent</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobas; status = active; manufacturer = Roche</a></p></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Laboratory-device-identifier",
        "value" : "RocheCobasC303"
      }],
      "status" : "active",
      "manufacturer" : "Roche",
      "deviceName" : [{
        "name" : "cobas",
        "type" : "manufacturer-name"
      }],
      "modelNumber" : "c 303",
      "property" : [{
        "type" : {
          "coding" : [{
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "69684"
          }]
        }
      },
      {
        "type" : {
          "coding" : [{
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "69652"
          }]
        }
      },
      {
        "type" : {
          "coding" : [{
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "69844"
          }]
        }
      }],
      "parent" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-device-roche-cobas-c303"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Device/mii-exa-test-data-device-roche-cobas-e402",
    "resource" : {
      "resourceType" : "Device",
      "id" : "mii-exa-test-data-device-roche-cobas-e402",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_mii-exa-test-data-device-roche-cobas-e402\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device mii-exa-test-data-device-roche-cobas-e402</b></p><a name=\"mii-exa-test-data-device-roche-cobas-e402\"> </a><a name=\"hcmii-exa-test-data-device-roche-cobas-e402\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Laboratory-device-identifier</code>/RocheCobasE402</p><p><b>status</b>: Active</p><p><b>manufacturer</b>: Roche</p><h3>DeviceNames</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Name</b></td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td>cobas</td><td>Manufacturer name</td></tr></table><p><b>modelNumber</b>: e 402</p><h3>Properties</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{urn:iso:std:iso:11073:10101 160220}\">MDC_CONC_HBA1C</span></td></tr></table><p><b>parent</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobas; status = active; manufacturer = Roche</a></p></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Laboratory-device-identifier",
        "value" : "RocheCobasE402"
      }],
      "status" : "active",
      "manufacturer" : "Roche",
      "deviceName" : [{
        "name" : "cobas",
        "type" : "manufacturer-name"
      }],
      "modelNumber" : "e 402",
      "property" : [{
        "type" : {
          "coding" : [{
            "system" : "urn:iso:std:iso:11073:10101",
            "code" : "160220"
          }]
        }
      }],
      "parent" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Device/mii-exa-test-data-device-roche-cobas-e402"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/DeviceMetric/mii-exa-test-data-devicemetric-roche-cobas-c303-1",
    "resource" : {
      "resourceType" : "DeviceMetric",
      "id" : "mii-exa-test-data-devicemetric-roche-cobas-c303-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DeviceMetric_mii-exa-test-data-devicemetric-roche-cobas-c303-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DeviceMetric mii-exa-test-data-devicemetric-roche-cobas-c303-1</b></p><a name=\"mii-exa-test-data-devicemetric-roche-cobas-c303-1\"> </a><a name=\"hcmii-exa-test-data-devicemetric-roche-cobas-c303-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/Laboratory-device-identifier</code>/RocheCobasC303-160192</p><p><b>type</b>: <span title=\"Codes:{urn:iso:std:iso:11073:10101 160192}\">MDC_CONC_GLU_VENOUS_WHOLEBLOOD</span></p><p><b>source</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p><p><b>category</b>: Measurement</p></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/Laboratory-device-identifier",
        "value" : "RocheCobasC303-160192"
      }],
      "type" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:11073:10101",
          "code" : "160192"
        }]
      },
      "source" : {
        "reference" : "Device/mii-exa-test-data-device-roche-cobas-c303"
      },
      "category" : "measurement"
    },
    "request" : {
      "method" : "PUT",
      "url" : "DeviceMetric/mii-exa-test-data-devicemetric-roche-cobas-c303-1"
    }
  }]
}

```
