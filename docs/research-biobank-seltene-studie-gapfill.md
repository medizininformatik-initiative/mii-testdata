# Profillücken-Schließung: Biobank, Seltene Erkrankungen, Studien

Recherche und Umsetzung zur Abdeckung der verbliebenen Profillücken in drei
Modulen durch Adaption der von den Modulen selbst mitgelieferten Beispiele
(2027.0.0-ballot-Pakete von packages.simplifier.net) sowie der historischen
2025er-Testdaten (`git show 00b7374c^:...`).

Alle neuen Instanzen: `insert TestDataLabel`, `meta.source =
"https://www.charite.de/fhir/kds-testdata"`, Profile ohne Versionssuffix,
Registrierung im jeweiligen Modul-Bundle via `AddBundleEntry`. Die
Modul-Bundles sind die **technische Schicht** (Profilabdeckung); klinische
Plausibilität ist sekundär, Einzelwerte sind jeweils realistisch.

## Modul Biobank (de.medizininformatikinitiative.kerndatensatz.biobank 2027.0.0-ballot)

Bundle: `mii-exa-test-data-bundle-biobank-1`

| Profillücke | Neue Instanz | Quelle (Paket-Beispiel) |
|---|---|---|
| mii-pr-biobank-observation-dna-konzentration | `Observation/mii-exa-test-data-biobank-dna-konzentration-1` | `Observation-DNAConcentrationObs1` |
| mii-pr-biobank-observation-karyotyp | `Observation/mii-exa-test-data-biobank-karyotyp-1` | `Observation-KaryotypOrganoidLunge` |
| mii-pr-biobank-observation-morphologie | `Observation/mii-exa-test-data-biobank-morphologie-1` | `Observation-MorphologieOrganoidLunge` |
| mii-pr-biobank-observation-proliferation | `Observation/mii-exa-test-data-biobank-proliferation-1` | `Observation-ProliferationOrganoidLunge` |
| mii-pr-biobank-observation-qualitaetspruefung | `Observation/mii-exa-test-data-biobank-qualitaetspruefung-1` | `Observation-QualitaetspruefungBuffyCoat` |
| mii-pr-biobank-observation-wachstumstyp | `Observation/mii-exa-test-data-biobank-wachstumstyp-1` | `Observation-WachstumstypOrganoidLunge` |
| mii-pr-biobank-zellinie-organoid | `Specimen/mii-exa-test-data-biobank-organoid-1` | `Specimen-OrganoidLunge` |
| SpecimenCore (`.../StructureDefinition/SpecimenCore`) | `Specimen/mii-exa-test-data-biobank-specimen-dna-1` | kein Paket-Beispiel nutzt SpecimenCore direkt; Instanz aus `Specimen-AliquotgruppeDNA`-Motiv abgeleitet |
| (Stütz-Instanzen) | `DocumentReference/mii-exa-test-data-biobank-kulturprotokoll-1`, `DocumentReference/mii-exa-test-data-biobank-crispr-protokoll-1` | `DocumentReference-Kulturprotokoll`, `DocumentReference-ProtocolCRISPRTP53` |

Entscheidungen:

- Das Lungen-Organoid des Paket-Beispiels wurde zu einem **Kolon-Tumor-
  Organoid** umgewidmet: Subject ist Biobank-Patient 3 (Claudia Spender), Parent
  die vorhandene Kolon-Gewebeprobe `mii-exa-test-data-patient-3-specimen-1` —
  passend zur bestehenden Kolonkarzinom-Diagnose
  (`mii-exa-test-data-biobank-diagnose-1`). Karyotyp 46,XX passt zur Patientin.
  Alle drei MS-Extensions (Kulturprotokoll, Modifikationen mit
  CRISPR-TP53-Knockout inkl. Ziel-Gen/Protokoll, Anzahl Passagen) abgedeckt.
- Die **SpecimenCore**-Instanz ist eine DNA-Probe (SCT 258566005), extrahiert
  aus dem EDTA-Blut von Biobank-Patient 1; die DNA-Konzentrations-Observation
  fokussiert auf diese Probe. Doppel-Abdeckung mit einem evtl. patho-seitig
  dual profilierten Specimen ist gewollt.
