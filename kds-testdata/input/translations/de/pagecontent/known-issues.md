# Bekannte Probleme

Die Validierung der Testdaten lässt in der CI **917 Fehler** übrig, herunter von **1.883**, bevor die
beiden pfadfreien Regeln unten auch die Bundle-Sicht erreichten. Fast nichts vom Rest sind Defekte in den
Daten: Sie stammen aus den Profilen, gegen die die Daten gebaut sind, und keine konforme Instanz kann sie
vermeiden. Diese Seite benennt, was unterdrückt wird, warum der Rest nicht unterdrückt werden kann, und
was beides beseitigen würde.

Die Zahlen hier sind gemessen, nicht geschätzt — ein Validierungslauf mit `advisor.json` und einer ohne,
beide mit `-tx n/a`, beide ohne Terminologiezertifikat reproduzierbar:

```bash
IGS=$(jq -r '.dependencies|to_entries|map("-ig "+.key+"#"+.value)|join(" ")' kds-testdata/package.json)
RES=kds-testdata/fsh-generated/resources
java -Xmx14g -jar validator_cli.jar $RES/*.json -version 4.0.1 $IGS -ig $RES -tx n/a \
  -output unfiltered.json
java -Xmx14g -jar validator_cli.jar $RES/*.json -version 4.0.1 $IGS -ig $RES -tx n/a \
  -advisor-file kds-testdata/advisor.json -output filtered.json
./scripts/compare-advisor-runs.py unfiltered.json filtered.json
```

`-Xmx14g` ist nicht optional: Mit dem JVM-Standard (ein Viertel des RAM, also 4 GB auf einem
Standard-CI-Runner) stirbt der Validator bei der ersten Ressource mit `OutOfMemoryError`, nach etwa
hundert Sekunden und ohne einen Report zu schreiben. Mit genug Heap braucht der gesamte Satz
**85 Sekunden**.

Ein Vorbehalt zu absoluten Zahlen: Ob ein Terminologie-Cache vorhanden ist, verändert sie. Derselbe
Validator über dieselben Ressourcen meldet 1.887 Fehler auf einem Entwicklerrechner und 1.696 in der CI,
und die Lücke von 191 Fehlern ist vollständig terminologisch — 131 Kommunikationsfehler gegen
`tx.fhir.org` (Socket-Timeouts, eine veraltete `cache-id`), 38 ValueSet-Mitgliedschaftsprüfungen,
16 Display-Prüfungen. Ein lokales `~/.fhir`, das einen Terminologie-Cache trägt, greift selbst unter
`-tx n/a` auf `tx.fhir.org` zu; der frisch geklonte Cache in der CI nicht.

Die strukturellen Klassen sind bis auf die Zahl identisch — `SLICING_CANNOT_BE_EVALUATED` 379/379,
`Validation_VAL_Profile_MatchMultiple` 446/446, `Validation_VAL_Profile_Minimum_SLICE` 232/232. Das ist
die Prämisse, auf der der terminologiefreie Lauf ruht, und sie ist gemessen, nicht angenommen.

Was ein solcher Lauf nicht sehen kann, ist ValueSet-Mitgliedschaft: 38 Codes, die ihr Binding
verletzen, bleiben ohne Server unsichtbar, darunter 26 gegen *MII VS Prozedur Durchführungsabsicht*.
Das ist der Preis einer reproduzierbaren Baseline, und es ist keine Behauptung, die Daten seien
terminologisch sauber. CI-Läufe nur mit CI-Läufen vergleichen; eine Zahl vom Laptop ist eine
Orientierung, nie die Baseline.

