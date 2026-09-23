# Testabdeckung

Diese Seite definiert den Abdeckungsanspruch der Testdaten und zeigt den gemessenen Stand — immer bezogen auf **einen konkreten Stand des MII Kerndatensatz complete** (BOM), gegen den gebaut und gemessen wird (siehe Bezugsstand unten).

### Das Abdeckungsmodell

Die Testdaten folgen einem dreistufigen Vertrag, jeweils gemessen gegen die Profil-Snapshots des gepinnten BOM-Stands:

**1. Profil-Abdeckung** — Jedes instanziierbare Profil der BOM hat mindestens eine Beispielinstanz, die es per `meta.profile` deklariert. Abstrakte Profile gelten über ihre abgeleiteten Profile als abgedeckt.

**2. Must-Support-Abdeckung** — Jedes MS-Element eines genutzten Profils ist in **mindestens einer** Instanz dieses Profils befüllt. Daraus folgen bewusst **Varianten-Instanzen**, wo ein einzelnes Beispiel nie alle MS-Elemente tragen kann:
- *Choice-Varianten*: sind mehrere `value[x]`-/`onset[x]`-Ausprägungen MS (z.B. `abatementAge` **und** `abatementDateTime`), braucht es je Ausprägung eine Instanz.
- *Slice-Alternativen*: schließen sich MS-Slices gegenseitig aus (z.B. `medicationReference` vs. `medicationCodeableConcept`), deckt je eine Instanz einen Zweig ab.
- *`dataAbsentReason`*: ist DAR selbst MS, gehört eine Absent-Variante ins Testgut — **repräsentativ je Profilfamilie** (z.B. eine Score-DAR für alle ICU-Scores, eine Komponenten-DAR für die Patho-Grouper), nicht je Profil. DAR belegt die Systemfähigkeit „fehlender Wert", nicht jede einzelne Ausprägung.

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
2. **Fachlich bewusst offen** — Elemente, deren Befüllung klinisch unsinnig wäre (z.B. `specimen` bei Bilanzierungs-Observations oder anamnestischen Symptomen, `valueQuantity`-Varianten auf rein qualitativen Mikrobiologie-Profilen, `referenceRange` ohne etablierten Sollbereich).
3. **Nicht verifizierbare Terminologie** — wo kein belegbarer Code existiert (LuFu-Predicted-Komponenten, upstream-Issue #45; OPS-Detailcodes), steht kein geratener Code im Testgut.
4. **Messgrenzen** — Extensions auf Primitiven (`_effectiveDateTime` u.ä.) erkennt die Heuristik nur teilweise; die Daten sind dort größtenteils vorhanden.

Zusätzlich gilt: **Ein Zeuge genügt.** Der maschinenlesbare Abdeckungs-Index (`docs/ms-coverage-index.json` im Repository) nennt je MS-Element die belegenden Instanzen und dient als Regressions-Radar beim Umbau von Testdaten.

### Grenzen und Ausblick

Die MS-Messung ist heuristisch (Basis-Pfad-Matching, Extension-Slices über ihre URL; Details im Skript-Docstring). Die Invarianten-Abdeckung wird bislang **kuratiert** statt gemessen — eine automatische Auswertung (FHIRPath-Evaluation je Constraint gegen alle Instanzen, inkl. Zweig-Erkennung) ist der nächste Ausbauschritt.