- Qualitätsprüfung: Hämolyse-Screening (Component `type` = SCT 401297005,
  Component `result` = LOINC LA10392-1 "Pass") auf der bestehenden Serumprobe
  `mii-exa-test-data-patient-3-specimen-2`.
- Neue Aliasse für die OBO-Ontologien (PATO, GO, CLO), MIABIS-Sample-Type-CS
  und genenames.org in `aliases.fsh`.

Upstream-Befunde Biobank:

- Die Paket-Beispiele referenzieren `Patient/mii-exa-test-data-patient-1` —
  das Modul hat offenbar unsere Testdaten-Namenskonvention übernommen, liefert
  den Patienten aber nicht mit (dangling Reference im Paket-Beispielbestand).
- `Specimen-OrganoidLunge` nutzt als erstes `type.coding` das generische
  SCT 123038009 "Specimen (specimen)" — die eigentliche Typinformation steckt
  nur im MIABIS-Coding (`Organoid`). Ein spezifischerer SNOMED-Code wäre
  wünschenswert (kein Fehler, Slice verlangt nur irgendein SCT-Coding).
- `DocumentReference-ProtocolCRISPRTP53` verteilt contentType/url/title auf
  **drei separate** `content`-Elemente statt eines Attachments — vermutlich
  ein Autorenfehler im Beispiel; wir haben das als ein Attachment modelliert.

## Modul Seltene Erkrankungen (de.medizininformatikinitiative.kerndatensatz.seltene 2027.0.0-ballot)

Bundle: `mii-exa-test-data-bundle-seltene-1` (Patientin Luisa Seltenfall,
Marfan-Syndrom, geb. 1995)

| Profillücke | Neue Instanz | Quelle (Paket-Beispiel) |
|---|---|---|
| mii-pr-seltene-consanguinity | `Observation/mii-exa-test-data-patient-3-seltene-consanguinity-1` | `Observation-mii-exa-seltene-consanguinity` |
| mii-pr-seltene-geburtsgewicht | `Observation/mii-exa-test-data-patient-3-seltene-geburtsgewicht-1` | `Observation-mii-exa-seltene-geburtsgewicht` |
| mii-pr-seltene-geburtslaenge | `Observation/mii-exa-test-data-patient-3-seltene-geburtslaenge-1` | `Observation-mii-exa-seltene-geburtslaenge` |
| mii-pr-seltene-gestationsalter | `Observation/mii-exa-test-data-patient-3-seltene-gestationsalter-1` | `Observation-mii-exa-seltene-gestationsalter` |
| mii-pr-seltene-icf-assessment | `Observation/mii-exa-test-data-patient-3-seltene-icf-assessment-1` | `Observation-mii-exa-seltene-icf-koerperfunktion` |
| mii-pr-seltene-registerteilnahme | `ResearchSubject/mii-exa-test-data-patient-3-seltene-registerteilnahme-1` | `ResearchSubject-mii-exa-seltene-registerteilnahme` |
| (Stütz-Instanzen) | `Library/mii-exa-test-data-seltene-register-katalog-1`, `ResearchStudy/mii-exa-test-data-seltene-register-study-1`, `Consent/mii-exa-test-data-seltene-register-consent-1` | `Library-...-register-katalog-euro-nmd`, `ResearchStudy-...-register-euro-nmd`, `Consent-...-register-einwilligung` |

Entscheidungen:

- **Schichtenmodell**: Geburtsgewicht/-länge/Gestationsalter für die erwachsene
  Patientin sind technische Abdeckung; modelliert als retrospektive
  Anamnese-Angaben zur Geburt (`effectiveDateTime` = Geburtsdatum 1995-02-10),
  FSH-Kommentar im File verweist auf das Schichtenmodell. Einzelwerte
  realistisch (3240 g, 53 cm, 39 Wochen).
- Consanguinity = "No" (SCT 373067005): Marfan ist autosomal-dominant,
  Konsanguinität hier ohne Befund — deckt zugleich einen anderen
  ValueSet-Wert ab als das Paket-Beispiel ("Yes").
