RuleSet: Bundle(resource, url)
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/{resource}"
* entry[=].resource = {resource}
* entry[=].request.method = #PUT
* entry[=].request.url = "{url}/{resource}"

RuleSet: MetaProfile(canonical)
* meta.profile[+] = "{canonical}|2027.0.0-ballot.1"

// ---- appended from mii-kds-module-template v0.13.0 (rulesets/version.fsh) during the IG-template migration; module definitions win ----

RuleSet: Region(subject, specimen, device, HGNC-ID, HGNC-symbol, RefSeq)
* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/region-studied"
* status = #final
* category[labCategory] = ObsCat#laboratory "Laboratory"
* code = LNC#53041-0 "DNA region of interest panel"
* subject = Reference({subject})
* performer = Reference(mii-exa-molgen-practitioner-lab)
* method = LNC#LA26398-0 "Sequencing"
* specimen = Reference({specimen})
* device = Reference({device})
* component[gene-studied].code = LNC#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = HGNC#{HGNC-ID} "{HGNC-symbol}"
* component[region-description].code = LNC#81293-3 "Description of ranges of DNA sequences examined"
* component[region-description].valueString = "direkte Sequenzierung der codierenden Exons inkl. flankierender intronischer Bereiche"
* component[transcript-ref-seq].valueCodeableConcept = RefSeq#{RefSeq}
