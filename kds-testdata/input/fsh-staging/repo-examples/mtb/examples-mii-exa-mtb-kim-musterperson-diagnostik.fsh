Instance: PatientKimMusterperson-Observation-1
InstanceOf: Observation
Usage: #example
Description: "kein Hinweis auf thorakale Metastasierung"
* partOf = Reference(PatientKimMusterperson-Procedure-1)
* status = #final
* code.coding = http://snomed.info/sct#128462008 "Metastatic malignant neoplasm (disorder)"
* valueCodeableConcept.coding = http://snomed.info/sct#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.text = "kein Hinweis auf thorakale Metastasierung"

Instance: PatientKimMusterperson-Observation-2
InstanceOf: Observation
Usage: #example
Description: "kein Hinweis auf Lokalrezidiv"
* partOf = Reference(PatientKimMusterperson-Procedure-1)
* status = #final
* code.coding = http://snomed.info/sct#255227004 "Recurrent"
* valueCodeableConcept.coding = http://snomed.info/sct#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.text = "kein Hinweis auf Lokalrezidiv"

Instance: PatientKimMusterperson-Observation-3
InstanceOf: Observation
Usage: #example
Description: "kein Aszites"
* partOf = Reference(PatientKimMusterperson-Procedure-1)
* status = #final
* code.coding = http://snomed.info/sct#389026000 "Ascites"
* valueCodeableConcept.coding = http://snomed.info/sct#860638000 "No ascites"
* valueCodeableConcept.text = "kein Aszites"

Instance: PatientKimMusterperson-Observation-4
InstanceOf: Observation
Usage: #example
Description: "Z.n. atypischer Lebersegmentresektion, kein eindeutiger Hinweis auf Metastasierung. Flüssigkeitskollektion angrenzend DD postoperativ"
* partOf = Reference(PatientKimMusterperson-Procedure-1)
* status = #final
* code.coding[+] = http://snomed.info/sct#237679004 "Status post (contextual qualifier) (qualifier value)"
* code.coding[+] = http://snomed.info/sct#112231000 "Atypical (qualifier value)"
* code.coding[+] = http://snomed.info/sct#174430004 "Resection of segment of liver (procedure)"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#309201001 "Ascitic fluid specimen"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#262061000 "After surgery"
* valueCodeableConcept.text = "Flüssigkeitskollektion angrenzend DD postoperativ"
* bodySite = http://snomed.info/sct#181247007 "Entire duodenum"

// 15.07.22 CT T/A: 
// - [x] konstante Flüssigkeitskollektion angrenzend bei Z.n. atpyischer Lebersegmentresktion, a.e. postoperativ
// - [x] kein Aszites, kein Hinweis auf Lokalrezidiv
// - [x] im linken Oberlappen der Lunge diskrete milchglasartige Trübung DD atypisch entzündlich, klinische Korrelation empfohlen, darüber hinaus kein Hinweis auf thorakale Filiae

Instance: PatientKimMusterperson-Observation-5
InstanceOf: Observation
Usage: #example
Description: "konstante Flüssigkeitskollektion angrenzend bei Z.n. atpyischer Lebersegmentresktion, a.e. postoperativ"
* partOf = Reference(PatientKimMusterperson-Procedure-2)
* status = #final
* code.coding[+] = http://snomed.info/sct#237679004 "Status post (contextual qualifier) (qualifier value)"
* code.coding[+] = http://snomed.info/sct#112231000 "Atypical"
* code.coding[+] = http://snomed.info/sct#174430004 "Resection of segment of liver (procedure)"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#420341009 "Constant"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#309201001 "Ascitic fluid specimen"
* valueCodeableConcept.text = "konstante Flüssigkeitskollektion angrenzend"
* bodySite = http://snomed.info/sct#181247007 "Entire duodenum"

Instance: PatientKimMusterperson-Observation-6
InstanceOf: Observation
Usage: #example
Description: "kein Aszites"
* partOf = Reference(PatientKimMusterperson-Procedure-2)
* status = #final
* code.coding = http://snomed.info/sct#389026000 "Ascites"
* valueCodeableConcept.coding = http://snomed.info/sct#860638000 "No ascites"
* valueCodeableConcept.text = "kein Aszites"