- ICF-Assessment: b730 "Muscle power functions" (muskuläre Hypotonie ist ein
  Marfan-Merkmal) mit Component `extentOfImpairment` und BfArM-Qualifier
  `.1` (leicht ausgeprägt); `value[x]` ist im Profil 0..0, Befund steckt in
  den Components — wie im Paket-Beispiel.
- Registerteilnahme: das EURO-NMD-Register (neuromuskulär) des Beispiels wurde
  durch das **ERN ReCONNET**-Register (seltene Bindegewebserkrankungen)
  ersetzt — passend zur Marfan-Diagnose. Library-Katalogeintrag,
  ResearchStudy-Registerobjekt und Register-Consent als Stütz-Instanzen im
  Bundle; `Library.name` computerfreundlich (`ERNReCONNETRegistry`, Invariante
  cnl-0), Klartext im `title`.

Upstream-Befunde Seltene:

- Das ICF-Qualifier-CodeSystem `https://terminologien.bfarm.de/fhir/CodeSystem/
  icf-q-ausmass-der-schaedigung` ist nicht im Paket enthalten und nicht
  öffentlich auflösbar → offline-Validierung meldet "unbekanntes CodeSystem"
  (nur Warnung).

## Modul Studien (de.medizininformatikinitiative.kerndatensatz.studie 2027.0.0-ballot)

Bundle: `mii-exa-test-data-bundle-studien-1` (Patient Felix Proband). Die
Studie MII-BIOMARKER-2024 ist über das Akronym mit der bestehenden
Studieneinschluss-Anfrage (`mii-exa-test-data-studie-einschluss-anfrage-1`)
verdrahtet; Kette: ResearchStudy ← ResearchSubject (→ Patient, → Consent),
ResearchStudy → Register (Library), → Eligibility-Group; DocumentReference →
ResearchStudy (context.related).

| Profillücke | Neue Instanz | Quelle |
|---|---|---|
| mii-pr-studie-studie | `ResearchStudy/mii-exa-test-data-studien-studie-1` | Paket `ResearchStudy-mii-exa-studie-studie` + historisch `00b7374c^:.../ResearchStudy.fsh` |
| mii-pr-studie-register | `Library/mii-exa-test-data-studien-register-1` | Paket `Library-mii-exa-studie-register` + historisch `Library.fsh` |
| mii-pr-studie-proband | `ResearchSubject/mii-exa-test-data-studien-proband-1` | Paket `ResearchSubject-mii-exa-studie-proband` + historisch `ResearchSubject.fsh` |
| mii-pr-studie-dokument | `DocumentReference/mii-exa-test-data-studien-dokument-1` | Paket `DocumentReference-mii-exa-studie-dokument` + historisch `DocumentReference.fsh` |
| mii-pr-studie-ein-auschluss-kriterium | `EvidenceVariable/mii-exa-test-data-studien-kriterium-1` | Paket `EvidenceVariable-mii-exa-studie-ein-auschluss-kriterium` + historisch `EvidenceVariable.fsh` |
| (Stütz-Instanzen) | `Group/mii-exa-test-data-studien-group-1` (Eligibility), `Consent/mii-exa-test-data-studien-consent-1` (Proband.consent 1..1) | historisch `Group.fsh`; Consent-Muster aus Seltene-Paket |

Entscheidungen:

- ResearchStudy deckt alle acht MS-Extensions ab (Label mit title-type,
  AssociatedParty sponsor→Charité, Ethikvotum, Studienregister→DRKS-Library,
  Eligibility→Group, Akronym, Rekrutierung vollständig, Finanzierung).
  Kategorie über `research-study-phase` (Binding ist nur example).
