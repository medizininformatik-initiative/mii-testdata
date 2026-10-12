# Testabdeckung

Diese Seite benennt, was die Testdaten abzudecken versprechen, und zeigt den gemessenen Stand — immer gegen **eine konkrete Version des MII Kerndatensatz complete** (die BOM), gegen die die Daten gebaut und gemessen werden (siehe Referenzversion unten).

### Der Abdeckungsvertrag

Die Testdaten folgen einem dreiteiligen Vertrag, jeder Teil gemessen gegen die Profil-Snapshots der gepinnten BOM:

**1. Profilabdeckung** — jedes instanziierbare Profil der BOM hat mindestens eine Beispielinstanz, die es über `meta.profile` deklariert. Abstrakte Profile gelten über ihre abgeleiteten Profile als abgedeckt.

**2. Must-Support-Abdeckung** — jedes MS-Element eines genutzten Profils ist in **mindestens einer** Instanz dieses Profils befüllt. Das erzeugt bewusst **Varianteninstanzen**, wo ein einzelnes Beispiel nicht jedes MS-Element tragen kann:
- *Choice-Varianten*: Sind mehrere `value[x]`- oder `onset[x]`-Formen MS (etwa `abatementAge` **und** `abatementDateTime`), braucht jede Form ihre eigene Instanz.
- *Slice-Alternativen*: Wo sich MS-Slices gegenseitig ausschließen (`medicationReference` versus `medicationCodeableConcept`), deckt je eine Instanz einen Zweig ab.
- *`dataAbsentReason`*: Wo DAR selbst MS ist, bekommt **jedes strukturell mögliche Vorkommen** eine Absent-Variante — nicht nur eine je Profilfamilie. Wo ein Profil einen Wert verlangt und zugleich DAR als MS markiert, existiert keine konforme Instanz; diese Fälle erscheinen unten als *blockiert*.

**3. Invariantenabdeckung** — für Profil-Invarianten (FHIRPath-Constraints) zeigt mindestens ein Beispiel den Constraint **erfüllt**; bei verzweigten Invarianten ein Beispiel **je Zweig**. Umgesetzte Beispiele:
- `DosageDE` (Medikation): *entweder* eine vollständig strukturierte Dosierung (`timing` plus `doseAndRate`, kein Freitext) *oder* reiner Freitext — abgedeckt durch das Patientenpaar **patient-1 (strukturiert)** / **patient-2 (unstrukturiert)**.
- `mii-pr-mikrobio-resistenzkategorie-status`: positiver **und** negativer Befund.
- `sba-1` (Soziodemographie, Schwerbehindertenausweis): Details nur, wo ein Ausweis existiert — ein Ja-Zweig mit Grad und Merkzeichen, ein Nein-Zweig ohne.

Darüber hinaus: **referenzielle Integrität** innerhalb jedes Bundles, in der CI gegen Blaze mit `ENFORCE_REFERENTIAL_INTEGRITY` erzwungen, und konsistente Kennzeichnung (`meta.security = HTEST`, `meta.source`).

Da ein einzelner Server nur fängt, worin er zufällig streng ist, lädt die CI jedes Bundle in **Blaze und HAPI** und meldet jede Abweichung. Diese Prüfung fand eine Specimen-Referenz, die als absolute URL in den MII-Canonical-Namensraum geschrieben war: Blaze akzeptierte sie, HAPI lehnte sie als externe Referenz ab.

### Gemessener Stand

`scripts/ms-coverage.py` erzeugt diese Zahlen bei jedem IG-Build neu:

{% include testabdeckung-status-de.md %}

**Wie man das liest.** Nicht jede Lücke ist ein Defekt in einer Instanz. Die verbleibenden offenen Knoten fallen in vier dokumentierte Kategorien:

