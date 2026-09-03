# mii-testdata: 2026.0.x Dependency Upgrade Error Analysis

Stand: 2026-02-02

## Kontext

Beim Upgrade aller KDS-Modul-Abhaengigkeiten in `kds-testdata/sushi-config.yaml` von `2025.0.x` auf `2026.0.x` treten **178 SUSHI-Errors** auf (bei 365 generierten Instanzen, 0 Warnings).

### Aenderungen an sushi-config.yaml

| Aenderung | Alt | Neu |
|-----------|-----|-----|
| person, diagnose, prozedur, fall | 4 separate Pakete (2025.0.x) | `base` (2026.0.x) - zusammengefuehrt |
| medikation, laborbefund, biobank, consent, meta, icu, molgen, patho, studie, bildgebung | 2025.0.x | 2026.0.x |
| mikrobiologie | 2025.0.x | 2025.0.x (kein 2026-Release verfuegbar) |
| onkologie | nicht vorhanden | 2026.0.x (neu hinzugefuegt) |

## Error-Uebersicht (178 gesamt)

### 1. Missing Snapshots (55 Errors)

Einige 2026.0.x-Pakete liefern StructureDefinitions ohne Snapshot aus. SUSHI benoetigt den Snapshot fuer den Import.

| Profil | Paket | Anzahl |
|--------|-------|--------|
| `ObservationLab` | laborbefund 2026.0.0 | 34 |
| `mii-pr-consent-einwilligung` | consent 2026.0.0 | 20 |
| `mii-pr-studie-beteiligte-person` | studie 2026.0.x | 1 |

**Fix**: Pakete muessen mit Snapshot neu gebaut werden (upstream-Issue).

### 2. Laborbefund: Umbenannte Slices (20 Errors)

Die Slice-Namen auf `category.coding` wurden in laborbefund 2026.0.0 geaendert.

| Alter Slice-Name | Errors | Betroffene Dateien |
|------------------|--------|--------------------|
| `category.coding[loinc-lab]` | 10 | modul-labor/Observation.fsh |
| `category.coding[diagnostic-service-sections]` | 10 | modul-labor/Observation.fsh |

**Fix**: Slice-Namen in Testdaten aktualisieren. Neue Namen aus `laborbefund#2026.0.0` StructureDefinition ablesen.

### 3. Biobank: Specimen Container Cardinality (39 Errors)

In biobank 2026.0.x hat `Specimen.container` die minimale Kardinalitaet 1..* und `container.capacity.unit` / `container.specimenQuantity.unit` sind ebenfalls 1..1.

| Error | Anzahl |
|-------|--------|
| `Specimen.container` min 1, occurs 0 | 3 |
| `Specimen.container.capacity.unit` min 1, occurs 0 | 18 |
| `Specimen.container.specimenQuantity.unit` min 1, occurs 0 | 18 |

**Fix**: Alle Specimen-Instanzen um `container` mit `capacity.unit` und `specimenQuantity.unit` ergaenzen.

### 4. Molgen: Umbenannte Slices und Profile (42 Errors)

Mehrere Slice-Pfade und Profil-URLs wurden in molgen 2026.0.x geaendert.

#### 4a. Profil-URL-Aenderung (20 Errors)

`InstanceOf` Referenz auf `untersuchte-region` nicht gefunden:
```
InstanceOf https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/untersuchte-region not found
```

Ebenso `ergebnis-zusammenfassung`:
```
InstanceOf https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/ergebnis-zusammenfassung not found
```

**Fix**: Profil-URLs / Aliasse in Testdaten aktualisieren.

#### 4b. Umbenannte Slices/Pfade (22 Errors)

| Pfad (alt) | Errors |
|------------|--------|
| `result[region-studied]` | 2 + 17 (indexed) |
| `result[tumor-mutation-burden]` | 1 |
| `result[overall]` | 1 |
| `result[microsatellite-instability]` | 1 |
| `component[protein-hgvs]` | 2+1 |
| `component[coding-hgvs]` | 2+1 |
| `component[amino-acid-change-type]` | 2+1 |
| `component[transcript-ref-seq]` | 1 |
| `component[functional-effect]` | 1 |
| `component[conclusion-string]` | 2 |

**Fix**: Alle Slice-Namen aus `molgen#2026.0.x` StructureDefinitions ablesen und in Testdaten aktualisieren.

### 5. Bildgebung (4 Errors)

| Error | Anzahl |
|-------|--------|
| Missing snapshot: `mii-pr-bildgebung-radiologischer-befund` | 1 |
| Missing snapshot: `mii-pr-bildgebung-radiologische-beobachtung` | 1 |
| `extension[bodyStructure].valueReference` not found | 1 |
| `extension[supportingInfo].*` not found | 1 |

**Fix**: Snapshot-Issue upstream, Extension-Pfade in Testdaten aktualisieren.

### 6. Sonstige (2 Errors)

| Error | Modul |
|-------|-------|
| `MedicationAdministration.dosage.dose.system` min 1, occurs 0 | medikation |
| `Composition.section.entry` / `section[diagRep].entry` min 1, occurs 0 | semistrukt |
| Assign conflict: "Imaging report" | bildgebung |

## Betroffene Module

| Modul | Errors | Typ |
|-------|--------|-----|
| laborbefund | 54 | Snapshot + Slice-Rename |
| molgen | 42 | Profil-URL + Slice-Rename |
| biobank | 39 | Cardinality |
| consent | 20 | Snapshot |
| bildgebung | 4 | Snapshot + Extension-Pfade |
| medikation | 1 | Cardinality |
| studie | 1 | Snapshot |
| semistrukt | 2 | Cardinality |
| **onkologie** | **0** | - |

## Empfohlene Vorgehensweise

1. **Separater Branch** `chore/upgrade-2026-deps` von `main` erstellen
2. `sushi-config.yaml` aktualisieren (person/diagnose/prozedur/fall → base, alle auf 2026.0.x)
3. Testdaten-Fixes pro Modul durchfuehren:
   - **laborbefund**: Slice-Namen aktualisieren (loinc-lab, diagnostic-service-sections)
   - **biobank**: Specimen.container mit unit-Werten ergaenzen
   - **molgen**: Profil-URLs und Slice-Namen aktualisieren
   - **bildgebung**: Extension-Pfade aktualisieren
   - **medikation**: dosage.dose.system ergaenzen
   - **semistrukt**: section.entry ergaenzen
4. Snapshot-Errors als upstream-Issues tracken (laborbefund, consent, studie, bildgebung)
5. SUSHI erneut ausfuehren und verifizieren
6. Onkologie-Testdaten-Branch (`feature/add-onkologie-testdata`) auf den neuen Branch rebasen
