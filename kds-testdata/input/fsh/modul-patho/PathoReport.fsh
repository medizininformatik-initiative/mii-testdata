Alias: $fhir-narrative-link = http://hl7.org/fhir/StructureDefinition/narrativeLink

// Patient-1
Instance: mii-exa-test-data-patient-1-patho-report-1
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report
Usage: #example
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-report|1.0.0"
* identifier[Set-ID].value = "E21.12345"
* identifier[Set-ID].system = "https://www.charite.de/fhir/sid/patho/reports"
* identifier[Set-ID].type = $v2-0203#ACSN "Accession ID"
* identifier[Set-ID].extension.url = $fhir-narrative-link
* identifier[Set-ID].extension.valueUrl = "#befund-eingangsnummer"
* basedOn = Reference(mii-exa-test-data-patient-1-patho-request-1)
* status = #final
* code.coding[pathology-report] = $loinc#60568-3 "Pathology Synoptic report"
* subject = Reference(mii-exa-test-data-patient-1)
* performer = Reference(mii-exa-test-data-organization-charite)
* specimen = Reference(mii-exa-test-data-patient-1-patho-prostate-tru-cut-biopsy-sample)
* result[macroscopic-observations] = Reference(mii-exa-test-data-patient-1-patho-macro-grouper-a)
* result[macroscopic-observations] = Reference(mii-exa-test-data-patient-1-patho-macro-grouper-b)
* result[microscopic-observations] = Reference(mii-exa-test-data-patient-1-patho-micro-grouper-a)
* result[diagnostic-conclusion] = Reference(mii-exa-test-data-patient-1-patho-diagnostic-conclusion-grouper)
* conclusion = "Mäßig differenziertes azinäres Adenokarzinom der Prostata, ISUP-Gradgruppe 2"
* conclusionCode = $sct#399490008  
* effectiveDateTime = "2021-06-01"
// * issued = "2021-06-02T13:28:17.239+02:00"
* media.link = Reference(mii-exa-test-data-patient-1-patho-attached-image)
* media.comment = "HE-Schnitt einer Prostatastanze, infiltriert durch Karzinomverbände, fotodokumentiert"

Instance: mii-exa-test-data-patient-1-patho-composition
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition
Usage: #example
Title: "MII EXA Patho Composition"
Description: "Example for an MII_PR_Patho_Composition"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-composition|1.0.0"
* text.div = "
<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <div id=\"befund-titel\">
    <b>Pathologisch-anatomisch Begutachtung</b>
  </div> 
  <table>
    <tr id=\"befund-identifikator\">
      <td>id</td>
      <td>E12345_21.1</td>
    </tr>
    <tr id=\"befund-eingangsnummer\">
      <td>Eingangsnummer</td>
      <td>E12345_21</td>
    </tr>
    <tr id=\"befund-status\">
      <td>Status</td>
      <td>final</td>
    </tr>
    <tr id=\"befund-patient\">
      <td>Patient</td>
      <td>Patient/mii-exa-test-data-patient-1</td>
    </tr>
    <tr id=\"befund-effective\">
      <td>Effective</td>
      <td>2024-02-16</td>
    </tr>
    <tr id=\"befund-issued\">
      <td>Issued</td>
      <td>2024-02-16</td>
    </tr>
  </table>
</div>"
* extension[document-version].valueString = "1"
* status = #final
* identifier.value = "E21.12345"
* identifier.system = "https://www.charite.de/fhir/sid/patho/reports"
* identifier.type = $v2-0203#ACSN "Accession ID"
* identifier.extension.url = $fhir-narrative-link
* identifier.extension.valueUrl = "#befund-eingangsnummer"
* type = $loinc#11526-1 "Pathology study"
* subject = Reference(mii-exa-test-data-patient-1)
* encounter = Reference(mii-exa-test-data-patient-1-encounter-1)
* date = "2024-02-16"
* author = Reference(mii-exa-test-data-organization-charite)
* author.display = "Charité"
* title = "Pathologie Befundbericht"
* custodian = Reference(mii-exa-test-data-organization-charite)
* attester[legal].mode = #legal
* attester[legal].party = Reference(mii-exa-test-data-organization-charite)
* event.period.start = "2024-02-16"
* event.period.end = "2024-02-16"
* section[patho-diagnostic-report]
  * title = "Pathology Diagnostic Report"
  * code = $loinc#60567-5 "Comprehensive pathology report panel"
  * text.status = #additional	
  * text.div = "
  <div xmlns=\"http://www.w3.org/1999/xhtml\">
    <div id=\"macro-a-title\"><b>Makroskopie A</b></div>
    <table>
      <tr id=\"macro-a-biosy-site\">
        <td id=\"macro-a-biosy-site-key\">Entnahmeort lt. klin. Angabe</td>
        <td id=\"macro-a-biosy-site-value\">Prostataseitenlappen rechts, lateral</td>
      </tr>
      <tr id=\"macro-a-tissue-length\">
        <td id=\"macro-a-tissue-length-key\">Stanzzylinderlänge</td>
        <td id=\"macro-a-tissue-length-value\">1,2 cm</td>
      </tr>
    </table>
  </div>"
  * entry = Reference(mii-exa-test-data-patient-1-patho-report-1)