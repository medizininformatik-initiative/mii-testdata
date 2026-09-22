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

## 5. Erweiterung: Vollabdeckung aller ISiK-6.0.0-Observation-Profile

Ausbau des Bundles auf ALLE instanziierbaren Observation-Profile des Pakets
`de.gematik.isik 6.0.0` (63 neue Instanzen auf demselben Patient/Encounter;
neue Dateien `Lebenszustand.fsh`, `Labor.fsh`, `Monitoring.fsh`,
`Temperatur.fsh`). Rein technische Abdeckung: alle Werte einzeln realistisch,
klinische Gesamt-Plausibilitaet (z.B. erweitertes haemodynamisches Monitoring
bei Normalstation-Patientin, Entbindungstermin bei "nicht schwanger") ist
NICHT Ziel des Bundles.

### 5.1 LebensZustand-Familie

`ISiKLebensZustand` ist als einziges Profil des Pakets ABSTRAKT
(`abstract=true`) und wird ueber seine konkreten Ableitungen abgedeckt:

| Profil | LOINC (Pattern) | SNOMED (Pattern) | value[x] | Instanz (`...-isik-vitalparameter-`) |
|---|---|---|---|---|
| ISiKAlkoholAbusus | 74043-1 | 15167005 | CC required-Binding `yes-no-unknown-not-asked` (v2-0532 Y/N/ASKU/NASK) - hier `N` | alkoholabusus-1 |
| ISiKSchwangerschaftsstatus | 82810-3 | - (Slice offen) | CC required-Binding SchwangerschaftsstatusVS (LA15173-0/LA26683-5/LA4489-6) - hier "Not pregnant" | schwangerschaft-1 |
| ISiKSchwangerschaftErwarteterEntbindungstermin | required-Binding SchwangerschaftEtMethodeVS (hier 11778-8) | - | valueDateTime 1..1 (2026-11-20) | entbindungstermin-1 |
| ISiKStillstatus | 63895-7 | 413712001 | CC required-Binding StillstatusVS (hier LA29253-4) | stillstatus-1 |
| ISiKRaucherStatus | 72166-2 | - | - | BEREITS abgedeckt via modul-kardiologie (Raucherstatus-Instanz auf MII-Kardio-Profil, Basis ISiKRaucherStatus) - nicht dupliziert |

Besonderheiten: `category` ist in der Familie MS ohne Pattern (nur
AlkoholAbusus pinnt `social-history`); alle Instanzen setzen einheitlich
`social-history`. Beim Entbindungstermin sitzt die ET-Methode im
LOINC-Code-Binding (nicht im value); `hasMember` (Schwangerschaftsstatus ->
ET) wurde bewusst NICHT gesetzt, da der Status "nicht schwanger" ist.

### 5.2 Laboruntersuchungs-Familie

`ISiKLaboruntersuchung` ist konkret (nicht abstrakt) -> eigene generische
Instanz (Kalium 2823-3, kein analytspezifisches Unterprofil). Struktur analog
KDS-Labor: `identifier:analyseBefundCode` (Typ v2-0203#OBI, hier 0..1 MS statt
1..1 wie im KDS - durchgaengig belegt), `category:observation-category`
Pattern `laboratory` 1..1 (optionaler Slice `laborbereich` mit
ISiKLaborbereichVS nicht belegt), `code.coding:loinc` 1..1,
`performer` 1..* MS (Display-Referenz "Zentrallabor Charite"), `issued` MS.
Die Unterprofile binden `code.coding:loinc` und `valueQuantity` je required an
`ObservationCodes<X>` / `ObservationUnits<X>`:

