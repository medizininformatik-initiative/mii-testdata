# ISiK Vitalparameter (gematik) - Research Report

Package: `de.gematik.isik`
Version: `6.0.0` (im KDS-Interop-Kontext: von der BOM
`de.medizininformatikinitiative.kerndatensatz.complete` `2027.0.0-ballot.19` in
`package.json` gepinnt)
Canonical prefix: `https://gematik.de/fhir/isik/StructureDefinition`
Status: NEUES technisches Testdaten-Bundle, kein KDS-Modul. Test data unter
`kds-testdata/input/fsh/modul-isik-vitalparameter/` (Bundle
`mii-exa-test-data-bundle-isik-vitalparameter-1`).

---

## 1. Profile Inventory

| # | Profile Name | LOINC (Pattern) | SNOMED-Slice | Wert | Covered by Instance |
|---|---|---|---|---|---|
| 1 | ISiKAtemfrequenz | 9279-1 | VS VitalSignDE-Atemfrequenz (86290005) | Quantity `/min` (fix) | mii-exa-test-data-isik-vitalparameter-atemfrequenz-1 |
| 2 | ISiKBlutdruckSystemischArteriell | 85354-9 | 75367002 (Pattern) | value 0..0; Komponenten SystolicBP 8480-6 / DiastolicBP 8462-4 (je 1..1 MS) + meanBP 8478-0, je `mm[Hg]` (fix) | mii-exa-test-data-isik-vitalparameter-blutdruck-1 |
| 3 | ISiKEKG | 11524-6 | 106073009 (Pattern) | value 0..0; Kanaele als component:ekgLeads mit valueSampledData | mii-exa-test-data-isik-vitalparameter-ekg-1 |
| 4 | ISiKGCS | 9269-2 | 248241002 (Pattern) | Quantity UCUM `1` (Pattern); Komponenten Eye 9267-6 / Verbal 9270-0 / Motor 9268-4 mit LOINC-LA-Antwortcodes | mii-exa-test-data-isik-vitalparameter-gcs-1 |
| 5 | ISiKHerzfrequenz | 8867-4 | VS VitalSignDE-Herzfrequenz (is-a 364075005) | Quantity `/min` (fix) | mii-exa-test-data-isik-vitalparameter-herzfrequenz-1 |
| 6 | ISiKKoerpergewicht | 29463-7 | VS (is-a 27113001) | Quantity aus VS kg/g | mii-exa-test-data-isik-vitalparameter-koerpergewicht-1 |
| 7 | ISiKKoerpergroesse | 8302-2 | VS (is-a 1153637007) | Quantity aus VS cm/m | mii-exa-test-data-isik-vitalparameter-koerpergroesse-1 |
| 8 | ISiKKoerperkerntemperatur | 8310-5 UND 8329-5 (beide 1..1!) | VS ISiKKernTempSctVS (307047009 rektal) | Quantity `Cel` (fix) | mii-exa-test-data-isik-vitalparameter-koerperkerntemperatur-1 |
| 9 | ISiKKopfumfang | 9843-4 | VS VitalSignDE-Kopfumfang (363812007) | Quantity, code fix `cm` | mii-exa-test-data-isik-vitalparameter-kopfumfang-1 |
| 10 | ISiKSauerstoffsaettigungArteriell | 2708-6 (+ Zusatzslice 59408-5 Pulsoxymetrie) | VS (431314004 peripher) | Quantity `%` (fix) | mii-exa-test-data-isik-vitalparameter-sauerstoffsaettigung-1 |
| - | ISiKPatient | - | - | - | NICHT instanziiert (nicht erforderlich, s. Abschnitt 3) |

Alle 10 Vitalparameter-Profile sind durch genau eine Instanz abgedeckt.

## 2. Wesentliche MS-/Pflicht-Elemente und ihre Belegung

