# mii-exa-test-data-bundle-pat-6 - MII KDS Test Data v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-test-data-bundle-pat-6**

## Example Bundle: mii-exa-test-data-bundle-pat-6



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-test-data-bundle-pat-6",
  "meta" : {
    "source" : "https://www.charite.de/fhir/kds-testdata",
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST",
      "display" : "test health data"
    }]
  },
  "type" : "transaction",
  "timestamp" : "2025-06-18T13:56:00+02:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/Patient/mii-exa-test-data-patient-6",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-test-data-patient-6",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_mii-exa-test-data-patient-6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-test-data-patient-6</b></p><a name=\"mii-exa-test-data-patient-6\"> </a><a name=\"hcmii-exa-test-data-patient-6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profiles: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient\">MII PR Person Patient</a>, <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.consent@2027.0.0-ballot&amp;canonical=http://fhir.de/ConsentManagement/StructureDefinition/Patient\">Consent Management: Patient</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">false</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\">Krankenversichertennummer/D345678901 (use: official, )</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\">Hauptstraße 134 Hamburg 20095 DE </td></tr></table></div>"
      },
      "identifier" : [{
        "use" : "usual",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MR"
          }]
        },
        "system" : "https://www.medizininformatik-initiative.de/fhir/sid/patienten",
        "value" : "456789123",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          },
          "display" : "Charité - Universitätsmedizin Berlin"
        }
      },
      {
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/identifier-type-de-basis",
            "code" : "KVZ10"
          }]
        },
        "system" : "http://fhir.de/sid/gkv/kvid-10",
        "value" : "D345678901",
        "assigner" : {
          "identifier" : {
            "use" : "official",
            "system" : "http://fhir.de/sid/arge-ik/iknr",
            "value" : "123456789"
          }
        }
      }],
      "name" : [{
        "use" : "official",
        "family" : "Richter",
        "given" : ["Thomas", "Michael"]
      }],
      "gender" : "male",
      "birthDate" : "1975-11-08",
      "deceasedBoolean" : false,
      "address" : [{
        "type" : "both",
        "line" : ["Hauptstraße 134"],
        "city" : "Hamburg",
        "postalCode" : "20095",
        "country" : "DE"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Patient/mii-exa-test-data-patient-6"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Consent/mii-exa-test-data-patient-6-consent-1",
    "resource" : {
      "resourceType" : "Consent",
      "id" : "mii-exa-test-data-patient-6-consent-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Consent_mii-exa-test-data-patient-6-consent-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Consent mii-exa-test-data-patient-6-consent-1</b></p><a name=\"mii-exa-test-data-patient-6-consent-1\"> </a><a name=\"hcmii-exa-test-data-patient-6-consent-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-consent/StructureDefinition/mii-pr-consent-einwilligung\">Profile - MI-I - Consent - Einwilligung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2>Participants</h2><table class=\"grid\"><tr><td><b>Role</b></td><td><b>Details</b></td></tr><tr><td title=\"Who the consent applies to\">Patient</td><td><a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></td></tr><tr><td title=\"Who manages the consent through its lifecycle.\">Manager</td><td><a href=\"Organization-mii-exa-test-data-organization-charite.html\">Organization Charité – Universitätsmedizin Berlin</a></td></tr></table><p>This consent is made under the policy <code>urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791</code> .</p><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Rule\">Rule</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Period\">Time Period</a></th><th style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px\" class=\"hierarchy\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Applicable Data\">What</a><span style=\"float: right\"><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck01.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon-qi-hidden.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> deny</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2022-03-08 --&gt; 2052-03-31</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2022-03-08 --&gt; 2052-03-31</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.6}\">MDAT erheben</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2022-03-08 --&gt; 2052-03-31</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.7}\">MDAT speichern, verarbeiten</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2022-03-08 --&gt; 2052-03-31</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.8}\">MDAT wissenschaftlich nutzen</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2022-03-08 --&gt; 2052-03-31</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.19}\">BIOMAT erheben</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2022-03-08 --&gt; 2052-03-31</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.20}\">BIOMAT lagern verarbeiten</span></li></ul></td></tr>\r\n<tr style=\"border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck000.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Consent Provision\" class=\"hierarchy\"/> permit</td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Period: 2022-03-08 --&gt; 2052-03-31</li></ul></td><td style=\"vertical-align: top; text-align : var(--ig-left,left); background-color: #F7F7F7; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><ul><li>Code: <span title=\"Codes:{urn:oid:2.16.840.1.113883.3.1937.777.24.5.3 2.16.840.1.113883.3.1937.777.24.5.3.22}\">BIOMAT wissenschaftlich nutzen</span></li></ul></td></tr>\r\n<tr><td colspan=\"3\" class=\"hierarchy\"><br/><a href=\"https://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
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
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "dateTime" : "2022-03-08T11:45:00+01:00",
      "organization" : [{
        "reference" : "Organization/mii-exa-test-data-organization-charite"
      }],
      "policy" : [{
        "uri" : "urn:oid:2.16.840.1.113883.3.1937.777.24.2.1791"
      }],
      "provision" : {
        "type" : "deny",
        "period" : {
          "start" : "2022-03-08",
          "end" : "2052-03-31"
        },
        "provision" : [{
          "type" : "permit",
          "period" : {
            "start" : "2022-03-08",
            "end" : "2052-03-31"
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
            "start" : "2022-03-08",
            "end" : "2052-03-31"
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
            "start" : "2022-03-08",
            "end" : "2052-03-31"
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
            "start" : "2022-03-08",
            "end" : "2052-03-31"
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
            "start" : "2022-03-08",
            "end" : "2052-03-31"
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
            "start" : "2022-03-08",
            "end" : "2052-03-31"
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
      "url" : "Consent/mii-exa-test-data-patient-6-consent-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Encounter/mii-exa-test-data-patient-6-encounter-1",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-test-data-patient-6-encounter-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_mii-exa-test-data-patient-6-encounter-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-test-data-patient-6-encounter-1</b></p><a name=\"mii-exa-test-data-patient-6-encounter-1\"> </a><a name=\"hcmii-exa-test-data-patient-6-encounter-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-fall/StructureDefinition/KontaktGesundheitseinrichtung\">MII PR Fall Kontakt mit einer Gesundheitseinrichtung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Visit number/MII_0000007</p><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>type</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/Kontaktebene einrichtungskontakt}\">Einrichtungskontakt</span>, <span title=\"Codes:{http://fhir.de/CodeSystem/kontaktart-de normalstationaer}\">Normalstationär</span></p><p><b>serviceType</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/dkgev/Fachabteilungsschluessel 0100}\">Innere Medizin</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>period</b>: 2022-03-12 --&gt; 2022-03-20</p><h3>Hospitalizations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>AdmitSource</b></td><td><b>DischargeDisposition</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/dgkev/Aufnahmeanlass E}\">Einweisung durch einen Arzt</span></td><td><span title=\"Codes:\"></span></td></tr></table><p><b>serviceProvider</b>: <a href=\"Organization-mii-exa-test-data-organization-charite.html\">Charité - Universitätsmedizin Berlin</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "VN"
          }]
        },
        "system" : "https://www.charite.de/fhir/NamingSystem/Aufnahmenummern",
        "value" : "MII_0000007"
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
          "code" : "0100"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "period" : {
        "start" : "2022-03-12",
        "end" : "2022-03-20"
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
                "code" : "01",
                "display" : "Behandlung regulär beendet"
              }
            },
            {
              "url" : "DritteStelle",
              "valueCoding" : {
                "system" : "http://fhir.de/CodeSystem/dkgev/EntlassungsgrundDritteStelle",
                "code" : "1",
                "display" : "arbeitsfähig entlassen"
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
      "url" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Condition/mii-exa-test-data-patient-6-diagnose-1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-test-data-patient-6-diagnose-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-test-data-patient-6-diagnose-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-test-data-patient-6-diagnose-1</b></p><a name=\"mii-exa-test-data-patient-6-diagnose-1\"> </a><a name=\"hcmii-exa-test-data-patient-6-diagnose-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose\">MII PR Diagnose Condition</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm K29.5}, {http://fhir.de/CodeSystem/bfarm/alpha-id I30016}, {http://snomed.info/sct 4556007}\">Chronische Gastritis</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 69695003}\">Stomach structure (body structure)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>recordedDate</b>: 2022-03-12</p><p><b>note</b>: </p><blockquote><div><p>Chronische Gastritis, nicht näher bezeichnet</p>\n</div></blockquote></div>"
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
          "version" : "2022",
          "code" : "K29.5"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/alpha-id",
          "version" : "2022",
          "code" : "I30016",
          "display" : "Chronische Gastritis"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "4556007",
          "display" : "Gastritis (disorder)"
        }]
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "69695003",
          "display" : "Stomach structure (body structure)"
        }]
      }],
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "recordedDate" : "2022-03-12",
      "note" : [{
        "text" : "Chronische Gastritis, nicht näher bezeichnet"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-test-data-patient-6-diagnose-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-6-vitalstatus-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-6-vitalstatus-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-6-vitalstatus-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-6-vitalstatus-1</b></p><a name=\"mii-exa-test-data-patient-6-vitalstatus-1\"> </a><a name=\"hcmii-exa-test-data-patient-6-vitalstatus-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus\">MII PR Person Vitalstatus</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category survey}\">Survey</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 67162-8}\">Patient Disposition</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>effective</b>: 2024-05-22</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus L}\">Patient lebt</span></p></div>"
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
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "effectiveDateTime" : "2024-05-22",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/core/modul-person/CodeSystem/Vitalstatus",
          "code" : "L"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-test-data-patient-6-vitalstatus-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Procedure/mii-exa-test-data-patient-6-prozedur-1",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-test-data-patient-6-prozedur-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-test-data-patient-6-prozedur-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-test-data-patient-6-prozedur-1</b></p><a name=\"mii-exa-test-data-patient-6-prozedur-1\"> </a><a name=\"hcmii-exa-test-data-patient-6-prozedur-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Prozedur Durchführungsabsicht</b>: <a href=\"http://snomed.info/id/261004008\">SNOMED CT: 261004008</a> (Diagnostic intent)</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 165197003}\">Diagnostic assessment</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 76009000}, {http://fhir.de/CodeSystem/bfarm/ops 1-632.0}\">Esophagogastroduodenoscopy</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>performed</b>: 2022-03-15 10:30:00+0100</p><p><b>recorder</b>: <a href=\"PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.html\">PractitionerRole Physician (occupation)</a></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 32849002}\">Esophageal structure</span></p><p><b>note</b>: </p><blockquote><div><p>Endoskopische Untersuchung des oberen Gastrointestinaltrakts bei Gastritis</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "261004008",
          "display" : "Diagnostic intent"
        }
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "165197003"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "76009000"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2022",
          "code" : "1-632.0"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "performedDateTime" : "2022-03-15T10:30:00+01:00",
      "recorder" : {
        "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "32849002"
        }]
      }],
      "note" : [{
        "text" : "Endoskopische Untersuchung des oberen Gastrointestinaltrakts bei Gastritis"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-test-data-patient-6-prozedur-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Procedure/mii-exa-test-data-patient-6-prozedur-2",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-test-data-patient-6-prozedur-2",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-test-data-patient-6-prozedur-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-test-data-patient-6-prozedur-2</b></p><a name=\"mii-exa-test-data-patient-6-prozedur-2\"> </a><a name=\"hcmii-exa-test-data-patient-6-prozedur-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>MII EX Prozedur Durchführungsabsicht</b>: <a href=\"http://snomed.info/id/261004008\">SNOMED CT: 261004008</a> (Diagnostic intent)</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 165197003}\">Diagnostic assessment</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 408652004}, {http://fhir.de/CodeSystem/bfarm/ops 1-760}\">13C urea breath test</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>performed</b>: 2022-03-16 08:00:00+0100</p><p><b>recorder</b>: <a href=\"PractitionerRole-mii-exa-test-data-practitioner-role-physician-1.html\">PractitionerRole Physician (occupation)</a></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 122865005}\">Gastrointestinal tract structure</span></p><p><b>note</b>: </p><blockquote><div><p>C13-Harnstoff-Atemtest zum Nachweis von Helicobacter pylori</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht",
        "valueCoding" : {
          "system" : "http://snomed.info/sct",
          "code" : "261004008",
          "display" : "Diagnostic intent"
        }
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "165197003"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "408652004"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2022",
          "code" : "1-760"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "performedDateTime" : "2022-03-16T08:00:00+01:00",
      "recorder" : {
        "reference" : "PractitionerRole/mii-exa-test-data-practitioner-role-physician-1"
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "122865005"
        }]
      }],
      "note" : [{
        "text" : "C13-Harnstoff-Atemtest zum Nachweis von Helicobacter pylori"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-test-data-patient-6-prozedur-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/ServiceRequest/mii-exa-test-data-patient-6-labrequest-1",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-test-data-patient-6-labrequest-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-test-data-patient-6-labrequest-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-test-data-patient-6-labrequest-1</b></p><a name=\"mii-exa-test-data-patient-6-labrequest-1\"> </a><a name=\"hcmii-exa-test-data-patient-6-labrequest-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab\">MII PR Labor Laboranforderung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Placer Identifier/LAB_000006</p><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 24360-0}\">Hemoglobin and Hematocrit panel - Blood</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>authoredOn</b>: 2022-03-14 06:30:00+0100</p><p><b>requester</b>: <a href=\"Practitioner-mii-exa-test-data-practitioner-physician-1.html\">Practitioner Rahel Hirsch </a></p><p><b>reasonCode</b>: <span title=\"Codes:{http://snomed.info/sct 4556007}\">Gastritis</span></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-requests",
        "value" : "LAB_000006",
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
          "code" : "24360-0"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "authoredOn" : "2022-03-14T06:30:00+01:00",
      "requester" : {
        "reference" : "Practitioner/mii-exa-test-data-practitioner-physician-1"
      },
      "reasonCode" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "4556007",
          "display" : "Gastritis"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-test-data-patient-6-labrequest-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/DiagnosticReport/mii-exa-test-data-patient-6-labreport-1",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "mii-exa-test-data-patient-6-labreport-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_mii-exa-test-data-patient-6-labreport-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport mii-exa-test-data-patient-6-labreport-1</b></p><a name=\"mii-exa-test-data-patient-6-labreport-1\"> </a><a name=\"hcmii-exa-test-data-patient-6-labreport-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab\">MII PR Labor Laborbefund</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2><span title=\"Codes:{http://loinc.org 11502-2}\">Laboratory report</span> (<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 LAB}, {http://loinc.org 26436-6}\">Laboratory studies (set)</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</td></tr><tr><td>Relevant Time</td><td>2022-03-14 07:00:00+0100</td></tr><tr><td>Reported</td><td>2022-03-14 11:45:00+0100</td></tr><tr><td>Performer</td><td> <a href=\"Organization-mii-exa-test-data-organization-labor-berlin.html\">Organization Labor Berlin – Charité Vivantes GmbH</a></td></tr><tr><td>Identifier</td><td> Filler Identifier/LDR_000006</td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Flags</b></td><td><b>Reported</b></td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-6-labobs-1.html\"><span title=\"Codes:{http://loinc.org 26464-8}\">Leukocytes [#/volume] in Blood</span></a></td><td>9.1 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Normal</span></td><td>2022-03-14 09:30:00+0100</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-6-labobs-2.html\"><span title=\"Codes:{http://loinc.org 1742-6}\">Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma</span></a></td><td>45 unit per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeU/L = 'U/L')</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></td><td>2022-03-14 09:30:00+0100</td></tr><tr><td><a href=\"Observation-mii-exa-test-data-patient-6-labobs-3.html\"><span title=\"Codes:{http://loinc.org 1920-8}\">Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma</span></a></td><td>38 unit per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeU/L = 'U/L')</span></td><td>Final, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></td><td>2022-03-14 09:30:00+0100</td></tr></table><p>Hepatozelluläres Schädigungsmuster: Erhöhte Transaminasen (ALT 45 U/L, AST 38 U/L) bei chronischer Gastritis. Medikamenten-toxische oder inflammatorische Genese möglich.</p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "FILL"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LDR_000006",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-6-labrequest-1"
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
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "effectiveDateTime" : "2022-03-14T07:00:00+01:00",
      "issued" : "2022-03-14T11:45:00+01:00",
      "performer" : [{
        "reference" : "Organization/mii-exa-test-data-organization-labor-berlin"
      }],
      "result" : [{
        "reference" : "Observation/mii-exa-test-data-patient-6-labobs-1"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-6-labobs-2"
      },
      {
        "reference" : "Observation/mii-exa-test-data-patient-6-labobs-3"
      }],
      "conclusion" : "Hepatozelluläres Schädigungsmuster: Erhöhte Transaminasen (ALT 45 U/L, AST 38 U/L) bei chronischer Gastritis. Medikamenten-toxische oder inflammatorische Genese möglich."
    },
    "request" : {
      "method" : "PUT",
      "url" : "DiagnosticReport/mii-exa-test-data-patient-6-labreport-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-6-labobs-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-6-labobs-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-6-labobs-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-6-labobs-1</b></p><a name=\"mii-exa-test-data-patient-6-labobs-1\"> </a><a name=\"hcmii-exa-test-data-patient-6-labobs-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000020</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-6-labrequest-1.html\">ServiceRequest Hemoglobin and Hematocrit panel - Blood</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 26464-8}\">Leukocytes [#/volume] in Blood</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>effective</b>: 2022-03-14 07:00:00+0100</p><p><b>issued</b>: 2022-03-14 09:30:00+0100</p><p><b>value</b>: 9.1 /nanoliter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/nL = '/nL')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation N}\">Normal</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 703452004}\">Electrical impedance technique (qualifier value)</span></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000020",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-6-labrequest-1"
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
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "effectiveDateTime" : "2022-03-14T07:00:00+01:00",
      "issued" : "2022-03-14T09:30:00+01:00",
      "valueQuantity" : {
        "value" : 9.1,
        "unit" : "/nanoliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "/nL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "N",
          "display" : "Normal"
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
      "url" : "Observation/mii-exa-test-data-patient-6-labobs-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-6-labobs-2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-6-labobs-2",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-6-labobs-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-6-labobs-2</b></p><a name=\"mii-exa-test-data-patient-6-labobs-2\"> </a><a name=\"hcmii-exa-test-data-patient-6-labobs-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000021</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-6-labrequest-1.html\">ServiceRequest Hemoglobin and Hematocrit panel - Blood</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 1742-6}\">Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>effective</b>: 2022-03-14 07:00:00+0100</p><p><b>issued</b>: 2022-03-14 09:30:00+0100</p><p><b>value</b>: 45 unit per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeU/L = 'U/L')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 83561000052101}\">Photometry technique (qualifier value)</span></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000021",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-6-labrequest-1"
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
          "code" : "1742-6",
          "display" : "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "effectiveDateTime" : "2022-03-14T07:00:00+01:00",
      "issued" : "2022-03-14T09:30:00+01:00",
      "valueQuantity" : {
        "value" : 45,
        "unit" : "unit per liter",
        "system" : "http://unitsofmeasure.org",
        "code" : "U/L"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
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
      "url" : "Observation/mii-exa-test-data-patient-6-labobs-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Observation/mii-exa-test-data-patient-6-labobs-3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-test-data-patient-6-labobs-3",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-test-data-patient-6-labobs-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-test-data-patient-6-labobs-3</b></p><a name=\"mii-exa-test-data-patient-6-labobs-3\"> </a><a name=\"hcmii-exa-test-data-patient-6-labobs-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab\">MII PR Labor Laboruntersuchung</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: Observation Instance Identifier/LO_000022</p><p><b>basedOn</b>: <a href=\"ServiceRequest-mii-exa-test-data-patient-6-labrequest-1.html\">ServiceRequest Hemoglobin and Hematocrit panel - Blood</a></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}, {http://loinc.org 26436-6}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 1920-8}\">Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>effective</b>: 2022-03-14 07:00:00+0100</p><p><b>issued</b>: 2022-03-14 09:30:00+0100</p><p><b>value</b>: 38 unit per liter<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeU/L = 'U/L')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 83561000052101}\">Photometry technique (qualifier value)</span></p><p><b>device</b>: <a href=\"Device-mii-exa-test-data-device-roche-cobas-c303.html\">Device: identifier = https://www.charite.de/fhir/sid/Laboratory-device-identifier#RocheCobasC303; status = active; manufacturer = Roche; modelNumber = c 303</a></p></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "OBI"
          }]
        },
        "system" : "https://www.charite.de/fhir/sid/lab-results",
        "value" : "LO_000022",
        "assigner" : {
          "identifier" : {
            "system" : "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier",
            "value" : "Charité"
          }
        }
      }],
      "basedOn" : [{
        "reference" : "ServiceRequest/mii-exa-test-data-patient-6-labrequest-1"
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
          "code" : "1920-8",
          "display" : "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "effectiveDateTime" : "2022-03-14T07:00:00+01:00",
      "issued" : "2022-03-14T09:30:00+01:00",
      "valueQuantity" : {
        "value" : 38,
        "unit" : "unit per liter",
        "system" : "http://unitsofmeasure.org",
        "code" : "U/L"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
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
      "url" : "Observation/mii-exa-test-data-patient-6-labobs-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationRequest/mii-exa-test-data-patient-6-medrequest-1",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-test-data-patient-6-medrequest-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-test-data-patient-6-medrequest-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-test-data-patient-6-medrequest-1</b></p><a name=\"mii-exa-test-data-patient-6-medrequest-1\"> </a><a name=\"hcmii-exa-test-data-patient-6-medrequest-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest\">MII PR Medikation MedicationRequest</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationOrders</code>/MO_0000015</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-pantoprazol.html\">Medication Pantoprazol</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>authoredOn</b>: 2022-03-13 08:00:00+0100</p><blockquote><p><b>dosageInstruction</b></p><p><b>text</b>: Pantoprazol 40mg 1x täglich morgens</p><p><b>timing</b>: Morning, Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>40 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><h3>Substitutions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Allowed[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>true</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
        "value" : "MO_0000015"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-pantoprazol"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "authoredOn" : "2022-03-13T08:00:00+01:00",
      "dosageInstruction" : [{
        "text" : "Pantoprazol 40mg 1x täglich morgens",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["MORN"]
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 40,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }],
      "substitution" : {
        "allowedBoolean" : true
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-test-data-patient-6-medrequest-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationRequest/mii-exa-test-data-patient-6-medrequest-2",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-test-data-patient-6-medrequest-2",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-test-data-patient-6-medrequest-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-test-data-patient-6-medrequest-2</b></p><a name=\"mii-exa-test-data-patient-6-medrequest-2\"> </a><a name=\"hcmii-exa-test-data-patient-6-medrequest-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest\">MII PR Medikation MedicationRequest</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationOrders</code>/MO_0000016</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-amoxicillin.html\">Medication Amoxicillin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>authoredOn</b>: 2022-03-13 08:30:00+0100</p><blockquote><p><b>dosageInstruction</b></p><p><b>text</b>: Amoxicillin 500mg 3x täglich</p><p><b>timing</b>: 3 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>500 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><h3>Substitutions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Allowed[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>true</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
        "value" : "MO_0000016"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-amoxicillin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "authoredOn" : "2022-03-13T08:30:00+01:00",
      "dosageInstruction" : [{
        "text" : "Amoxicillin 500mg 3x täglich",
        "timing" : {
          "repeat" : {
            "frequency" : 3,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 500,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }],
      "substitution" : {
        "allowedBoolean" : true
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-test-data-patient-6-medrequest-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationRequest/mii-exa-test-data-patient-6-medrequest-3",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-test-data-patient-6-medrequest-3",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-test-data-patient-6-medrequest-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-test-data-patient-6-medrequest-3</b></p><a name=\"mii-exa-test-data-patient-6-medrequest-3\"> </a><a name=\"hcmii-exa-test-data-patient-6-medrequest-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest\">MII PR Medikation MedicationRequest</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationOrders</code>/MO_0000017</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-clarithromycin.html\">Medication Clarithromycin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>authoredOn</b>: 2022-03-13 08:30:00+0100</p><blockquote><p><b>dosageInstruction</b></p><p><b>text</b>: Clarithromycin 250mg 2x täglich</p><p><b>timing</b>: 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>250 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><h3>Substitutions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Allowed[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>true</td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationOrders",
        "value" : "MO_0000017"
      }],
      "status" : "active",
      "intent" : "order",
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-clarithromycin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "authoredOn" : "2022-03-13T08:30:00+01:00",
      "dosageInstruction" : [{
        "text" : "Clarithromycin 250mg 2x täglich",
        "timing" : {
          "repeat" : {
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 250,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }],
      "substitution" : {
        "allowedBoolean" : true
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-test-data-patient-6-medrequest-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-6-medstatement-1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-6-medstatement-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-6-medstatement-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-6-medstatement-1</b></p><a name=\"mii-exa-test-data-patient-6-medstatement-1\"> </a><a name=\"hcmii-exa-test-data-patient-6-medstatement-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000016</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-6-medrequest-1.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000015; status = active; intent = order; medication[x] = -&gt;Medication Pantoprazol; authoredOn = 2022-03-13 08:00:00+0100</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category inpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-pantoprazol.html\">Medication Pantoprazol</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>effective</b>: 2022-03-13 08:00:00+0100 --&gt; 2022-03-20 08:00:00+0100</p><p><b>dateAsserted</b>: 2022-03-13</p><blockquote><p><b>dosage</b></p><p><b>text</b>: Pantoprazol 40mg 1x täglich morgens</p><p><b>timing</b>: Morning, Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>40 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000016"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-6-medrequest-1"
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
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-pantoprazol"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2022-03-13T08:00:00+01:00",
        "end" : "2022-03-20T08:00:00+01:00"
      },
      "dateAsserted" : "2022-03-13",
      "dosage" : [{
        "text" : "Pantoprazol 40mg 1x täglich morgens",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["MORN"]
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 40,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-6-medstatement-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-6-medstatement-2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-6-medstatement-2",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-6-medstatement-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-6-medstatement-2</b></p><a name=\"mii-exa-test-data-patient-6-medstatement-2\"> </a><a name=\"hcmii-exa-test-data-patient-6-medstatement-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000017</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-6-medrequest-2.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000016; status = active; intent = order; medication[x] = -&gt;Medication Amoxicillin; authoredOn = 2022-03-13 08:30:00+0100</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category inpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-amoxicillin.html\">Medication Amoxicillin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>effective</b>: 2022-03-13 08:30:00+0100 --&gt; 2022-03-20 08:30:00+0100</p><p><b>dateAsserted</b>: 2022-03-13</p><blockquote><p><b>dosage</b></p><p><b>text</b>: Amoxicillin 500mg 3x täglich</p><p><b>timing</b>: 3 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>500 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000017"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-6-medrequest-2"
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
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-amoxicillin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2022-03-13T08:30:00+01:00",
        "end" : "2022-03-20T08:30:00+01:00"
      },
      "dateAsserted" : "2022-03-13",
      "dosage" : [{
        "text" : "Amoxicillin 500mg 3x täglich",
        "timing" : {
          "repeat" : {
            "frequency" : 3,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 500,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-6-medstatement-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationStatement/mii-exa-test-data-patient-6-medstatement-3",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-test-data-patient-6-medstatement-3",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_mii-exa-test-data-patient-6-medstatement-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-test-data-patient-6-medstatement-3</b></p><a name=\"mii-exa-test-data-patient-6-medstatement-3\"> </a><a name=\"hcmii-exa-test-data-patient-6-medstatement-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationStatements</code>/MS_0000018</p><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-6-medrequest-3.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000017; status = active; intent = order; medication[x] = -&gt;Medication Clarithromycin; authoredOn = 2022-03-13 08:30:00+0100</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category inpatient}, {http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung E200}\">stationärer Aufenthalt</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-clarithromycin.html\">Medication Clarithromycin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>effective</b>: 2022-03-13 08:30:00+0100 --&gt; 2022-03-20 08:30:00+0100</p><p><b>dateAsserted</b>: 2022-03-13</p><blockquote><p><b>dosage</b></p><p><b>text</b>: Clarithromycin 250mg 2x täglich</p><p><b>timing</b>: 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>250 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationStatements",
        "value" : "MS_0000018"
      }],
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-test-data-patient-6-medrequest-3"
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
      "medicationReference" : {
        "reference" : "Medication/mii-exa-test-data-medication-clarithromycin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "effectivePeriod" : {
        "start" : "2022-03-13T08:30:00+01:00",
        "end" : "2022-03-20T08:30:00+01:00"
      },
      "dateAsserted" : "2022-03-13",
      "dosage" : [{
        "text" : "Clarithromycin 250mg 2x täglich",
        "timing" : {
          "repeat" : {
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 250,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/mii-exa-test-data-patient-6-medstatement-3"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationAdministration/mii-exa-test-data-patient-6-medadmin-1",
    "resource" : {
      "resourceType" : "MedicationAdministration",
      "id" : "mii-exa-test-data-patient-6-medadmin-1",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationAdministration_mii-exa-test-data-patient-6-medadmin-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationAdministration mii-exa-test-data-patient-6-medadmin-1</b></p><a name=\"mii-exa-test-data-patient-6-medadmin-1\"> </a><a name=\"hcmii-exa-test-data-patient-6-medadmin-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration\">MII PR Medikation MedicationAdministration</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationAdministrations</code>/MA_0000013</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-admin-category inpatient}\">Inpatient</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-pantoprazol.html\">Medication Pantoprazol</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>effective</b>: 2022-03-13 08:00:00+0100</p><p><b>request</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-6-medrequest-1.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000015; status = active; intent = order; medication[x] = -&gt;Medication Pantoprazol; authoredOn = 2022-03-13 08:00:00+0100</a></p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td><td><b>Route</b></td><td><b>Dose</b></td></tr><tr><td style=\"display: none\">*</td><td>Pantoprazol 40mg oral morgens</td><td><span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></td><td>40 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
        "value" : "MA_0000013"
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
        "reference" : "Medication/mii-exa-test-data-medication-pantoprazol"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "effectiveDateTime" : "2022-03-13T08:00:00+01:00",
      "request" : {
        "reference" : "MedicationRequest/mii-exa-test-data-patient-6-medrequest-1"
      },
      "dosage" : {
        "text" : "Pantoprazol 40mg oral morgens",
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "dose" : {
          "value" : 40,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationAdministration/mii-exa-test-data-patient-6-medadmin-1"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/MedicationAdministration/mii-exa-test-data-patient-6-medadmin-2",
    "resource" : {
      "resourceType" : "MedicationAdministration",
      "id" : "mii-exa-test-data-patient-6-medadmin-2",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationAdministration_mii-exa-test-data-patient-6-medadmin-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationAdministration mii-exa-test-data-patient-6-medadmin-2</b></p><a name=\"mii-exa-test-data-patient-6-medadmin-2\"> </a><a name=\"hcmii-exa-test-data-patient-6-medadmin-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationAdministration\">MII PR Medikation MedicationAdministration</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>identifier</b>: <code>https://www.charite.de/fhir/sid/MedicationAdministrations</code>/MA_0000014</p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-admin-category inpatient}\">Inpatient</span></p><p><b>medication</b>: <a href=\"Medication-mii-exa-test-data-medication-amoxicillin.html\">Medication Amoxicillin</a></p><p><b>subject</b>: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></p><p><b>context</b>: <a href=\"Encounter-mii-exa-test-data-patient-6-encounter-1.html\">Encounter: identifier = Visit number; status = finished; class = inpatient encounter (ActCode#IMP); type = Einrichtungskontakt,Normalstationär; serviceType = Innere Medizin; period = 2022-03-12 --&gt; 2022-03-20</a></p><p><b>effective</b>: 2022-03-13 09:00:00+0100</p><p><b>request</b>: <a href=\"MedicationRequest-mii-exa-test-data-patient-6-medrequest-2.html\">MedicationRequest: identifier = https://www.charite.de/fhir/sid/MedicationOrders#MO_0000016; status = active; intent = order; medication[x] = -&gt;Medication Amoxicillin; authoredOn = 2022-03-13 08:30:00+0100</a></p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td><td><b>Route</b></td><td><b>Dose</b></td></tr><tr><td style=\"display: none\">*</td><td>Amoxicillin 500mg oral</td><td><span title=\"Codes:{http://standardterms.edqm.eu 20053000}\">Oral use</span></td><td>500 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "https://www.charite.de/fhir/sid/MedicationAdministrations",
        "value" : "MA_0000014"
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
        "reference" : "Medication/mii-exa-test-data-medication-amoxicillin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "context" : {
        "reference" : "Encounter/mii-exa-test-data-patient-6-encounter-1"
      },
      "effectiveDateTime" : "2022-03-13T09:00:00+01:00",
      "request" : {
        "reference" : "MedicationRequest/mii-exa-test-data-patient-6-medrequest-2"
      },
      "dosage" : {
        "text" : "Amoxicillin 500mg oral",
        "route" : {
          "coding" : [{
            "system" : "http://standardterms.edqm.eu",
            "code" : "20053000",
            "display" : "Oral use"
          }]
        },
        "dose" : {
          "value" : 500,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationAdministration/mii-exa-test-data-patient-6-medadmin-2"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/List/mii-exa-test-data-patient-6-list-aufnahmemedikation",
    "resource" : {
      "resourceType" : "List",
      "id" : "mii-exa-test-data-patient-6-list-aufnahmemedikation",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_mii-exa-test-data-patient-6-list-aufnahmemedikation\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List mii-exa-test-data-patient-6-list-aufnahmemedikation</b></p><a name=\"mii-exa-test-data-patient-6-list-aufnahmemedikation\"> </a><a name=\"hcmii-exa-test-data-patient-6-list-aufnahmemedikation\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste\">MII PR Medikation Medikationsliste</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2>Aufnahmemedikation</h2><table class=\"clstu\"><tr><td>Mode: Snapshot List </td><td>Status: Current </td><td>Code: Medication List </td></tr><tr><td>Subject: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-6-medstatement-1.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000016; status = completed; category = stationärer Aufenthalt; medication[x] = -&gt;Medication Pantoprazol; effective[x] = 2022-03-13 08:00:00+0100 --&gt; 2022-03-20 08:00:00+0100; dateAsserted = 2022-03-13</a></td></tr></table></div>"
      },
      "status" : "current",
      "mode" : "snapshot",
      "title" : "Aufnahmemedikation",
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
          "code" : "medications"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E210"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "entry" : [{
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-6-medstatement-1"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "List/mii-exa-test-data-patient-6-list-aufnahmemedikation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/List/mii-exa-test-data-patient-6-list-stat-aufenthalt",
    "resource" : {
      "resourceType" : "List",
      "id" : "mii-exa-test-data-patient-6-list-stat-aufenthalt",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_mii-exa-test-data-patient-6-list-stat-aufenthalt\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List mii-exa-test-data-patient-6-list-stat-aufenthalt</b></p><a name=\"mii-exa-test-data-patient-6-list-stat-aufenthalt\"> </a><a name=\"hcmii-exa-test-data-patient-6-list-stat-aufenthalt\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste\">MII PR Medikation Medikationsliste</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2>Medikationsliste während stationärem Aufenthalt</h2><table class=\"clstu\"><tr><td>Mode: Working List </td><td>Status: Current </td><td>Code: Medication List </td></tr><tr><td>Subject: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-6-medstatement-1.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000016; status = completed; category = stationärer Aufenthalt; medication[x] = -&gt;Medication Pantoprazol; effective[x] = 2022-03-13 08:00:00+0100 --&gt; 2022-03-20 08:00:00+0100; dateAsserted = 2022-03-13</a></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-6-medstatement-2.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000017; status = completed; category = stationärer Aufenthalt; medication[x] = -&gt;Medication Amoxicillin; effective[x] = 2022-03-13 08:30:00+0100 --&gt; 2022-03-20 08:30:00+0100; dateAsserted = 2022-03-13</a></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-6-medstatement-3.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000018; status = completed; category = stationärer Aufenthalt; medication[x] = -&gt;Medication Clarithromycin; effective[x] = 2022-03-13 08:30:00+0100 --&gt; 2022-03-20 08:30:00+0100; dateAsserted = 2022-03-13</a></td></tr></table></div>"
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
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "entry" : [{
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-6-medstatement-1"
        }
      },
      {
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-6-medstatement-2"
        }
      },
      {
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-6-medstatement-3"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "List/mii-exa-test-data-patient-6-list-stat-aufenthalt"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/List/mii-exa-test-data-patient-6-list-entlassmedikation",
    "resource" : {
      "resourceType" : "List",
      "id" : "mii-exa-test-data-patient-6-list-entlassmedikation",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_mii-exa-test-data-patient-6-list-entlassmedikation\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List mii-exa-test-data-patient-6-list-entlassmedikation</b></p><a name=\"mii-exa-test-data-patient-6-list-entlassmedikation\"> </a><a name=\"hcmii-exa-test-data-patient-6-list-entlassmedikation\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/medikationsliste\">MII PR Medikation Medikationsliste</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><h2>Entlassmedikation</h2><table class=\"clstu\"><tr><td>Mode: Snapshot List </td><td>Status: Current </td><td>Code: Medication List </td></tr><tr><td>Subject: <a href=\"Patient-mii-exa-test-data-patient-6.html\">Thomas Michael Richter (official) Male, DoB: 1975-11-08 ( Medical record number (use: usual, ))</a></td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"MedicationStatement-mii-exa-test-data-patient-6-medstatement-1.html\">MedicationStatement: identifier = https://www.charite.de/fhir/sid/MedicationStatements#MS_0000016; status = completed; category = stationärer Aufenthalt; medication[x] = -&gt;Medication Pantoprazol; effective[x] = 2022-03-13 08:00:00+0100 --&gt; 2022-03-20 08:00:00+0100; dateAsserted = 2022-03-13</a></td></tr></table></div>"
      },
      "status" : "current",
      "mode" : "snapshot",
      "title" : "Entlassmedikation",
      "code" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/list-example-use-codes",
          "code" : "medications"
        },
        {
          "system" : "http://ihe-d.de/CodeSystems/FallkontextBeiDokumentenerstellung",
          "code" : "E230"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-test-data-patient-6"
      },
      "entry" : [{
        "item" : {
          "reference" : "MedicationStatement/mii-exa-test-data-patient-6-medstatement-1"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "List/mii-exa-test-data-patient-6-list-entlassmedikation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Medication/mii-exa-test-data-medication-pantoprazol",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "mii-exa-test-data-medication-pantoprazol",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_mii-exa-test-data-medication-pantoprazol\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication mii-exa-test-data-medication-pantoprazol</b></p><a name=\"mii-exa-test-data-medication-pantoprazol\"> </a><a name=\"hcmii-exa-test-data-medication-pantoprazol\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication\">MII PR Medikation Medication</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc A02BC02}\">Pantoprazol</span></p><p><b>status</b>: Active</p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 10221000}\">Film-coated tablet</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/ask 24848}\">Pantoprazol-Natrium-Sesquihydrat</span></td><td>40 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td></tr></table></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2024",
          "code" : "A02BC02",
          "display" : "Pantoprazol"
        }]
      },
      "status" : "active",
      "form" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "10221000",
          "display" : "Film-coated tablet"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/ask",
            "version" : "20260105",
            "code" : "24848"
          }]
        },
        "strength" : {
          "numerator" : {
            "value" : 40,
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
      "url" : "Medication/mii-exa-test-data-medication-pantoprazol"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Medication/mii-exa-test-data-medication-amoxicillin",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "mii-exa-test-data-medication-amoxicillin",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_mii-exa-test-data-medication-amoxicillin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication mii-exa-test-data-medication-amoxicillin</b></p><a name=\"mii-exa-test-data-medication-amoxicillin\"> </a><a name=\"hcmii-exa-test-data-medication-amoxicillin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication\">MII PR Medikation Medication</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc J01CA04}\">Amoxicillin</span></p><p><b>status</b>: Active</p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 10210000}\">Capsule, hard</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/ask 13209}\">Amoxicillin-Trihydrat</span></td><td>500 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td></tr></table></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2024",
          "code" : "J01CA04",
          "display" : "Amoxicillin"
        }]
      },
      "status" : "active",
      "form" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "10210000",
          "display" : "Capsule, hard"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/ask",
            "version" : "20260105",
            "code" : "13209"
          }]
        },
        "strength" : {
          "numerator" : {
            "value" : 500,
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
      "url" : "Medication/mii-exa-test-data-medication-amoxicillin"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/Medication/mii-exa-test-data-medication-clarithromycin",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "mii-exa-test-data-medication-clarithromycin",
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_mii-exa-test-data-medication-clarithromycin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication mii-exa-test-data-medication-clarithromycin</b></p><a name=\"mii-exa-test-data-medication-clarithromycin\"> </a><a name=\"hcmii-exa-test-data-medication-clarithromycin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Information Source: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.charite.de/fhir/kds-testdata\">https://www.charite.de/fhir/kds-testdata</a></p><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.complete@2027.0.0-ballot.19&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/Medication\">MII PR Medikation Medication</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.4.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc J01FA09}\">Clarithromycin</span></p><p><b>status</b>: Active</p><p><b>form</b>: <span title=\"Codes:{http://standardterms.edqm.eu 10221000}\">Film-coated tablet</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://fhir.de/CodeSystem/ask 23929}\">Clarithromycin</span></td><td>250 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/1 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></td></tr></table></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2024",
          "code" : "J01FA09",
          "display" : "Clarithromycin"
        }]
      },
      "status" : "active",
      "form" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "10221000",
          "display" : "Film-coated tablet"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/ask",
            "version" : "20260105",
            "code" : "23929"
          }]
        },
        "strength" : {
          "numerator" : {
            "value" : 250,
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
      "url" : "Medication/mii-exa-test-data-medication-clarithromycin"
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