| Profil | LOINC (gewaehlt) | SNOMED (Pattern) | Wert | Instanz |
|---|---|---|---|---|
| ISiKLaboruntersuchung (generisch) | 2823-3 Kalium | - | 4.1 mmol/L | labor-generisch-1 |
| ...CRP | 1988-5 | 55235003 | 4.2 mg/L (+referenceRange <5) | labor-crp-1 |
| ...GFR | 98979-8 (CKD-EPI 2021) | 80274001 | 78 "mL/min/(1.73)" | labor-gfr-1 |
| ...Hb | 718-7 | 416125006 | 13.2 g/dL | labor-hb-1 |
| ...PCT | 33959-8 | 418752001 | 0.08 ng/mL | labor-pct-1 |
| ...Serumkreatinin | 2160-0 | 70901006 | 0.9 mg/dL | labor-kreatinin-1 |
| ...Serumnatrium | 2951-2 (einziger Code im VS) | KEIN snomed-Slice | 141 mmol/L | labor-natrium-1 |
| ...TSH | 3016-3 | 61167004 | 1.8 m[IU]/L | labor-tsh-1 |
| ...Thrombozyten | 777-3 | 365632008 | 265 10*3/uL | labor-thrombozyten-1 |
| ...Troponin | 10839-9 (Troponin I) | 105000003 | 0.02 ng/mL | labor-troponin-1 |

### 5.3 sd-mii-icu-Monitoring-Familie