- Proband nutzt den Identifier-Slice `subjectIdentificationCode`
  (v2-0203#ANON, System `.../core/sid/SubjectIdentificationCode`) und erfüllt
  `period 1..1` (mit `start 1..1`) und `consent 1..1` über den Consent-Stub.
- EvidenceVariable: Backport-Extensions linkId, definitionByTypeAndValue
  (Alter ≥ 18 a) und definitionCanonical abgedeckt; `definition[x]` je
  Characteristic als `definitionCodeableConcept` (andere definition-Slices im
  Profil 0..0). `definitionReference` (MS) bewusst ausgelassen — hätte eine
  weitere referenzierte EvidenceVariable erfordert.
- **SUSHI-Limitation**: die `definitionByCombination`-Backport-Extension ließ
  sich nicht in FSH abbilden. SUSHI löst `http://hl7.org/fhir/5.0/...`-URLs
  über seinen eigenen Cross-Version-Mechanismus (hl7.fhir.uv.xver-r5.r4) auf;
  dort ist die Sub-Extension `characteristic` ein verschachteltes
  BackboneElement, sodass die valueId-Form des Modul-eigenen Backports
  (`mii-ex-studie-backport-definition-by-combination`) nicht adressierbar ist
  (`error The element or path you referenced does not exist: ...
  extension[characteristic].valueId`). Die Extension ist 0..1 MS → ausgelassen,
  im FSH kommentiert.

Upstream-Befunde Studien (issue-würdig):

1. **Tippfehler im Profil-Canonical**: `mii-pr-studie-ein-auschluss-kriterium`
   — "auschluss" statt "ausschluss". Wir verwenden bewusst den tatsächlichen
   Canonical; eine Korrektur upstream wäre ein Breaking Change und sollte als
   Issue gemeldet werden.
2. **example.org-Kanonicals im Paket**: `CodeSystem-research-study-category-cs`
   und `ValueSet-research-study-category-vs` haben die Canonicals
   `http://example.org/fhir/CodeSystem|ValueSet/research-study-category` —
   offensichtlich Platzhalter, die es in ein Ballot-Paket geschafft haben.
   Das Paket-Beispiel `ResearchStudy-mii-exa-studie-studie` nutzt zudem
   `category.coding.code = "interventional"` **ohne** `system`.
3. **Beispiel-Identifier mit example.com**: `https://example.com/fhir/sid/drks`
   in `ResearchStudy-mii-exa-studie-studie` und `Library-mii-exa-studie-register`
   — wir verwenden stattdessen
   `https://www.medizininformatik-initiative.de/fhir/sid/drks` (wie die
   historischen 2025er-Testdaten).
4. **Library.name mit Invariantenverstoß**: Das Paket-Beispiel
   `Library-mii-exa-studie-register` hat `name = "DRKS - Deutsches Register
   Klinischer Studien"`, was die Warn-Invariante cnl-0 (computerfreundlicher
   Name) verletzt; wir setzen `name = "DRKS"` + `title`.

## Validierung

- `sushi build .`: **0 Errors**, 14 Warnungen — alle 14 bestanden schon vor
  dieser Änderung (genomics-reporting-/BBMRI-/basisprofil-Referenzen ohne
  geladenes Paket, xver-Hinweis, Kopfumfang-Slice-Warnung), keine neue Warnung
  aus den drei Modulen.
- Java-Validator (validator_cli, `-version 4.0.1`, complete-BOM-tgz +
  de.basisprofil.r4#1.6.0, `-tx n/a`) über alle 26 neuen generierten Dateien:
  einzige Fehler sind die bekannten **False Positives der Offline-Validierung**
  für `Attachment.contentType = application/pdf` (BCP-13/mimetypes-ValueSet ist
  ohne Terminologieserver nicht auswertbar; betrifft die 3 DocumentReferences,
  gleiches Muster wie bei allen bestehenden Dokument-Instanzen). Warnungen:
  dom-6-Narrative-Best-Practice, "Observation sollte Performer/Subject haben"
  (Biobank-Observations nutzen bewusst `focus` statt `subject`, wie die
  Paket-Beispiele), unbekannte externe CodeSysteme (PATO/GO/CLO-OBO, ICF,
  BfArM-ICF-Qualifier) — ohne Terminologieserver erwartbar, keine echten
  Befunde.
- Complete-BOM-Cache nach der Validierung wieder aus dem tgz restauriert;
  abschließender `sushi build .` erneut 0 Errors.
