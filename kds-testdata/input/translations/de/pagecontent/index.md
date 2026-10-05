# MII KDS Testdaten

Dieser Implementierungsleitfaden stellt umfassende Testdaten zu den Modulen des Kerndatensatzes (KDS) der Medizininformatik-Initiative (MII) bereit — **Generation Ballot 2027**, gebaut gegen das BOM-Paket `de.medizininformatikinitiative.kerndatensatz.complete` (alle 21 KDS-Module kohärent gepinnt).

**1369 Beispielinstanzen · 31 Transaction-Bundles · jede Instanz trägt `meta.security = HTEST` und ein `meta.source`.**

Auf der [Artefaktseite](artifacts.html) sind die Instanzen nach dem Modul gruppiert, das sie bedienen — ein Abschnitt je KDS-Modul, einer für die Patienten-Bundles über die Basismodule und einer je modulübergreifendem Beispielpatienten.

## Drei Arten von Bundles

- **16 Modul-Bundles** (`mii-exa-test-data-bundle-<modul>-1`): technisch vollständige, in sich geschlossene Testdatensätze je Modul mit eigenen Patienten — eines je Erweiterungsmodul: Bildgebung, Biobank, Dokument, ICU, Kardiologie, Lungenfunktion, Mikrobiologie, MolGen, MTB, Onkologie, Patho, PRO, Seltene, Soziodemographie, Studien, Symptom. Ein siebzehntes Bundle deckt die ISiK-Vitalparameter der gematik ab, auf die mehrere KDS-Module verweisen. Neu mit der Generation 2027 sind Kardiologie, Lungenfunktion, Soziodemographie und Symptom.
- **10 Patienten-Bundles** (`mii-exa-test-data-bundle-pat-1 … -pat-10`): klinisch kohärente Szenarien je Patient über die **Basismodule** (Person, Fall, Diagnose, Prozedur, Labor, Medikation, Consent).
- **4 modulübergreifende Beispielpatienten** (`mii-exa-test-data-bundle-pat-11 … -pat-14`): ein Patient, der Basismodule **und** Erweiterungsmodule trägt, damit modulübergreifende Verknüpfungen testbar werden. Jeder ist einem realen MII-Forschungsprojekt nachempfunden — siehe [Modulübergreifende Beispielpatienten](cross-module-patients.html).

Die dritte Art schließt eine Lücke, die die ersten beiden konstruktionsbedingt offen lassen: Modul-Bundles sind vollständig, aber jedes hat seinen **eigenen** Patienten, sodass nichts modulübergreifend verknüpft ist; die Patienten-Bundles 1–10 verknüpfen zwar, aber nur über die Basismodule.

## Testpatienten

- **Patient-1**: Umfassender Referenzpatient — **vollständig strukturierte Medikationsdosierung** (timing + doseAndRate, kodierte Medikamente)
- **Patient-2**: Lungenkrebspatient (verstorben) mit Chemotherapie — **vollständig unstrukturierte Medikation** (Freitext-Dosierung und -Medikation, keine Medication-Ressourcen)
- **Patient-3**: Kolorektalkarzinom-Patient mit umfangreichen molekulargenetischen Daten
- **Patient-4**: Magenkarzinom-Patient mit Molekulargenetik
- **Patient-5**: Endometriose-Patientin mit Hormontherapie
- **Patient-6**: Gastritis-Patient mit H.-pylori-Eradikationstherapie
- **Patient-7**: Bronchitis-Patient mit Antibiotikatherapie
- **Patient-8**: Myokardinfarkt-Patient (verstorben) mit kardialen Interventionen
- **Patient-9**: Ovarialzysten-Patientin mit laparoskopischer Operation
- **Patient-10**: Migräne-Patient mit neurologischer Diagnostik

### Modulübergreifende Beispielpatienten

- **Patient-11**: Herzinsuffizienz — Forschungsstudie + Soziodemographie + **longitudinale PROMs** (T0/T3/T6)
- **Patient-12**: Sepsis auf der Intensivstation — Beatmung + SOFA-Verlauf + Mikrobiologie, mit dem Antibiotikawechsel kausal an den Resistenzbefund geknüpft
- **Patient-13**: Morbus Fabry — Symptome ab 2011, Diagnose 2023: ein aus den Daten messbarer **diagnostischer Verzug von 12 Jahren**
- **Patient-14**: MSI-high-Kolorektalkarzinom — Pathologie → NGS → molekulares Tumorboard → Immuntherapie → Ansprechen

Details: [Modulübergreifende Beispielpatienten](cross-module-patients.html).

Die Patienten 1 und 2 bilden bewusst ein Paar, das beide zulässigen `DosageDE`-Welten (strukturiert vs. Freitext) des Moduls Medikation abdeckt.

## Qualitätsinstrumentierung

Das Repository ist zugleich ein Messinstrument über die KDS-Profile. Die Analysen (je Release neu erzeugt) liegen in den [Repository-Docs](https://github.com/medizininformatik-initiative/mii-testdata/tree/main/docs):

- **Profilabdeckung**: 360 von 450 instanziierbaren BOM-Profilen abgedeckt (~80 %)
- **Must-Support-Abdeckung** (`ms-coverage-2027.md`): befüllte vs. fehlende MS-Elemente je Modul, plus befüllte Nicht-MS-Pfade als Kandidaten für Ballot-Feedback
- **Ungefilterter Validierungs-Masterindex** (`validation-master-index-2027-unfiltered.md`): alle Validator-Befunde, nach Message-Id geclustert und als Testdaten / Upstream / Offline-Artefakt klassifiziert
- **Migrationsnotizen** (`2027-dependency-upgrade-errors.md`): jede Breaking Change 2026 → Ballot 2027 und ihre Auflösung
- **Recherchenotizen je Modul** (`research-<modul>.md`): Profilinventar und Designentscheidungen für neu erstellte Module

## Auslieferung

Die erzeugten Testdaten werden als **NDJSON + gezipptes `fsh-generated`** über die [GitHub-Release-Assets](https://github.com/medizininformatik-initiative/mii-testdata/releases) veröffentlicht. Die Bundles lassen sich sauber als Transaktionen in einen FHIR-Server laden (in der CI gegen Blaze verifiziert).

## Mitwirken

Siehe die [README des Repositorys](https://github.com/medizininformatik-initiative/mii-testdata) für die Anforderungen an Testdaten (vollständige Profilabdeckung, alle Must-Support-Elemente befüllt, referenzielle Integrität) und den Beitragsprozess.
