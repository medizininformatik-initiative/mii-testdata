# Research Report: Soziodemographie Module

## Module Metadata

- **Package**: `de.medizininformatikinitiative.kerndatensatz.soziodemographie`
- **Version**: `2027.0.0-ballot` (eingebettet in `de.medizininformatikinitiative.kerndatensatz.complete#2027.0.0-ballot.19`)
- **Canonical**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-soziodemographie`
- **FHIR Version**: 4.0.1
- **Eigene Terminologie**: 12 CodeSysteme / 11 ValueSets (`mii-cs-sdd-*` / `mii-vs-sdd-*`)

### Testdata Project Integration

Conformance-Ressourcen über die BOM `de.medizininformatikinitiative.kerndatensatz.complete` (sushi-config.yaml). Testdaten in `kds-testdata/input/fsh/modul-soziodemographie/`, Bundle: `mii-exa-test-data-bundle-soziodemographie-1`. Modul-lokale Aliases in `SddAliases.fsh` (inkl. gemeinsamem RuleSet `SddObservationBase`).

---

## Profile Inventory (16 Profile + 1 Logical Model)

Alle Profile sind Observations. Struktur: `mii-pr-sdd-datenerhebung` ist die Klammer-Observation (Erhebungszeitpunkt/-methode, `hasMember`-Slices auf alle Einzel-Observations); `mii-pr-sdd-lebenssituation` (**abstract**) und `mii-pr-sdd-soziooekonomische-faktoren` sind Basen der Einzelprofile.

| # | Profil | Code | Wert | Instanz |
|---|--------|------|------|---------|
| 1 | mii-pr-sdd-datenerhebung | LOINC 45970-1 + SCT 302147001 | — (`value[x] 0..0`, `method` 1..1 Erhebungsmethode) | `...-datenerhebung-1` |
| 2 | mii-pr-sdd-lebenssituation | — | — | **abstract → keine Instanz möglich** |
| 3 | mii-pr-sdd-geburtsland-mutter | LOINC 63515-1 | CC iso3166 (extensible) | `...-geburtsland-mutter-1` (PL) |
| 4 | mii-pr-sdd-geburtsland-vater | LOINC 63492-3 | CC iso3166 | `...-geburtsland-vater-1` (DE) |
| 5 | mii-pr-sdd-partnerschaft | SCT 224083004 | CC v2-0136 Y/N (required) | `...-partnerschaft-1` (Y) |
| 6 | mii-pr-sdd-vertrauensperson | SCT 445091000124106 | CC v2-0136 Y/N | `...-vertrauensperson-1` (Y) |
| 7 | mii-pr-sdd-haushaltsgroesse | LOINC 86639-2 | Quantity 1..1 | `...-haushaltsgroesse-1` (2 Personen) |
| 8 | mii-pr-sdd-betreuungssituation | SCT 305060004 | CC mii-vs-sdd-betreuungssituation | `...-betreuungssituation-1` (#2) |
| 9 | mii-pr-sdd-schwerbehindertenausweis | LOINC 101720-1 | CC v2-0136 + Components | `...-schwerbehindertenausweis-1` |
| 10 | mii-pr-sdd-soziooekonomische-faktoren | frei (SCT 302147001 wie Package-Beispiel) | optional | `...-soziooekonomische-faktoren-1` |
| 11 | mii-pr-sdd-ausbildung | LOINC 82589-3 | CC mii-vs-sdd-ausbildung | `...-ausbildung-1` (#3 Lehre) |
| 12 | mii-pr-sdd-beschaeftigungsstatus | LOINC 67875-5 | CC, Coding-Slices lang/minimal (1..1) | `...-beschaeftigungsstatus-1` (lang #7), `-2` (minimal #3) |
| 13 | mii-pr-sdd-berufliche-stellung | LOINC 67875-5 | CC, Coding-Slices lang/minimal (1..1) | `...-berufliche-stellung-1` (lang #5), `-2` (minimal #3) |
| 14 | mii-pr-sdd-einkommen | LOINC 98161-3 | CC mii-vs-sdd-einkommen | `...-einkommen-1` (#2000-3000) |
| 15 | mii-pr-sdd-schulabschluss | SCT 276031006 | CC mii-vs-sdd-schulabschluss | `...-schulabschluss-1` (#5 Realschule) |
| 16 | mii-pr-sdd-schuljahre | LOINC 82590-1 | Quantity 1..1 | `...-schuljahre-1` (10 Jahre) |
| - | mii-lm-sdd (Logical Model) | — | — | kein Instanziierungs-Ziel |

## MS-Elemente und Abdeckung

Gemeinsame MS-Basis aller Profile: `meta.profile` (via SUSHI `setMetaProfile: always`), `status` (final), `category` 2..* mit Slices `social-history` + `survey` (Pattern), `subject` 1..1, `effective[x]` 1..1 (dateTime) — über RuleSet `SddObservationBase` in jeder Instanz.

Profilspezifische MS:

- **Datenerhebung**: `identifier` 1.. (Charité-System), `method` 1..1 (required Binding `mii-vs-sdd-erhebungsmethode`, `selbstauskunft`), alle 13 `hasMember`-Slices (je 0..1, per targetProfile diskriminiert) → alle mit je einer Referenz belegt.
- **Beschäftigungsstatus / Berufliche Stellung**: `value.coding` ist 1..1 mit zwei MS-Slices `lang`/`minimal` — beide Slices können nie in derselben Instanz liegen, daher je eine zweite Instanz (`-2`) mit dem minimal-Coding. Die `-2`-Instanzen hängen **nicht** an der Datenerhebung (hasMember-Slices sind 0..1; eine zweite Referenz desselben Profils würde die Kardinalität verletzen), sind aber im Bundle enthalten.
- **Schwerbehindertenausweis**: MS-Components `gradDerBehinderung` (60 %, Pattern unit `%`/UCUM), `merkzeichen` (G), `gueltigVon`, `gueltigBis` — Component-Codes füllt SUSHI aus den Pattern-Codings der Slices.
- **value.text**: MS bei Ausbildung, Beschäftigungsstatus, Schulabschluss, Betreuungssituation → jeweils mit deutschem Freitext belegt.

## Klinisches Szenario

Patientin Renate Beispielmann (\*1958), Rentnerin: Selbstauskunft am 2025-05-12. Mutter in Polen, Vater in Deutschland geboren; verheiratet (Partnerschaft Y, Vertrauensperson Ehemann, 2-Personen-Haushalt); Betreuung auf Anfrage (Hausnotruf); Schwerbehindertenausweis GdB 60, Merkzeichen G, gültig 2022-08-01 bis 2027-07-31; Realschulabschluss (10 Schuljahre), Lehre, zuletzt Angestellte, jetzt Rente; Haushaltsnettoeinkommen 2.000–3.000 €.

## Entscheidungen

1. **Ja/Nein-Kodierung mit `v2-0136`** (CodeSystem `http://terminology.hl7.org/CodeSystem/v2-0136`, Code `Y`) statt `v2-0532` wie in den Package-Beispielen: Das required Binding der Profile zeigt auf das ValueSet `http://terminology.hl7.org/ValueSet/v2-0136`, dessen Codes aus dem CodeSystem v2-0136 stammen — die Package-Beispiele (v2-0532) würden das required Binding verletzen.
2. **`mii-pr-sdd-lebenssituation` nicht instanziiert**: `abstract: true` — Abdeckung erfolgt vollständig über die sechs abgeleiteten Profile.
3. **Kein Encounter**: Kein Profil des Moduls referenziert einen Encounter, nur `subject` (Patient).
4. **UCUM-Code `1`** (unity) für Haushaltsgröße/Schuljahre analog zu den Package-Beispielen.
5. Ländercodes ohne Display (ISO-3166-Displays englisch), stattdessen deutscher `value.text` („Polen“, „Deutschland“).
