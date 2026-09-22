# Testabdeckung

Diese Seite definiert den Abdeckungsanspruch der Testdaten und zeigt den gemessenen Stand — immer bezogen auf **einen konkreten Stand des MII Kerndatensatz complete** (BOM), gegen den gebaut und gemessen wird (siehe Bezugsstand unten).

### Das Abdeckungsmodell

Die Testdaten folgen einem dreistufigen Vertrag, jeweils gemessen gegen die Profil-Snapshots des gepinnten BOM-Stands:

**1. Profil-Abdeckung** — Jedes instanziierbare Profil der BOM hat mindestens eine Beispielinstanz, die es per `meta.profile` deklariert. Abstrakte Profile gelten über ihre abgeleiteten Profile als abgedeckt.

**2. Must-Support-Abdeckung** — Jedes MS-Element eines genutzten Profils ist in **mindestens einer** Instanz dieses Profils befüllt. Daraus folgen bewusst **Varianten-Instanzen**, wo ein einzelnes Beispiel nie alle MS-Elemente tragen kann:
- *Choice-Varianten*: sind mehrere `value[x]`-/`onset[x]`-Ausprägungen MS (z.B. `abatementAge` **und** `abatementDateTime`), braucht es je Ausprägung eine Instanz.
- *Slice-Alternativen*: schließen sich MS-Slices gegenseitig aus (z.B. `medicationReference` vs. `medicationCodeableConcept`), deckt je eine Instanz einen Zweig ab.
- *`dataAbsentReason`*: ist DAR selbst MS, gehört neben den Wert-Beispielen eine Absent-Variante ins Testgut.

**3. Invarianten-Abdeckung** — Für Profil-Invarianten (FHIRPath-Constraints) existiert mindestens ein Beispiel, das den Constraint **erfüllt zeigt**; bei verzweigenden Invarianten (entweder/oder-Logik) **je Zweig ein Beispiel**. Umgesetzte Beispiele:
- `DosageDE` (Medikation): *entweder* vollständige strukturierte Dosierung (`timing` + `doseAndRate`, ohne Text) *oder* reiner Freitext — abgedeckt durch das Patientenpaar **Patient-1 (strukturiert)** / **Patient-2 (unstrukturiert)**.
- `mii-pr-mikrobio-resistenzkategorie-status`: Positiv- **und** Negativ-Befund.
- `sba-1` (Soziodemographie, Schwerbehindertenausweis): Details nur bei vorhandenem Ausweis — Ja-Zweig mit GdB/Merkzeichen, Nein-Zweig ohne.

Ergänzend gilt: **referentielle Integrität** innerhalb jedes Bundles (in der CI gegen Blaze mit `ENFORCE_REFERENTIAL_INTEGRITY` erzwungen) und die durchgängige Kennzeichnung (`meta.security = HTEST`, `meta.source`).

### Gemessener Stand

Die folgenden Zahlen erzeugt `scripts/ms-coverage.py` bei jedem IG-Build neu:

{% include testabdeckung-status.md %}

**Lesehilfe:** Nicht jede Lücke ist ein Fehler einer Instanz — ein Großteil sind fehlende *Varianten* (siehe Abdeckungsmodell oben) oder tiefe Detail-MS (z.B. `coding.version`). Die Klassifikation je Modul steht im verlinkten Report.

### Grenzen und Ausblick

Die MS-Messung ist heuristisch (Basis-Pfad-Matching, Extension-Slices über ihre URL; Details im Skript-Docstring). Die Invarianten-Abdeckung wird bislang **kuratiert** statt gemessen — eine automatische Auswertung (FHIRPath-Evaluation je Constraint gegen alle Instanzen, inkl. Zweig-Erkennung) ist der nächste Ausbauschritt.
