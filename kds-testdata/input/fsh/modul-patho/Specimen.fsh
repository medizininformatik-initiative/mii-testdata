// Patient-1
Instance: mii-exa-test-data-patient-1-patho-prostate-tru-cut-biopsy-sample
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen
Usage: #example
Title: "EXA MII Patho Prostate Tru-cut Biopsy Sample"
Description: "Prostate tru-cut biopsy sample (specimen)"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|1.0.0"
* status = #available
* text.status = #additional
* text.div = "
<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <div id=\"specimen-a-title\"><b>Probe A</b></div>
  <table>
    <tr>
      <td>Entnahmeart</td>
      <td>transrektale Stanzbiopsie</td>
    </tr>
  </table>
</div>
"
* identifier
  * type = $v2-0203#FILL
  * value = "E12345_21-A1"
  * system = "https://www.charite.de/fhir/sid/untersuchungsauftrag"
* accessionIdentifier
  * value = "E12345_21"
  * system = "https://www.charite.de/fhir/sid/untersuchungsauftrag"
* type = $sct#309134005 "Prostate tru-cut biopsy sample"
* subject = Reference(mii-exa-test-data-patient-1)
* request = Reference(mii-exa-test-data-patient-1-patho-request-1)
* collection
  * collectedDateTime = "2021-01-29T06:15:00Z"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* container[+] 
  * type = $sct#434746001 "Specimen vial (physical object)"
  * additiveReference = Reference(mii-exa-test-data-patient-1-patho-neutral-buffered-formalin)

Instance: mii-exa-test-data-patient-1-patho-neutral-buffered-formalin
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Title: "EXA MII Patho Neutral Buffered Formalin"
Description: "Neutral buffered formalin (substance)"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|1.0.8"
* code.coding = $sct#434162003 "Neutral buffered formalin (substance)"

Instance: mii-exa-test-data-patient-1-patho-he-stained-slide-prostate
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen
Usage: #example
Title: "EXA MII Patho HE-stained slide from Prostate tru-cut biopsy sample"
Description: "HE-stained slide from Prostate tru-cut biopsy sample (specimen)"
* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen|1.0.0"
* status = #available
* text.status = #additional
* text.div = "
<div xmlns=\"http://www.w3.org/1999/xhtml\">
  <div id=\"specimen-a-title\"><b>Probe A</b></div>
  <table>
    <tr>
      <td>Entnahmeart</td>
      <td>transrektale Stanzbiopsie</td>
    </tr>
    <tr id=\"bearbeitungsprozedur\">
      <td id=\"bearbeitungsprozedur-key\">Bearbeitungsprozedur</td>
      <td id=\"bearbeitungsprozedur-value\">Einbetten, schneiden, färben</td>
    </tr>
    <tr id=\"faerbung\">
      <td>Färbung</td>
      <td>4% gepuffertes Formalin HE</td>
    </tr>
  </table>
</div>
"
* identifier
  * type = $v2-0203#FILL
  * value = "E12345_21-A1-1HE"
  * system = "https://www.charite.de/fhir/sid/untersuchungsauftrag" 
* accessionIdentifier
  * value = "E12345_21"
  * system = "https://www.charite.de/fhir/sid/untersuchungsauftrag"
* type = $sct#787150001 "Stained slide of tissue section (specimen)"
* subject = Reference(mii-exa-test-data-patient-1)
* parent = Reference(mii-exa-test-data-patient-1-patho-prostate-tru-cut-biopsy-sample)
* request = Reference(mii-exa-test-data-patient-1-patho-request-1)
* collection
  //* collector.reference = "Practitioner/2346545"
  * collectedDateTime = "2021-01-29T06:15:00Z"
  * method = $sct#301759007 "Tru-cut biopsy of prostate (procedure)"
  * bodySite = $sct#716917000 "Structure of lateral middle regional part of peripheral zone of right half prostate (body structure)"
* processing[+].extension[temperaturbedingungen].valueRange
  * low
    * unit = "°C"
    * system = $ucum
    * code = #Cel
    * value = 0
  * high 
    * unit = "°C"
    * system = $ucum
    * code = #Cel
    * value = 30
* processing[=].procedure.coding[sct] = $sct#40923002 "Tissue processing technique, routine, embed, cut and stain, per surgical specimen (procedure)"
* processing[=].procedure.extension.url = $fhir-narrative-link
* processing[=].procedure.extension.valueUrl = "#bearbeitungsprozedur"
* processing[+].extension[temperaturbedingungen].valueRange
  * low
    * unit = "°C"
    * system = $ucum
    * code = #Cel
    * value = 0
  * high 
    * unit = "°C"
    * system = $ucum
    * code = #Cel
    * value = 30
* processing[=].procedure.coding[sct] = $sct#104210008 "Hematoxylin and eosin stain method (procedure)"
* processing[=].procedure.extension.url = $fhir-narrative-link
* processing[=].procedure.extension.valueUrl = "#faerbung"
* processing[=].additive[+] = Reference(mii-exa-test-data-patient-1-patho-hematoxylin-stain)
* processing[=].additive[+] = Reference(mii-exa-test-data-patient-1-patho-eosin-y)
* processing[=].timePeriod.start = "2021-01-29T07:15:00Z"
* container[+] 
  * type = $sct#433466003 "Microscope slide (physical object)"
  * additiveReference = Reference(mii-exa-test-data-patient-1-patho-microscope-slide-mounting-med)
* container[+]
  * type = $sct#433472003 "Microscope slide coverslip (physical object)"
  * additiveReference = Reference(mii-exa-test-data-patient-1-patho-microscope-slide-mounting-med)

Instance: mii-exa-test-data-patient-1-patho-hematoxylin-stain
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Title: "EXA MII Patho Hematoxylin-stain"
Description: "Hematoxylin stain (substance)"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|1.0.8"
* code.coding = $sct#12710003 "Hematoxylin stain (substance)"

Instance: mii-exa-test-data-patient-1-patho-eosin-y
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Title: "EXA MII Patho Eosin Y"
Description: "Eosin Y (substance)"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|1.0.8"
* code.coding = $sct#763042003 "Eosin Y (substance)"

Instance: mii-exa-test-data-patient-1-patho-microscope-slide-mounting-med
InstanceOf: https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance
Usage: #example
Title: "EXA MII Patho Microscope Slide Mounting Medium"
Description: "Microscope slide mounting medium (substance)"
//* meta.profile[0] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Substance|1.0.8"
* code.coding = $sct#430862008 "Microscope slide mounting medium (substance)"