Instance: PatientKimMusterperson-Observation-7
InstanceOf: Observation
Usage: #example
Description: "kein Hinweis auf Lokalrezidiv"
* partOf = Reference(PatientKimMusterperson-Procedure-2)
* status = #final
* code.coding = http://snomed.info/sct#255227004 "Recurrent"
* valueCodeableConcept.coding = http://snomed.info/sct#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.text = "kein Hinweis auf Lokalrezidiv"

Instance: PatientKimMusterperson-Observation-8
InstanceOf: Observation
Usage: #example
Description: "im linken Oberlappen der Lunge diskrete milchglasartige Trübung DD atypisch entzündlich, klinische Korrelation empfohlen, darüber hinaus kein Hinweis auf thorakale Filiae"
* partOf = Reference(PatientKimMusterperson-Procedure-2)
* status = #final
* code.coding[+] = http://snomed.info/sct#112231000 "Atypical"
* code.coding[+] = http://snomed.info/sct#1217294009 "Ground glass opacity"
* code.coding[+] = http://snomed.info/sct#44714003 "Structure of upper lobe of left lung"
* code.text = "im linken Oberlappen der Lunge diskrete milchglasartige Trübung"
* valueCodeableConcept.coding = http://snomed.info/sct#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#255058005 "Neoplasm of thorax"
* valueCodeableConcept.text = "kein Hinweis auf thorakale Filiae"

// 19.10.22 CT T/A
// - [x] regrediente Flüssigkeitskollektion am Leberrand, Z.n. atypische Lebersegmentresektion. Darüberhinaus kein Hinweis auf Leberfilialisierung.
// - [x] kein Aszites, kein Hinweis auf Lokalrezidiv
// - [x] regrediente Milchglasinfiltrate im linken Oberlappen, somit a.e. atypisch entzündlich. Leicht vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme und ohne pathologische Vergrößerung, Verlaufskontrolle empfohlen

Instance: PatientKimMusterperson-Observation-9
InstanceOf: Observation
Usage: #example
Description: "regrediente Flüssigkeitskollektion am Leberrand, Z.n. atypische Lebersegmentresektion. Darüberhinaus kein Hinweis auf Leberfilialisierung."
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding[+] = http://snomed.info/sct#237679004 "Status post (contextual qualifier) (qualifier value)"
* code.coding[+] = http://snomed.info/sct#112231000 "Atypical"
* code.coding[+] = http://snomed.info/sct#174430004 "Resection of segment of liver (procedure)"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#309201001 "Ascitic fluid specimen"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#249567002 "Liver edge (finding)"
* valueCodeableConcept.text = "regrediente Flüssigkeitskollektion am Leberrand"
* bodySite = http://snomed.info/sct#181268008 "Entire liver"

Instance: PatientKimMusterperson-Observation-10
InstanceOf: Observation
Usage: #example
Description: "regrediente Flüssigkeitskollektion am Leberrand, Z.n. atypische Lebersegmentresektion. Darüberhinaus kein Hinweis auf Leberfilialisierung."
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding[+] = http://snomed.info/sct#237679004 "Status post (contextual qualifier) (qualifier value)"
* code.coding[+] = http://snomed.info/sct#112231000 "Atypical"
* code.coding[+] = http://snomed.info/sct#174430004 "Resection of segment of liver (procedure)"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#94381002 "Metastatic malignant neoplasm to liver (disorder)"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.text = "Darüberhinaus kein Hinweis auf Leberfilialisierung."
* bodySite = http://snomed.info/sct#181268008 "Entire liver"

Instance: PatientKimMusterperson-Observation-11
InstanceOf: Observation
Usage: #example
Description: "kein Aszites"
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding = http://snomed.info/sct#389026000 "Ascites"
* valueCodeableConcept.coding = http://snomed.info/sct#860638000 "No ascites"
* valueCodeableConcept.text = "kein Aszites"

Instance: PatientKimMusterperson-Observation-12
InstanceOf: Observation
Usage: #example
Description: "kein Hinweis auf Lokalrezidiv"
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding = http://snomed.info/sct#255227004 "Recurrent"
* valueCodeableConcept.coding = http://snomed.info/sct#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.text = "kein Hinweis auf Lokalrezidiv"