`sd-mii-icu-monitoring-und-vitaldaten` ist KONKRET (nicht abstrakt) ->
generische Instanz mit Herzfrequenz-Codes aus den required-Bindings
`vs-mii-icu-code-monitoring-und-vitaldaten-snomed/-loinc` (364075005/8867-4).
Gemeinsames Geruest: `category:vs-cat` Pattern `vital-signs` 1..1;
`code.coding` gesliced in `sct`/`loinc`/`IEEE-11073` (Pattern-System, je
Profil per Pattern-Code + Kardinalitaet fixiert); `valueQuantity` mit
UCUM-Pattern (teils inkl. fixem `unit`-Display-String, z.B. "beats per
minute", "millimeter Mercury column" - patterngetreu uebernommen).

| Profil (sd-mii-icu-...) | Codes (sct / loinc / IEEE) | Wert | Instanz |
|---|---|---|---|
| monitoring-und-vitaldaten (Eltern, konkret) | frei aus VS (364075005 / 8867-4) | 82 /min | muv-generisch-1 |
| puls | 8499008 / LOINC 0..0! / 149514 | 76 /min | puls-1 |
| herzzeitvolumen | 82799009 / 8741-1 / 150276 | 4.8 L/min | hzv-1 |
| ideales-koerpergewicht | 170804003 / 50064-5 / 188796 | 63 kg | ideales-gewicht-1 |
| intrakranieller-druck-icp | 250844005 / 60956-0 / 153608 | 12 mm[Hg] | icp-1 |
| koerpergewicht-percentil-altersabhaengig | 1153592008 / 8336-0 / - | 45 % | gewicht-percentil-1 |
| koerpergroesse-percentil-altersabhaengig | 1153605006 / LOINC 0..0 / - | 40 % | groesse-percentil-1 |
| linksventrikulaerer-herzindex | 54993008 / 75919-1 / 149772 | 2.9 L/min/m2 | lv-herzindex-1 |
| linksventrikulaeres-schlagvolumen | 90096001 / 20562-5 / 150408 | 70 mL | lv-schlagvolumen-1 |
| linksventrikulaeres-schlagvolumenindex | - / 76297-1 / 150636 (opt.) | 37 mL/m2 | lv-svi-1 |
| linksventri-herzindex-durch-indikatorverduennung | - / 8751-0 / - (value 1..1!) | 2.8 L/min/m2 | lv-hi-ind-1 |
| linksventri-schlagvolumen-durch-indikatorverduennung | - / 8771-8 / - | 68 mL | lv-sv-ind-1 |
| linksventri-schlagvolumenindex-durch-indikatorverd | - / 8791-6 / - | 36 mL/m2 | lv-svi-ind-1 |
| linksventri-herzzeitvolumen-durch-indikatorverd | - / 8737-9 / - | 4.9 L/min | lv-hzv-ind-1 |
| o2saettigung-im-arteriellen-blut-durch-pulsoxymetrie | 442476006 / 59408-5 / 150324 | 96 % | o2sat-art-1 |
| o2saettigung-im-blut-preduktal-durch-pulsoxymetrie | - / 59407-7 / 160296 | 97 % | o2sat-praeduktal-1 |
| o2saettigung-im-blut-postduktal-durch-pulsoxymetrie | - / 59418-4 / 160300 | 95 % | o2sat-postduktal-1 |
| pulmonalarterieller-wedge-druck | 118433006 / 75994-4 / 150052 | 12 mm[Hg] | wedge-1 |
| pulmonalvaskulaerer-widerstandsindex | 276902009 / 8834-4 / 152852 | 220 dyn.s/cm5/m2 | pvri-1 |
| systemischer-vaskulaerer-widerstandsindex | 276900001 / 8837-7 / 149760 | 1900 dyn.s/cm5/m2 | svri-1 |
| zentralvenoeser-blutdruck | 71420008 / 60985-9 / 150084 | 8 mm[Hg] | zvd-1 |

Pulsatile Druecke (eigene Basisklasse
`sd-mii-icu-sonstige-pulsatile-druecke-generisch`, direkt auf Observation,
ebenfalls KONKRET): `value[x]` 0..0, Werte in den Komponenten-Slices
`SystolicBP`/`DiastolicBP`/`meanBP` (LOINC 8480-6/8462-4/8478-0 + SCT +
IEEE-Komponenten-Codes, alle 0..1); `code.coding:sct-generic` Pattern
75367002 "Blood pressure" 1..1 plus profil-spezifischer `sct`-Slice:

| Profil | spez. SCT / LOINC / IEEE | Sys/Dia/Mean (mmHg) | Instanz |
|---|---|---|---|
| sonstige-pulsatile-druecke-generisch | offener sct-Slice (gewaehlt: 364090009 Systemic arterial pressure, aus Monitoring-VS) | 128/76/93 | pulsatil-generisch-1 |
| linksatrialer-druck | 276760007 / 60988-3 / 150064 (Komp. 150065-67) | 12/8/10 | lap-1 |
| linksventrikulaerer-druck | 276769008 / - / 150100 (150101-03) | 120/10/47 | lvp-1 |
| rechtsatrialer-druck | 276755008 / 60996-6 / 150068 (150069-71) | 8/3/5 | rap-1 |
| rechtsventrikulaerer-druck | 276756009 / - / 150104 (150105-07) | 25/4/14 | rvp-1 |
| pulmonalarterieller-blutdruck | 250767002 / 76284-9 / 150044 (150045-47) | 25/10/15 | pap-1 |

Slice-Namens-Inkonsistenz upstream: der IEEE-Slice auf `code` heisst bei
linksatrial/linksventrikulaer `IEEE11073`, bei den uebrigen `IEEE-11073`
(Komponenten durchgaengig `IEEE-11073`).

### 5.4 Koerpertemperatur-Familie (alle Messorte)

Zwei Vererbungslinien innerhalb desselben Pakets:

(a) von `ISiKKoerperkerntemperatur` abgeleitet (Slices `loinc` 8310-5 +
`coretemp-loinc` 8329-5, je 1..1, `snomed` Messort-Pattern, plus je nach
Profil `specific-loinc`/`specific-IEEE-11073`/`IEEE11073`):

| Messort | SCT | specific-LOINC | specific-IEEE | Wert GradC | Instanz |
|---|---|---|---|---|---|
| kern (unspezifisch) | 276885007 | - | IEEE11073 150364 1..1! | 37.2 | temp-kern-1 |
| rektal | 307047009 | 8332-9 | 188420 | 37.6 | temp-rektal-1 |
| blut | 1222808002 | 60834-9 | 188436 | 37.3 | temp-blut-1 |
| achsel | 415882003 | 8328-7 | - | 36.6 | temp-achsel-1 |
| harnblase | 698832009 | 8334-5 | - | 37.4 | temp-harnblase-1 |
| leiste | 415929009 | 104063-3 | - | 36.8 | temp-leiste-1 |
| speiseroehre | 431598003 | 60836-4 | 150372 | 37.3 | temp-oesophagus-1 |
| trommelfell | 415974002 | 8333-7 | 150392 | 37.1 | temp-trommelfell-1 |
| unter-der-zunge | 415945006 | 8331-1 | 188424 | 36.9 | temp-sublingual-1 |
| vaginal | 364246006 | - | - | 37.2 | temp-vaginal-1 |
| koerperkerntemperatur-stirn | 1366425007 | - | - | 36.9 | kerntemp-stirn-1 |

(b) von `sd-mii-icu-koerpertemperatur-generisch` abgeleitet (KONKRET, eigene
generische Instanz temp-generisch-1 mit 37.0; Slices `sct`/`loinc` 8310-5 /
`IEEE-11073`/`specific-loinc`; UCUM-Pattern `Cel`):

| Messort | SCT | IEEE | specific-LOINC | Wert GradC | Instanz |
|---|---|---|---|---|---|
| atemwege | (0..0) | 150356 | 60955-2 | 36.7 | temp-atemwege-1 |
| brust | 248835004 | - | - | 36.4 | temp-brust-1 |
| brustwirbelsaeule | 364424001 | - | - | 36.9 | temp-bws-1 |
| gelenk | 250124002 | - | - | 35.8 | temp-gelenk-1 |
| halswirbelsaeule | 364419004 | - | - | 36.8 | temp-hws-1 |
| lendenwirbelsaeule | 364429006 | - | - | 36.9 | temp-lws-1 |
| myokard | (0..0) | 188500 | 61009-7 | 37.0 | temp-myokard-1 |
| nasal | (0..0) | 188504 | 76010-8 | 36.5 | temp-nasal-1 |
| nasen-rachen-raum | 698831002 | 150380 | 60838-0 | 36.9 | temp-nasopharynx-1 |
| stirn (Haut) | 415922000 | - | - | 36.3 | temp-stirn-1 |

Alle bodySite-Patterns (0..1, patternCodeableConcept je Messort) sind belegt,
soweit definiert.

### 5.5 Abstrakt/Konkret-Entscheidungen

| Profil | abstract? | Behandlung |
|---|---|---|
| ISiKLebensZustand | JA (einziges abstraktes) | via 4 Ableitungen + RaucherStatus (kardiologie) abgedeckt |
| ISiKLaboruntersuchung | nein | eigene generische Instanz (Kalium) |
| sd-mii-icu-monitoring-und-vitaldaten | nein | eigene generische Instanz (Herzfrequenz aus VS) |
| sd-mii-icu-sonstige-pulsatile-druecke-generisch | nein | eigene generische Instanz (systemisch-arterieller Druck 364090009) |
| sd-mii-icu-koerpertemperatur-generisch | nein | eigene generische Instanz (37.0 GradC, nur Pflicht-LOINC 8310-5) |

### 5.6 Canonical-Ueberlappung ISiK 6.0.0 vs. KDS-ICU

Das ISiK-6.0.0-Paket bettet MII-ICU-Profile unter gematik-Canonicals
(`https://gematik.de/fhir/isik/StructureDefinition/...`) ein - Ergebnis der
Co-Entwicklung ISiK-Stufe-6 / MII-KDS-ICU:

- `sd-mii-icu-*` (Monitoring/Vitaldaten/Temperatur): existieren NUR im
  gematik-Paket unter gematik-Canonical - hier abgedeckt (dieses Modul).
- `mii-pr-icu-*` (Bilanz ×19, RASS, Pupillenbefunde ×6, Beatmung ×4,
  zerebraler Perfusionsdruck): identische IDs wie die Originale im Paket
  `de.medizininformatikinitiative.kerndatensatz.icu`, aber unter
  gematik-Canonical dupliziert. Diese Profile werden hier bewusst NICHT
  instanziiert - die KDS-ICU-Originale sind durch `modul-icu` abgedeckt.
  Beim Laden beider Pakete existieren dieselben Profil-IDs unter zwei
  Canonicals; Instanzen koennen immer nur gegen einen der beiden validiert
  werden (meta.profile bzw. -profile-Parameter entscheidet).
- Kuriosum: `StructureDefinition-sd-mii-icu-lv-herzzeitvolumen-durch-indikator`
  hat als `id` `sd-mii-icu-lv-herzzeitvolumen-durch-indikator`, die URL endet
  aber auf `sd-mii-icu-linksventri-herzzeitvolumen-durch-indikatorverd` -
  fuer `InstanceOf` zaehlt die URL.

### 5.7 Neue Upstream-Auffaelligkeiten (Erweiterung)

1. **ObservationUnitsGFR enthaelt den UCUM-Code `mL/min/(1.73)`** - kein
   valider UCUM-Ausdruck (ueblich waere `mL/min/{1.73_m2}`); wegen
   required-Binding musste die Instanz den Code trotzdem uebernehmen.
2. **`sd-mii-icu-sonstige-pulsatile-druecke-generisch`: `sct`-Slice (1..1)
   ohne Pattern und ohne Binding** bei Diskriminator `pattern:$this` - ein
   Validator kann die Slice-Zugehoerigkeit nicht feststellen (das
   MII-ICU-Original-Beispiel behilft sich mit einem leeren
   `{"system": "snomed"}`-Coding). Instanz nutzt stattdessen einen realen
   Code (364090009).
3. **Slice-Namens-Inkonsistenz `IEEE11073` vs. `IEEE-11073`** innerhalb der
   pulsatilen Druck-Familie und der Temperatur-Linien (s.o.).
4. **`sd-mii-icu-puls` verbietet LOINC** (`code.coding:loinc` 0..0), obwohl
   LOINC 8889-8 (Heart rate by Pulse oximetry) existiert - Absicht
   vermutlich Abgrenzung zur Herzfrequenz, upstream pruefenswert.
5. **`value[x]`-Pattern mit fixem `unit`-Display-String** (z.B. "beats per
   minute", "millimeter Mercury column", "dyne second per centimeter5 and
   square meter"): patternQuantity pinnt neben `system`/`code` auch den
   menschenlesbaren `unit`-Text - Instanzen muessen den exakten String
   tragen, sonst Pattern-Verletzung.
6. **`linksventri-herzindex-durch-indikatorverduennung`** ist das einzige
   Monitoring-Profil mit `value[x]` 1..1 (Geschwisterprofile 0..1 mit
   dataAbsentReason 0..0 bzw. MS).
7. **Percentil-Profile nur fuer Kinder sinnvoll** (altersabhaengige
   Perzentilen), hier auf der 58-jaehrigen Testpatientin - rein technische
   Abdeckung.
8. **ISiKSchwangerschaftsstatus/ET**: Methode des erwarteten
   Entbindungstermins wird ueber den LOINC-Code (Binding
   SchwangerschaftEtMethodeVS) ausgedrueckt, nicht ueber `method`.

## 6. Aliases

Keine neuen Aliases erforderlich - `$observation-category`, `$sct`, `$loinc`
und `$v3-ActCode` existieren bereits in `input/fsh/aliases.fsh`. Die
ISiK-Profile verlangen (anders als die 2027er-Kardio-Profile) KEIN
`code.coding.version`, daher plain `$sct` ohne Versions-Pin.

## 7. Build- und Validierungs-Status

`sushi build .` (inkl. Erweiterung auf 76 Modul-Ressourcen): 0 Fehler /
14 Warnungen, alle 14 vorbestehend aus anderen Modulen
(miabis/genomics-reporting/address-de-basis/seltene-kopfumfang, old-style
hl7.fhir.extensions.r5); keine Findings aus
`modul-isik-vitalparameter`-Dateien. Referentielle Integritaet innerhalb
`mii-exa-test-data-bundle-isik-vitalparameter-1` geprueft: alle Referenzen
zeigen auf Bundle-Eintraege.

Java-Validator (validator_cli, `-version 4.0.1`, BOM-tgz + basisprofil 1.6.0,
`-tx n/a`) ueber alle 73 Observation-Instanzen des Moduls: als einziger
Error die bekannte Slicing-Auswertung von
`sd-mii-icu-sonstige-pulsatile-druecke-generisch` (sct-Slice ohne
Pattern/Binding, s. Abschnitt 5.7 Nr. 2 - Profil-Defekt upstream, tritt bei
JEDER Instanz dieses Profils auf, auch beim MII-ICU-Original-Beispiel).
Uebrige Findings ausschliesslich Warnungen: dom-6-Narrative (Best Practice,
projektweit so gehandhabt), Terminologie-Checks ohne tx-Server sowie der
extensible-Hinweis auf `identifier-type` (OBI aus v2-0203, wie im
KDS-Labor-Modul).
