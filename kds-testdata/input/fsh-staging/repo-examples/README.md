# Staging: FSH-Examples aus den Modul-Repos

Geerntet mit `scripts/harvest-repo-examples.py` von den **Ballot-Tags** der
Modul-Repos (Onkologie, MTB, MolGen v2027.0.0-ballot.1; Seltene
v2027.0.0-ballot) — diese Module pflegen ihre Examples als FSH im Repo,
liefern sie aber nicht im Package aus. 785 Instanzen; $-Aliases inline
aufgelöst, per `insert` genutzte RuleSets mitkopiert, Definitional-Instanzen
(CapabilityStatements etc.) und Duplikate verworfen.

**Erkenntnis aus der Ernte:** Die Module definieren Instanzen teils doppelt
(standalone und nochmal im Bundle-File). Konvention hier: Instanzen einmal
definieren, Bundles referenzieren nur — beim Integrieren der Modul-Bundles
auf eingebettete Kopien prüfen.

**Workflow je Modul:** Ordner nach `input/fsh/repo-examples/<modul>/`
verschieben, `sushi build .`, Fehler abarbeiten, dann in die regulären
`modul-*`-Ordner integrieren.

## SUSHI-Fehler je Modul bei Probe-Integration (Baseline: 1)

### onkologie (46)
- 10× Alias `v-ucum` unaufgelöst (stammt nicht aus input/fsh des Moduls — in aliases.fsh ergänzen)
- 8× `Observation.value[x].coding:uicc.code` 1..1 unbefüllt (UICC-Slices ohne Code)
- 4× Referenz auf CodeSystem-URL statt Instanz (`http://fhir.de/CodeSystem/bfarm/ops`)
- Rest: einzelne Slice-/Pflichtfeld-Lücken

### mtb (201)
- 75× `MedicationStatement.dosage.doseAndRate.dose[x]:doseQuantity.system` 1..1 unbefüllt
- 56× parametrisierte RuleSet `Example_Header` — textuelle Kopie parst nicht, RuleSet manuell übernehmen oder Header-Zeilen ausrollen
- 41× Alias `v-ucum` unaufgelöst
- 4× Referenzen auf nicht existierende `PatientKimMusterperson-Procedure-*`

### molgen (166)
- 64× Extension-Pfade existieren im 2027-Profil nicht mehr (`extension[regions].extension[studied]`, `extension[device].extension[device]`) — echte Drift zwischen Repo-Examples und Ballot-Profil
- Rest: Folge-/Einzelfehler

### seltene (49)
- 20× Alias `condition-assertedDate` unaufgelöst + 20× Folgefehler `Condition.extension.url`
- 5× Alias `v-ucum`
- 1× Parse-Fehler (Regel ohne `*`)

Die unaufgelösten Aliases (`v-ucum`, `condition-assertedDate`) sind in den
Modul-Repos außerhalb von `input/fsh` definiert (Template-/Shared-Ebene) —
einmalig in die hiesige `aliases.fsh` aufnehmen, dann verschwinden die
Folgefehler.