Instance: PatientKimMusterperson-Observation-13
InstanceOf: Observation
Usage: #example
Description: "regrediente Milchglasinfiltrate im linken Oberlappen, somit a.e. atypisch entzündlich."
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding[+] = http://snomed.info/sct#255227004 "Recurrent"
* code.coding[+] = http://snomed.info/sct#1217294009 "Ground glass opacity"
* code.coding[+] = http://snomed.info/sct#44714003 "Structure of upper lobe of left lung"
* code.text = "regrediente Milchglasinfiltrate im linken Oberlappen"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#112231000 "Atypical"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#257552002 "Inflammation"
* valueCodeableConcept.text = "a.e. atypisch entzündlich"

Instance: PatientKimMusterperson-Observation-14
InstanceOf: Observation
Usage: #example
Description: "Leicht vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme"
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding = http://snomed.info/sct#245276004 "Mediastinal lymph node group"
* code.text = "mediastinaler Lymphknoten"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#258283002 "Lymphomatous nodal involvement"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#373067005 "No"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#385420005 "Contrast media"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#151174005 "Drug intake observed"
* valueCodeableConcept.text = "vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme"

Instance: PatientKimMusterperson-Observation-15
InstanceOf: Observation
Usage: #example
Description: "Leicht vermehrter mediastinaler Lymphknotenbesatz ohne pathologische Vergrößerung, Verlaufskontrolle empfohlen"
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding = http://snomed.info/sct#245276004 "Mediastinal lymph node group"
* code.text = "mediastinaler Lymphknoten"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#373067005 "No"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#15454001 "Increased size"
* valueCodeableConcept.text = "ohne pathologische Vergrößerung"

// 19.12.22 CT T/A
// - [ ] progredienter Aszites (ca. 700ml), Peritonealblatt mit zunehmender, unregelmäßiger KM-Aufnahme, suspekt auf Progress der bekannten Peritonealkarzinose. V.a. Lokalrezidiv bei kontrastmittelaufnehmender Raumforderung im kleinen Becken
// - [ ] KM-affine Vermehrung sowie pathologische Vergrößerung mehrerer mediastinaler Lymphknoten suspekt auf lymphonodale Metastasierung

Instance: PatientKimMusterperson-Observation-16
InstanceOf: Observation
Usage: #example
Description: "progredienter Aszites (ca. 700ml)"
* partOf = Reference(PatientKimMusterperson-Procedure-4)
* status = #final
* code.coding = http://snomed.info/sct#389026000 "Ascites"
* code.coding = http://snomed.info/sct#255314001 "Progressive"
* code.text = "Progredienter Aszites"
* valueQuantity.value = 700
* valueQuantity.unit = "ml"
* valueQuantity.system = http://unitsofmeasure.org
* valueQuantity.code = #mL

Instance: PatientKimMusterperson-Observation-17
InstanceOf: Observation
Usage: #example
Description: "Peritonealblatt mit zunehmender, unregelmäßiger KM-Aufnahme"
* partOf = Reference(PatientKimMusterperson-Procedure-4)
* status = #final
* code.coding = http://snomed.info/sct#362700006 "Entire peritoneal serous membrane of peritoneum"
* code.text = "Peritonealblatt"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#385420005 "Contrast media"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#49608001 "Irregular"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#260366006 "Increase"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#151174005 "Drug intake observed"
* valueCodeableConcept.text = "Peritonealblatt mit zunehmender, unregelmäßiger KM-Aufnahme"

Instance: PatientKimMusterperson-Observation-18
InstanceOf: Observation
Usage: #example
Description: "suspekt auf Progress der bekannten Peritonealkarzinose"
* partOf = Reference(PatientKimMusterperson-Procedure-4)
* status = #final
* code.coding = http://snomed.info/sct#836274002 "Carcinomatosis of peritoneum"
* code.text = "Peritonealkarzinose"
* valueCodeableConcept.coding = http://snomed.info/sct#255314001 "Progressive"
* valueCodeableConcept.text = "Progress"

Instance: PatientKimMusterperson-Observation-19
InstanceOf: Observation
Usage: #example
Description: "V.a. Lokalrezidiv bei kontrastmittelaufnehmender Raumforderung im kleinen Becken"
* partOf = Reference(PatientKimMusterperson-Procedure-4)
* status = #final
* code.coding = http://snomed.info/sct#80266002 "True pelvis"
* code.text = "kleinen Becken"
* valueCodeableConcept.coding = http://snomed.info/sct#255227004 "Recurrent"
* valueCodeableConcept.text = "Lokalrezidiv bei kontrastmittelaufnehmender Raumforderung"