Der terminologiefreie Lauf ist die Baseline, weil ihn jeder reproduzieren kann, nicht weil er das ganze
Bild ist. Eine nächtliche Matrix validiert den vollständigen Satz sehr wohl gegen den MII SU-TermServ;
[was sie beisteuert](#was-ein-terminologieserver-beisteuert) und warum sie dafür dreizehn Stunden braucht,
steht unten.

### Zwei Sichten auf dieselben Daten, und sie sind nicht redundant

Bevor man eine Zahl liest, sollte man wissen, was sie zählt. Das Ressourcenverzeichnis enthält sowohl die
Einzelinstanzen als auch die Bundles, die sie enthalten; der Validator sieht also jede Instanz zweimal —
einmal als Datei, einmal als `Bundle.entry[n]`. Die naheliegende Schlussfolgerung wäre, dass die Hälfte
der Fehler Duplikate sind und sich einfach wegfiltern ließe. Gemessen je Meldungsklasse stimmt das nur zur
Hälfte:

| Message-Id | nur als Datei | in beiden Sichten | **nur im Bundle** |
|---|---:|---:|---:|
| `SLICING_CANNOT_BE_EVALUATED` | 0 | 53 | 1 |
| `Terminology_TX_NoValid_12` | 0 | 18 | 0 |
| `_DT_Fixed_Wrong` | 0 | 12 | 0 |
| `Reference_REF_CantMatchChoice` | 2 | 0 | **193** |
| `Validation_VAL_Profile_Minimum_SLICE` | 56 | 10 | **92** |

Für Slicing-, Terminologie- und Fixwert-Befunde ist die Bundle-Sicht tatsächlich eine Wiederholung —
53 von 54 erscheinen in beiden.

Für **Referenzen ist sie die einzige Sicht, die überhaupt etwas sieht**: 193 von 195 Befunden existieren
*nur* im Bundle. Das ist Mechanik, kein Zufall. Eine `Reference(Observation/xy)` löst nur dann zu einem
Ziel auf, wenn das Ziel im selben Bundle sitzt; als Einzeldatei validiert kann der Validator sie nicht
auflösen und prüft deshalb nie das Profil des Ziels. Bundle-Befunde zu filtern würde kein Duplikat
aufräumen — es würde die gesamte Klasse der Referenzdefekte verwerfen, und genau dort zeigen sich die
überlappenden `targetProfile`-Slices. `Validation_VAL_Profile_Minimum_SLICE` teilt sich in beide
Richtungen: 56 Befunde nur als Datei, 92 nur im Bundle.

Die beiden Sichten überlappen also bei strukturellen Befunden und ergänzen sich bei Referenzbefunden.
Beide sind es wert, validiert zu werden, und keine der Zahlen sollte als Anzahl verschiedener Defekte
gelesen werden.

### Warum eine Regel manchmal keinen Pfad hat

`advisor.json` kennt nur `MessageId@FHIRPath`-Paare, und eine Regel mit Pfad erreicht die Datei-Sicht
einer Ressource, aber nie ihre Kopie im Bundle. Der Bundle-Pfad sieht so aus:

```
Bundle.entry[82].resource/*Observation/mii-exa-test-data-patient-1-icu-vent-pip-1*/.result
```

Er trägt den Entry-Index und die Identität der Ressource, sodass kein fester String ihn trifft. Gemessen
an einem Bundle ändert jeder pfadförmige Versuch nichts:

| Regelform | Fehler |
|---|---:|
| `SLICING_CANNOT_BE_EVALUATED@Bundle.entry.resource.component` | 256 (unverändert) |
| `…@Bundle.entry.resource.ofType(Observation).component` | 256 (unverändert) |
| `…@*.component`, `…@**.component`, `…@Bundle.entry[*]…` | 256 (unverändert) |
| `SLICING_CANNOT_BE_EVALUATED` — **nur Message-Id, kein Pfad** | **59** |

Nur das Weglassen des Pfads wirkt, und dann gilt die Regel überall: für jeden Pfad, jede Ressource und
jeden künftigen Befund dieser Klasse. Das ist ein grobes Werkzeug, deshalb wird es für genau zwei
Message-Ids verwendet, gewählt, weil **keine Instanz sie verursachen oder vermeiden kann**:

- `SLICING_CANNOT_BE_EVALUATED` wird ausgegeben, wenn der Validator einen Slicing-Diskriminator nicht
  auswerten kann. Das ist eine Aussage über das Profil; Daten haben darauf keinen Einfluss.
- `Validation_VAL_Profile_MatchMultiple` wird ausgegeben, wenn ein Element auf mehr als einen Slice
  passt. Bei disjunkten Slices kann das nicht passieren, egal was die Daten sagen.

Zwei benachbarte Klassen werden bewusst **nicht** auf diese Weise unterdrückt, und der Grund ist konkret,
nicht theoretisch. `Reference_REF_CantMatchChoice` würde ein tatsächlich falsches Referenzziel neben den
überlappenden `targetProfile`-Defekten verstecken. Und `Validation_VAL_Profile_Minimum_SLICE` hat in
genau diesem Repository einen echten Defekt gefangen — einen fehlenden `category:VSCat`-Slice auf einer
ICU-Observation. Eine pfadfreie Regel auf dieser Id hätte ihn verschluckt.

### Was die Regeln abdecken

| Regel | Betroffene Profile | Ursache |
|---|---|---|
| `SLICING_CANNOT_BE_EVALUATED` *(ohne Pfad)* | `mii-pr-icu-score-sofa`, `-gcs`, `-icdsc`, `mii-pr-mtb-immunohistochemistry-mmr`, `mii-pr-icu-vent-*` und ~30 weitere | Die Profile slicen auf einen `pattern`-Diskriminator, während der Slice am Pfad des Diskriminators kein Pattern definiert — oft weil die Patterns eine Ebene tiefer sitzen, auf `code.coding:loinc`/`:sct`. |
| `Validation_VAL_Profile_MatchMultiple` *(ohne Pfad)* | `mii-pr-lungenfunktion-bodyplethysmographie`, `-diffusion`, `-spirometrie`, `-provokationstest` | Slices, die nicht disjunkt sind: Mehrere tragen dasselbe `targetProfile`, sodass ein Eintrag auf mehr als einen passt. Upstream: [kerndatensatz-lungenfunktion#45](https://github.com/medizininformatik-initiative/kerndatensatz-lungenfunktion/issues/45). |
| `Reference_REF_CantMatchChoice@hasMember`, `@focus`, `@result`, `@derivedFrom` | `mii-pr-lungenfunktion-spirometrie-messung` und andere | Referenz-Slices, deren erlaubte Zielprofile überlappen. Bewusst pfadgebunden belassen — siehe oben. |
| 4 weitere Regeln (Terminologie, Fixwerte) | ImplementationGuide-Parameter, `AdverseEvent.event`, `Procedure`-Extensions | Aus den Testdaten vor 2027 geerbt. |

### Was *nicht* unterdrückt wird

Befunde, die zu den Daten gehören, bleiben sichtbar — und diese wurden behoben statt versteckt:

- **Display-Namen**, die nicht zum Codesystem passten. Die Ursache war Sprache, nicht Nachlässigkeit:
  Der Validator akzeptiert ein Display in der Sprache seines *Kontexts* — `Resource.language` oder,
  wo die Ressource keine trägt, der Default dieses IG (`en`). Deshalb verlangte derselbe Lauf die
  *deutschen* Bezeichnungen für die PHQ-15-Antworten (deren QuestionnaireResponse ist
  `language: de`) und die *englischen* für den Dokumentstatus (gar kein `language`).
  `scripts/check-displays.py` modelliert genau diese Regel und läuft jetzt als Build-Gate, in Sekunden.
- **Questionnaire-Antwortcodes**, die als außerhalb des gebundenen Antwort-ValueSets abgelehnt wurden.
  Das war derselbe Defekt von der anderen Seite — der Terminologiefehler am Display kaskadierte in die
  Optionsprüfung — und verschwand mit der Display-Korrektur.
- **Mime-Typen** und LOINC-Antwortcodes, die nicht auflösbar sind.

#### Ein Fehler, der bleibt und ebenfalls nicht unterdrückt wird

`mii-exa-test-data-patient-1-icu-score-wbf-1` meldet ein falsches Display für
`observation-category#survey` und wird das weiterhin melden.
`mii-pr-icu-score-wong-baker-faces-schmerzskala` pinnt
`Observation.category.coding.display` auf den `patternString` `"Assessment"`, während der Code, den es
bindet, in der HL7-Terminologie `"Survey"` heißt. `Survey` zu schreiben verletzt das Pattern und SUSHI
verweigert den Build; `Assessment` zu schreiben erzeugt den Terminologiefehler. **Es existiert keine
konforme Instanz** — und so wurde der Defekt gefunden: Die korrekte Korrektur brach den Build.

Er ließe sich leicht mit einer Regel stummschalten. Er bleibt bewusst sichtbar: Eine Unterdrückung auf
`Display_Name…@Observation.category.coding.display` würde auch jeden künftigen, echten Display-Fehler
auf diesem Pfad verstecken, und ein benannter Fehler ist mehr wert als eine stille Regel. Als
Ballot-Befund 8 eingereicht.

Ebenso wenig werden die strukturellen Widersprüche unterdrückt, die Abdeckung unmöglich statt nur laut
machen — `dataAbsentReason` als Must-Support neben einem Pflicht-`value[x]`, Elemente auf `max=0` trotz
Must-Support, Platzhaltercodes (`TODO`) als Patterns fixiert. Die erscheinen als *blockiert* auf der Seite
[Testabdeckung](test-coverage.html), wo sie gezählt statt versteckt werden.

### Was ein Terminologieserver beisteuert

Die Baseline oben läuft mit `-tx n/a`, und das war einmal der einzige Lauf. Das ist vorbei: Eine
nächtliche Matrix validiert alle 33 Arbeitspakete gegen den MII SU-TermServ (Ontoserver 6.25.3), und
seit Lauf 36420354901 kommt sie durch — alle 33 Pakete, keine Timeouts. Dieser Lauf meldet
**1.100 Fehler**, gegenüber 917 ohne Server.

Der Unterschied ist nicht einfach „183 mehr“. Rund 520 der 1.100 sind terminologisch — sie können ohne
Server gar nicht entstehen —, und weitere 55 sind Transportfehler, die nur ein Serverlauf erzeugen
kann. Beides lohnt sich nach Ursache zu trennen, denn drei sehr verschiedene Dinge landen in derselben
Liste:

**Befunde in den Daten oder ihren Profilen.** Ein `Coding`, das tatsächlich außerhalb seines Bindings
liegt — etwa `http://snomed.info/sct#368208006` (*Left upper arm structure*, ein völlig reales Konzept),
abgelehnt von *MII VS Biobank BodyStructures SCT*. Das sind die Fehler, für die dieser Lauf existiert.

**Defekte im Tooling, die keine Änderung an den Daten beheben würde.** Zwei große Gruppen:

- 21 Fehler der Form `Unknown code '/nL' in the CodeSystem 'http://unitsofmeasure.org'`.
  `/nL` — pro Nanoliter, die in Deutschland übliche Einheit für Thrombozyten- und Leukozytenzahlen — ist
  gültiges UCUM. Gegen denselben Server gemessen: `/mL`, `/dL` und `/uL` validieren, `/nL`, `/pL` und
  `/fL` nicht, ebenso wenig `/ng` oder `/nm`, obwohl `nL` für sich genommen validiert. Jeder Präfix
  unterhalb von *Mikro* scheitert in der Pro-Form, egal welche Basiseinheit. Das ist ein
  Implementierungsdefekt, keine Einheit, die unsere Daten falsch hätten.
- 41 Fehler der Form `There is no declared filter called LIST on code system http://loinc.org`.
  Ein Profil bindet ein ValueSet, dessen `compose` einen LOINC-`LIST`-Filter verwendet, den der Server
  nicht implementiert. Keine Seite liegt bei den Daten falsch; sie sind sich über einen Filter uneinig.

**Infrastrukturrauschen.** 55 `java.net.SocketTimeoutException: timeout` — der Client gibt eine
Anfrage auf, an der der Server noch arbeitete. Sie sagen nichts über die Ressource aus, an der sie
hängen, und sie sind ein Symptom des Laufzeitproblems unten.

Den Terminologielauf entsprechend lesen: als Liste zum Triagieren, nicht als Zahl zum Minimieren.

### Warum der Terminologielauf dreizehn Stunden braucht

Wegen einer einzigen Ressource, und keiner von uns.

Der Validator hängt jedes geladene Supplement eines Codesystems an *jede* `$validate-code`-Anfrage gegen
dieses Codesystem, als `tx-resource`-Parameter. Ein Supplement in der BOM,
`mii-cs-kardio-supplement-snomedct`, trägt drei SNOMED-postkoordinierte Ausdrücke als `concept.code` und
bindet `supplements` an eine gepinnte SNOMED-Version. Der Server reklassifiziert diese Ausdrücke bei
jeder einzelnen Anfrage, und für eine Inline-Ressource wird das Ergebnis nicht gecacht.

Eine reale Anfrage aus dem Proxy-Log wörtlich nachgespielt und variiert:

| | **mit** Versions-Pin | **ohne** |
|---|---:|---:|
| postkoordinierte Ausdrücke | **59,9 s** | 0,56 s |
| einfache SNOMED-Codes | 0,53 s | 0,53 s |

Ganz ohne den `tx-resource`-Parameter: 0,25 s. Ein Ausdruck genügt — es ist die Klassifikation, nicht
das Volumen. Von den sechs Supplements in der BOM trägt nur dieses beide Eigenschaften.

Über den gesamten Lauf gingen **10,1 von 10,3 Stunden Terminologiewartezeit — 98 % — an 730 solche
Anfragen**; die übrigen 3.293 Anfragen kosteten zusammen zehn Minuten. Jedes Paket mit
SNOMED-gebundenen Ressourcen zahlt das, Mikrobiologie und Lungenfunktion eingeschlossen, nicht nur die
Kardiologie. Die Testdaten selbst enthalten keine postkoordinierten Codes: Alle 1.835 SNOMED-Codings
sind einfache SCTIDs, und keine Ressource hier referenziert dieses Supplement. Es kommt über die
Paketauflösung herein und fährt ungeachtet dessen mit.

Als Befund 11 in `docs/ballot-findings-2027.md` eingereicht, mit zwei Adressaten: dem Modul, um den
Versions-Pin zu entfernen (die anderen fünf MII-Supplements binden unversioniert, was allein den
Faktor 110 ausmacht), und der Service Unit, für einen Cache, der auf den `tx-resource`-Inhalt
schlüsselt.

### Regeln reproduzieren und prüfen

```bash
# Wie sehen die Cluster aus, und auf welchen Profilen?
./scripts/advisor-rules.py validation-unfiltered.json

# Was genau würde eine Regelkandidatin verstecken?
./scripts/advisor-rules.py validation-unfiltered.json \
  --test "SLICING_CANNOT_BE_EVALUATED@Observation.component"
```

Ein Vorbehalt zum Tooling: `advisor-rules.py` modelliert, wie der Validator eine Regel gegen einen
Elementpfad abgleicht — es ist ein Modell, nicht der Validator. Die maßgebliche Zahl ist die Differenz
zweier echter Validierungsläufe, die `compare-advisor-runs.py` aus deren Reports berechnet. Wo die beiden
auseinanderliegen: den Läufen trauen und das Modell korrigieren.
