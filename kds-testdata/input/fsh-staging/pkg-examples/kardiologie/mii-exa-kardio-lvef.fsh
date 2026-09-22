Instance: mii-exa-kardio-lvef
InstanceOf: MII_PR_Kardio_Linksventrikulaere_Ejektionsfraktion
Usage: #example
* contained[0] = Beispielpatient
* contained[+] = Beispielfall
* identifier.system = "http://hospital.demo.org/observation-lvef"
* identifier.value = "lvef-123456"
* basedOn.display = "Echokardiographie: Beispielanforderung"
* partOf.display = "Echokardiographie: Beispieluntersuchung"
* category.coding = http://terminology.hl7.org/CodeSystem/observation-category#imaging "Imaging"
* category.coding.version = "2.0.0"
* code.coding[0] = http://snomed.info/sct#250908004 "Left ventricular ejection fraction"
* code.coding[=].version = "http://snomed.info/sct/900000000000207008/version/20260701"
* code.coding[+] = http://loinc.org#10230-1 "Left ventricular ejection fraction"
* code.coding[=].version = "2.83"
* code.text = "Linksventrikuläre Ejektionsfraktion"
* performer.display = "Beispielarzt"
* valueQuantity = 55 '%' "%"
* interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* bodySite.coding = http://snomed.info/sct#87878005 "Left cardiac ventricular structure"
* bodySite.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* bodySite.text = "Linker Ventrikel"
* method.coding = http://snomed.info/sct#40701008 "Echocardiography"
* method.coding.version = "http://snomed.info/sct/900000000000207008/version/20260701"
* method.text = "Echokardiographie"
* device.display = "Philips EPIQ CVx Ultrasound System"
* referenceRange[0].low = 50 '%' "%"
* referenceRange[=].text = "Normal"
* referenceRange[+].low = 41 '%' "%"
* referenceRange[=].high = 49 '%' "%"
* referenceRange[=].text = "Mildly reduced"
* referenceRange[+].high = 40 '%' "%"
* referenceRange[=].text = "Reduced"
* language = #de
* status = #final
* subject = Reference(Beispielpatient)
* encounter = Reference(Beispielfall)
* effectiveDateTime = "2025-05-12T10:15:00+01:00"