// 20.03.2023 CT T/A: 
// - [x] regredienter Aszites, rückläufige KM-Aufnahme der lokalrezidivsuspekten Raumforderung im kleinen Becken
// - [x] noch flaue, aber insgesamt regrediente KM-Aufnhame der zahlenmäßig vermehrten LK im Mediastinum
// - [x] keine neue metastasensuspekte Läsion

Instance: PatientKimMusterperson-Procedure-5
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "20.03.2023 CT T/A"
* status = #completed
* category.coding[sct] = http://snomed.info/sct#363680008 "Radiographic imaging procedure"
* subject = Reference(PatientKimMusterperson)
* code.coding = http://fhir.de/CodeSystem/bfarm/ops#3-20 "Computertomographie [CT], nativ"
* code.coding.version = "2025"
* performedDateTime = 2023-03-20
* bodySite[+] = http://snomed.info/sct#818983003 "Abdomen"
* bodySite[+] = http://snomed.info/sct#51185008 "Thoracic structure"

Instance: PatientKimMusterperson-Observation-20
InstanceOf: Observation
Usage: #example
Description: "regredienter Aszites"
* partOf = Reference(PatientKimMusterperson-Procedure-5)
* status = #final
* code.coding = http://snomed.info/sct#389026000 "Ascites"
* code.text = "Aszites"
* valueCodeableConcept.coding = http://snomed.info/sct#37865006 "Regressive"
* valueCodeableConcept.text = "Regredient"

Instance: PatientKimMusterperson-Observation-21
InstanceOf: Observation
Usage: #example
Description: "rückläufige KM-Aufnahme der lokalrezidivsuspekten Raumforderung im kleinen Becken"
* partOf = Reference(PatientKimMusterperson-Procedure-5)
* status = #final
* code.coding = http://snomed.info/sct#80266002 "True pelvis"
* code.text = "im kleinen Becken"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#37865006 "Regressive"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#385420005 "Contrast media"
* valueCodeableConcept.text = "rückläufige KM-Aufnahme der lokalrezidivsuspekten Raumforderung"

Instance: PatientKimMusterperson-Observation-22
InstanceOf: Observation
Usage: #example
Description: "noch flaue, aber insgesamt regrediente KM-Aufnhame der zahlenmäßig vermehrten LK im Mediastinum"
* partOf = Reference(PatientKimMusterperson-Procedure-5)
* status = #final
* code.coding = http://snomed.info/sct#274744005 "Localized enlarged lymph nodes"
* code.text = "zahlenmäßig vermehrten LK im Mediastinum"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#37865006 "Regressive"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#385420005 "Contrast media"
* valueCodeableConcept.text = "noch flaue, aber insgesamt regrediente KM-Aufnhame"

Instance: PatientKimMusterperson-Observation-23
InstanceOf: Observation
Usage: #example
Description: "keine neue metastasensuspekte Läsion"
* partOf = Reference(PatientKimMusterperson-Procedure-5)
* status = #final
* code.coding = http://snomed.info/sct#52988006 "Lesion"
* code.text = "Läsion"
* valueCodeableConcept.coding = http://snomed.info/sct#373067005 "No"
* valueCodeableConcept.text = "keine neue"

// 20.08.2023 CT T/A: 
// - [x] kein Aszites, fast vollständig regredientes Lokalrezidiv ohne KM-Aufnahme im kleinen Becken

Instance: PatientKimMusterperson-Procedure-6
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "20.08.2023 CT T/A"
* status = #completed
* category.coding[sct] = http://snomed.info/sct#363680008 "Radiographic imaging procedure"
* subject = Reference(PatientKimMusterperson)
* code.coding = http://fhir.de/CodeSystem/bfarm/ops#3-20 "Computertomographie [CT], nativ"
* code.coding.version = "2025"
* performedDateTime = 2023-08-20
* bodySite[+] = http://snomed.info/sct#818983003 "Abdomen"
* bodySite[+] = http://snomed.info/sct#51185008 "Thoracic structure"

Instance: PatientKimMusterperson-Observation-24
InstanceOf: Observation
Usage: #example
Description: "kein Aszites"
* partOf = Reference(PatientKimMusterperson-Procedure-6)
* status = #final
* code.coding = http://snomed.info/sct#389026000 "Ascites"
* valueCodeableConcept.coding = http://snomed.info/sct#860638000 "No ascites"
* valueCodeableConcept.text = "kein Aszites"