Gemeinsames MS-Geruest aller Profile (geerbt von den DE-Basisprofilen
`observation-de-vitalsign-*` in `de.basisprofil.r4` 1.6.0):
`status` (1..1), `category:VSCat` Pattern `vital-signs` (1..1), `code.coding:loinc`
(Pattern, 1..1), `code.coding:snomed` (Pattern-System + VS-Binding), `subject` (1..1),
`encounter` (0..1 MS, aber `encounter.reference` 1..1 MS -> Literal-Referenz noetig),
`effective[x]` (1..1), `performer` (MS), `value[x]:valueQuantity` mit
value/unit/system/code je 1..1 MS, `dataAbsentReason` (MS), `method` (MS), `device` (MS).

Belegung in allen Instanzen: `status = #final`, `category[VSCat]`, LOINC- und
SNOMED-Coding, `subject`/`encounter` als Literal-Referenzen auf Patient-1/Encounter-1,
`effectiveDateTime`, `performer.display`, `method` (SNOMED-Prozedur, Example-Binding)
und `device.display`. `dataAbsentReason` bleibt bewusst leer: MS, aber wegen
Invariante obs-6 nicht neben `value[x]` belegbar.

Profil-Besonderheiten:

| Profil | Kernelemente in der Instanz |
|---|---|
| Atemfrequenz / Herzfrequenz | valueQuantity mit fixem UCUM `/min`; SNOMED aus DE-VS (86290005 bzw. 364075005) |
| Blutdruck | `value[x]` 0..0; component:SystolicBP und :DiastolicBP je 1..1 MS, :meanBP 0..1 MS - alle drei belegt (132/84, MAD 100). `code.coding` der Komponenten ist gesliced (LOINC 1..1, SCT 0..1, IEEE11073 0..1); LOINC + SCT belegt. SNOMED-Code-Slice auf Observation-Ebene per Pattern fix 75367002 |
| EKG | KEIN vital-signs-Profil: `category`-Pattern `procedure` (auf category.coding, kein Slice), `value[x]` 0..0, `effective[x]` nur dateTime. 3 Kanaele component:ekgLeads (Lead I/II/III aus VS EkgAbleitungenVS) mit valueSampledData: origin 0 uV, period 2 ms (500 Hz), factor 4.88, dimensions 1, data = 25 Samples mit plausiblem QRS-Komplex |
| GCS | `category:survey` (Pattern), `value[x]` 1..1 Quantity mit Pattern UCUM-Code `1` (Instanz: 12 "Punkte"); Komponenten Eye/Verbal/Motor mit required-Bindings auf `http://fhir.de/ValueSet/glasgow-coma-score-*` (LOINC-Antwortcodes LA6555-2 / LA6560-2 / LA6566-9 = E3 V4 M5) |
| Koerpergewicht / Koerpergroesse | UCUM aus VS VitalSignDE-Body-Weigth-UCUM (kg/g) bzw. -Length-UCUM (cm/m); 78 kg / 172 cm |
| Koerperkerntemperatur | `code.coding` 2..*: Slice `loinc` Pattern 8310-5 UND Slice `coretemp-loinc` Pattern 8329-5, BEIDE 1..1 - die Instanz traegt also zwei LOINC-Codings; SNOMED aus ISiKKernTempSctVS (307047009 rektal); UCUM fix `Cel` |
| Kopfumfang | valueQuantity.code per fixedCode `cm` (einziges Profil mit fixem Code statt VS/Pattern-System); 56 cm |
| Sauerstoffsaettigung | UCUM fix `%`; zusaetzlich optionaler Slice `loinc-zusatzcode` 59408-5 (Pulsoxymetrie) belegt, method 252465000 Pulse oximetry |

## 3. Szenario und Entscheidungen

Viktoria Vogel (*1968, weiblich), stationaere Aufnahme 05/2026 zur
Synkopenabklaerung; Aufnahme-Assessment mit komplettem Vitalparameter-Satz,
GCS 12 in der Notaufnahme, Ruhe-EKG am Folgetag. Der Bundle ist self-contained
(eigener Patient + Encounter).

- **Kein ISiKPatient**: `Observation.subject` ist in allen 10 Profilen plain
  `Reference(Patient | Group | Device | Location)`, `encounter` plain
  `Reference(Encounter)` - kein Bezug auf ISiKPatient/ISiKKontakt. Daher eigener
  KDS-Style-Patient wie in den uebrigen Modulen (Identifier-System
  `https://www.charite.de/fhir/sid/patientenidentifikation`).
