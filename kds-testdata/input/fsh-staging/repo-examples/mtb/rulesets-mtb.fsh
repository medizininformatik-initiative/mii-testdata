RuleSet: BeschlussEvidenz(grad, quelle, id)
* insert BeschlussEvidenzgrad({grad})
* insert BeschlussEvidenzPublikation({quelle}, {id})

RuleSet: BeschlussEvidenzDreiQuellen(grad, quelle1, id1, quelle2, id2, quelle3, id3)
* insert BeschlussEvidenzgrad({grad})
* insert BeschlussEvidenzPublikation({quelle1}, {id1})
* insert BeschlussEvidenzPublikation({quelle2}, {id2})
* insert BeschlussEvidenzPublikation({quelle3}, {id3})

RuleSet: BeschlussEvidenzPublikation(quelle, id)
* extension[Publikation][+].valueIdentifier.system = "{quelle}"
* extension[Publikation][=].valueIdentifier.value = "{id}"

RuleSet: BeschlussEvidenzZweiQuellen(grad, quelle1, id1, quelle2, id2)
* insert BeschlussEvidenzgrad({grad})
* insert BeschlussEvidenzPublikation({quelle1}, {id1})
* insert BeschlussEvidenzPublikation({quelle2}, {id2})

RuleSet: BeschlussPrioritaet(prio)
* extension[Prioritaet].valuePositiveInt = {prio}

RuleSet: BeschlussSubPrioritaet(prio)
* extension[Prioritaet].valueDecimal = {prio}

RuleSet: BundleResource(type,id)
* entry[+].fullUrl = "http://example.org/fhir/{type}/{id}"
* entry[=].request.method = #PUT
* entry[=].resource = {id}
* entry[=].resource.id = "{id}"
* entry[=].request.url = "{type}/{id}"

RuleSet: Example_Header(canonical)
* insert MetaProfile({canonical})

RuleSet: SystemTherapyMedicationStatement(text, dateTime, procedure, parent, atc, doseValue, doseUnit, doseUnitCode)
* partOf[+] = Reference(Procedure/{procedure})
* partOf[+] = Reference(MedicationStatement/{parent})
* status = #completed
* medicationCodeableConcept.coding[atcClassDe] = http://fhir.de/CodeSystem/bfarm/atc{atc}
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = {dateTime}
* note.text = {text}
* dosage.timing.event = {dateTime}
* dosage.doseAndRate.doseQuantity.value = {doseValue}
* dosage.doseAndRate.doseQuantity.unit = {doseUnit}
* dosage.doseAndRate.doseQuantity.code = {doseUnitCode}
* dosage.doseAndRate.doseQuantity.system = http://unitsofmeasure.org

// MedicationStatements Carboplatin + Doxorubicin ---------------------------------------------------------------------