Instance: PatientKimMusterperson-Observation-25
InstanceOf: Observation
Usage: #example
Description: "fast vollständig regredientes Lokalrezidiv ohne KM-Aufnahme im kleinen Becken"
* partOf = Reference(PatientKimMusterperson-Procedure-6)
* status = #final
* code.coding = http://snomed.info/sct#255227004 "Recurrent"
* code.text = "Lokalrezidiv"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#37865006 "Regressive"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#373067005 "No"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#385420005 "Contrast media"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#151174005 "Drug intake observed"
* valueCodeableConcept.text = "regredientes Lokalrezidiv ohne KM-Aufnahme im kleinen Becken"

// 22.10.2023 CT T/A
// - [x] lediglich geringer Aszites im kleinen Becken, vormals KM-aufnehmendes Lokalrezidiv im kleinen Becken aktuell metrisch nur noch schwer fassbar
// - [x] formal noch vermehrte, jedoch nicht mehr KM-aufnehmende mediastinale Lymphknoten

Instance: PatientKimMusterperson-Procedure-7
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "22.10.2023 CT T/A"
* status = #completed
* category.coding[sct] = http://snomed.info/sct#363680008 "Radiographic imaging procedure"
* subject = Reference(PatientKimMusterperson)
* code.coding = http://fhir.de/CodeSystem/bfarm/ops#3-20 "Computertomographie [CT], nativ"
* code.coding.version = "2025"
* performedDateTime = 2023-10-22
* bodySite[+] = http://snomed.info/sct#818983003 "Abdomen"
* bodySite[+] = http://snomed.info/sct#51185008 "Thoracic structure"

Instance: PatientKimMusterperson-Observation-26
InstanceOf: Observation
Usage: #example
Description: "geringer Aszites im kleinen Becken"
* partOf = Reference(PatientKimMusterperson-Procedure-7)
* status = #final
* code.coding = http://snomed.info/sct#80266002 "True pelvis"
* code.text = "kleinen Becken"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#255606000 "Minor"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#389026000 "Ascites"
* valueCodeableConcept.text = "geringer Aszites"

Instance: PatientKimMusterperson-Observation-27
InstanceOf: Observation
Usage: #example
Description: "vormals KM-aufnehmendes Lokalrezidiv im kleinen Becken aktuell metrisch nur noch schwer fassbar"
* partOf = Reference(PatientKimMusterperson-Procedure-7)
* status = #final
* code.coding[+] = http://snomed.info/sct#237679004 "Status post (contextual qualifier) (qualifier value)"
* code.coding[+] = http://snomed.info/sct#246455001 "Recurrence"
* code.text = "vormals KM-aufnehmendes Lokalrezidiv im kleinen Becken"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#246455001 "Recurrence"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#263920009 "Unrecordable"
* valueCodeableConcept.text = "aktuell metrisch nur noch schwer fassbar"
* bodySite.coding = http://snomed.info/sct#80266002 "True pelvis"

Instance: PatientKimMusterperson-Observation-29
InstanceOf: Observation
Usage: #example
Description: "formal noch vermehrte mediastinale Lymphknoten"
* partOf = Reference(PatientKimMusterperson-Procedure-7)
* status = #final
* code.coding = http://snomed.info/sct#245276004 "Mediastinal lymph node group"
* code.text = "mediastinale Lymphknoten"
* valueCodeableConcept.coding = http://snomed.info/sct#35105006 "Increased"
* valueCodeableConcept.text = "formal noch vermehrte"

Instance: PatientKimMusterperson-Observation-30
InstanceOf: Observation
Usage: #example
Description: "nicht mehr KM-aufnehmende mediastinale Lymphknoten"
* partOf = Reference(PatientKimMusterperson-Procedure-7)
* status = #final
* code.coding = http://snomed.info/sct#245276004 "Mediastinal lymph node group"
* code.text = "mediastinale Lymphknoten"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#373067005 "No"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#385420005 "Contrast media"
* valueCodeableConcept.coding[+] = http://snomed.info/sct#151174005 "Drug intake observed"
* valueCodeableConcept.text = "nicht mehr KM-aufnehmende"