- **Kopfumfang beim Erwachsenen** ist klinisch unueblich, aber messbar - fuer ein
  technisches Bundle mit einem Patienten bewusst in Kauf genommen (56 cm).
- **EKG-Rohdaten**: period 2 ms entspricht 500 Hz Abtastrate (uebliche
  Ruhe-EKG-Aufloesung), factor 4.88 uV/LSB entspricht einem typischen
  12-Bit-Digitizer; die data-Strings zeigen einen QRS-Komplex mit
  Einthoven-plausiblen Amplitudenverhaeltnissen (II = I + III).

## 4. Bekannte Upstream-Auffaelligkeiten

1. **WICHTIG - neue SUSHI-Dependency noetig**: Die BOM
   `kerndatensatz.complete` pinnt `de.gematik.isik 6.0.0` zwar in ihrer
   `package.json`, bettet aber KEINE ISiK-Conformance-Ressourcen physisch ein.
   SUSHI laedt transitive Dependencies nicht -> `InstanceOf ISiK... not found`.
   Daher wurde `de.gematik.isik: 6.0.0` als direkte Dependency in
   `sushi-config.yaml` ergaenzt (keine Canonical-Duplikate, da die BOM nichts
   von gematik einbettet). Nebeneffekt: die bisherige dateilose Warnung
   "ISiKLoincCoding ... could not find it" aus `modul-kardiologie`
   (ISiKRaucherStatus-Basis) ist damit verschwunden (15 -> 14 Warnungen).
2. **ISiKEKG: Slicing-Diskriminator ohne Pattern**: `Observation.component` ist
   mit Diskriminator `pattern:code` gesliced, der Slice `ekgLeads` constrained
   `code` aber nur ueber ein Binding (`EkgAbleitungenVS`), ohne Pattern. Ein
   Validator kann die Slice-Zugehoerigkeit so nicht ueber den Diskriminator
   entscheiden; upstream waere ein `discriminator.type = value/binding` bzw.
   ein Pattern sauberer.
3. **ISiKEKG: SNOMED-Pattern 106073009** (aus dem DE-Basisprofil
   `observation-de-ekg` uebernommen) traegt weder im Profil noch in einem VS ein
   Display; die Zuordnung zu "Elektrokardiographie" sollte upstream verifiziert
   werden. Die Instanz uebernimmt den Code pattern-getreu ohne Display.
4. **ISiKKoerperkerntemperatur verlangt zwei LOINC-Codings** (8310-5 Body
   temperature UND 8329-5 Core body temperature, `code.coding` 2..*, beide
   Slices 1..1). Ungewoehnlich, aber eindeutig; Instanz traegt beide.
5. **`encounter` 0..1 MS mit `encounter.reference` 1..1 MS**: Wer encounter
   belegt, MUSS eine Literal-Referenz verwenden (kein reiner
   identifier/display-Verweis).
6. **`dataAbsentReason` ist MS**, kann aber wegen obs-6 nie gemeinsam mit
   `value[x]` belegt werden - in Instanzen mit Messwert prinzipbedingt leer.
7. **ISiKGCS `value[x]` 1..1**: Anders als bei den uebrigen Vitalparametern ist
   der Gesamtscore Pflicht (kein dataAbsentReason-Weg); UCUM-Code fix `1`.

## 5. Aliases

Keine neuen Aliases erforderlich - `$observation-category`, `$sct`, `$loinc`
und `$v3-ActCode` existieren bereits in `input/fsh/aliases.fsh`. Die
ISiK-Profile verlangen (anders als die 2027er-Kardio-Profile) KEIN
`code.coding.version`, daher plain `$sct` ohne Versions-Pin.

## 6. Build-Status

`sushi build .`: 0 Fehler / 14 Warnungen, alle 14 vorbestehend aus anderen
Modulen (miabis/genomics-reporting/address-de-basis/seltene-kopfumfang,
old-style hl7.fhir.extensions.r5); keine Findings aus
`modul-isik-vitalparameter`-Dateien. Referentielle Integritaet innerhalb
`mii-exa-test-data-bundle-isik-vitalparameter-1` geprueft: alle Referenzen
zeigen auf Bundle-Eintraege.
