# Testabdeckung

Diese Seite definiert den Abdeckungsanspruch der Testdaten und zeigt den gemessenen Stand — immer bezogen auf **einen konkreten Stand des MII Kerndatensatz complete** (BOM), gegen den gebaut und gemessen wird (siehe Bezugsstand unten).

### Das Abdeckungsmodell

Die Testdaten folgen einem dreistufigen Vertrag, jeweils gemessen gegen die Profil-Snapshots des gepinnten BOM-Stands:

**1. Profil-Abdeckung** — Jedes instanziierbare Profil der BOM hat mindestens eine Beispielinstanz, die es per `meta.profile` deklariert. Abstrakte Profile gelten über ihre abgeleiteten Profile als abgedeckt.

**2. Must-Support-Abdeckung** — Jedes MS-Element eines genutzten Profils ist in **mindestens einer** Instanz dieses Profils befüllt. Daraus folgen bewusst **Varianten-Instanzen**, wo ein einzelnes Beispiel nie alle MS-Elemente tragen kann:
- *Choice-Varianten*: sind mehrere `value[x]`-/`onset[x]`-Ausprägungen MS (z.B. `abatementAge` **und** `abatementDateTime`), braucht es je Ausprägung eine Instanz.
- *Slice-Alternativen*: schließen sich MS-Slices gegenseitig aus (z.B. `medicationReference` vs. `medicationCodeableConcept`), deckt je eine Instanz einen Zweig ab.
- *`dataAbsentReason`*: ist DAR selbst MS, bekommt **jedes strukturell mögliche Vorkommen** eine Absent-Variante — nicht nur eine je Profilfamilie. Wo das Profil einen Wert erzwingt und DAR zugleich als MS führt, ist keine konforme Instanz möglich; diese Fälle sind unten als *blockiert* ausgewiesen.

**3. Invarianten-Abdeckung** — Für Profil-Invarianten (FHIRPath-Constraints) existiert mindestens ein Beispiel, das den Constraint **erfüllt zeigt**; bei verzweigenden Invarianten (entweder/oder-Logik) **je Zweig ein Beispiel**. Umgesetzte Beispiele:
- `DosageDE` (Medikation): *entweder* vollständige strukturierte Dosierung (`timing` + `doseAndRate`, ohne Text) *oder* reiner Freitext — abgedeckt durch das Patientenpaar **Patient-1 (strukturiert)** / **Patient-2 (unstrukturiert)**.
- `mii-pr-mikrobio-resistenzkategorie-status`: Positiv- **und** Negativ-Befund.
- `sba-1` (Soziodemographie, Schwerbehindertenausweis): Details nur bei vorhandenem Ausweis — Ja-Zweig mit GdB/Merkzeichen, Nein-Zweig ohne.

Ergänzend gilt: **referentielle Integrität** innerhalb jedes Bundles (in der CI gegen Blaze mit `ENFORCE_REFERENTIAL_INTEGRITY` erzwungen) und die durchgängige Kennzeichnung (`meta.security = HTEST`, `meta.source`).

### Gemessener Stand

Die folgenden Zahlen erzeugt `scripts/ms-coverage.py` bei jedem IG-Build neu:

{% include testabdeckung-status.md %}

**Lesehilfe:** Nicht jede Lücke ist ein Fehler einer Instanz. Die verbleibenden offenen Knoten fallen in vier dokumentierte Kategorien:
1. **Upstream-Widersprüche** — Profile mit `value[x] 1..1` *und* MS-`dataAbsentReason` (ICU-Bilanzen, Soziodemographie, Mikrobio-Resistenzkategorie): eine DAR-Instanz wäre invalide (obs-6). Als Ballot-Feedback vorgesehen.
2. **Fachlich nicht sinnvoll befüllbar** — etwa `valueQuantity`-Varianten auf rein qualitativen Mikrobiologie-Profilen, wo ein Zahlenwert keinen Befund darstellt. Referenzbereiche und Probenbezüge zählen ausdrücklich **nicht** mehr hierher: Sie werden mit plausiblen Werten befüllt, auch ohne Literaturbeleg.
3. **Nicht verifizierbare Terminologie** — wo kein belegbarer Code existiert, steht kein geratener im Testgut. Betrifft vor allem Soll- und Prozent-vom-Soll-Werte: Für Atemfrequenz und Hämoglobin kennt weder LOINC noch SNOMED ein Sollwert-Konzept, und *Prozent vom Soll* existiert für die bodyplethysmographischen Größen in keinem der drei geprüften Codesysteme.
4. **Messgrenzen** — Extensions auf Primitiven (`_effectiveDateTime` u.ä.) erkennt die Heuristik nur teilweise; die Daten sind dort größtenteils vorhanden.

Zusätzlich gilt: **Ein Zeuge genügt.** Der maschinenlesbare Abdeckungs-Index (`docs/ms-coverage-index.json` im Repository) nennt je MS-Element die belegenden Instanzen und dient als Regressions-Radar beim Umbau von Testdaten.

### Wo genau noch nichts steht

Die folgende Ansicht listet jeden Must-Support-Knoten ohne belegende Instanz. Ein Klick
auf einen Modulbalken schränkt die Tabelle ein; das Suchfeld greift auf Element, Profil
und Modul.

Entscheidend ist die Unterscheidung in der Statusspalte. **Machbar** heißt: Das Profil
erlaubt die Befüllung, es fehlt nur die Instanz. **Blockiert** heißt: Das Profil selbst
verhindert sie — weil es einen Wert erzwingt und zugleich `dataAbsentReason` als
Must-Support führt (die Invariante obs-6 schließt beides gegeneinander aus), weil ein
Element auf `max=0` steht, obwohl es als Must-Support markiert ist, oder weil ein
Platzhalter-Code (`TODO`) als Pattern festgeschrieben ist. Diese Fälle sind in den
[Ballot-Findings](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ballot-findings-2027.md)
dokumentiert und dort an die Modul-Maintainer adressiert.

{% include ms-luecken.html %}

### Grenzen und Ausblick

Die MS-Messung ist heuristisch (Basis-Pfad-Matching, Extension-Slices über ihre URL; Details im Skript-Docstring). Die Invarianten-Abdeckung wird bislang **kuratiert** statt gemessen — eine automatische Auswertung (FHIRPath-Evaluation je Constraint gegen alle Instanzen, inkl. Zweig-Erkennung) ist der nächste Ausbauschritt.