1. **Upstream-Widersprüche** — Profile mit `value[x] 1..1` *und* MS `dataAbsentReason` (ICU-Bilanzen, Soziodemographie, Mikrobiologie-Resistenzstatus): Eine DAR-Instanz wäre unter obs-6 ungültig. Als Ballot-Feedback eingereicht.
2. **Nicht sinnvoll befüllbar** — `valueQuantity`-Varianten auf rein qualitativen Mikrobiologie-Profilen, wo eine Zahl keinen Befund darstellen würde. Referenzbereiche und Specimen-Verknüpfungen gehören ausdrücklich **nicht mehr** in diese Gruppe: Sie sind mit plausiblen Werten befüllt, auch ohne Literaturquelle.
3. **Nicht verifizierbare Terminologie** — wo kein belastbarer Code existiert, kommt kein geratener in die Testdaten. Das betrifft vor allem Soll- und Prozent-vom-Soll-Werte: Weder LOINC noch SNOMED kennen ein Sollwert-Konzept für Atemfrequenz oder Hämoglobin, und *Prozent vom Soll* existiert für die Bodyplethysmographie-Größen in keinem der drei geprüften Codesysteme.
4. **Messgrenzen** — Extensions auf Primitiven (`_effectiveDateTime` und ähnliche) erkennt die Heuristik nur teilweise; die Daten sind dort weitgehend vorhanden.

Ein Zeuge genügt. Der maschinenlesbare Abdeckungsindex (`docs/ms-coverage-index.json` im Repository) benennt die Instanzen, die jedes MS-Element belegen, und dient als Regressionsradar, wenn Testdaten umgebaut werden.

### Wo noch nichts geschrieben wurde

Die Ansicht unten listet jeden Must-Support-Knoten ohne belegende Instanz. Ein Klick auf einen Modulbalken filtert die Tabelle; das Suchfeld durchsucht Element, Profil und Modul.

Entscheidend ist die Unterscheidung in der Statusspalte. **Befüllbar** heißt: Das Profil lässt die Befüllung zu, nur die Instanz fehlt. **Blockiert** heißt: Das Profil selbst verhindert sie — weil es einen Wert verlangt und zugleich `dataAbsentReason` als Must-Support markiert (obs-6 schließt beides aus), weil ein Element trotz Must-Support auf `max=0` steht oder weil ein Platzhaltercode (`TODO`) als Pattern fixiert ist. Diese Fälle sind in den [Ballot-Befunden](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ballot-findings-2027.md) dokumentiert und an die Modulverantwortlichen adressiert.

{% include ms-luecken-de.html %}

### Ein Validierungsergebnis lesen

Zwei Bedingungen entscheiden, was ein Validierungslauf bedeutet, und beide sind leicht falsch zu verstehen.

**Welcher Terminologieserver verwendet wurde.** Kontraintuitiv ist ein *unvollständiger*
Terminologieserver schlechter als gar keiner. Ohne Server erzeugen unbekannte Codesysteme
Warnungen; mit Server werden daraus harte Fehler. Gemessen an vier Bundles: 185 Fehler mit
`-tx n/a` gegenüber 382 mit einem Server, der nur LOINC und SNOMED kennt. Von den 2.266
Required-Bindings in der BOM zeigen nur 73 auf BfArM-Systeme (OPS, ICD-10-GM, ATC, Alpha-ID,
ICD-O-3) — aber das sind die Achsen, auf denen Testdaten am dichtesten kodieren, sodass jede
Diagnose, Prozedur und Medikation auf einen Schlag zum Fehler wird.

**Wie viele Fehler zu den Daten gehören.** Ein großer Teil nicht. Die 132 Slicing-Fehler auf
den ICU-Score-Profilen sind mit und ohne Terminologieserver byte-identisch: Die Profile slicen
`Observation.component` auf einen Diskriminator, für den kein Slice ein Pattern definiert.
Keine Instanz kann das erfüllen, und es ist zugleich das, was den Validator beim Zusammenbauen
seiner Slicing-Zusammenfassung in einen `OutOfMemoryError` treibt.

Eine nackte Fehlerzahl sagt also wenig. Die Zahl, die es zu berichten lohnt, ist, wie viele
Fehler übrig bleiben, nachdem Terminologiebedingungen von strukturellen Defekten in den Profilen
getrennt sind — und diese Defekte sind als [Ballot-Befunde](https://github.com/medizininformatik-initiative/mii-testdata/blob/main/docs/ballot-findings-2027.md) eingereicht.

### Grenzen und nächste Schritte

Die MS-Messung ist heuristisch (Basispfad-Abgleich, Extension-Slices über ihre URL; Details im Docstring des Skripts). Die Invariantenabdeckung ist **kuratiert**, nicht gemessen — jeden Constraint in FHIRPath gegen alle Instanzen auszuwerten, inklusive Zweigerkennung, ist der nächste Schritt.
