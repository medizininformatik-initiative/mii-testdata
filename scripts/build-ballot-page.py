#!/usr/bin/env python3
"""Erzeugt die Prüfseite für die Ballot-Kommentare aus der Einreichungs-CSV.

Die Beschreibungen werden NICHT abgetippt, sondern aus docs/ballot-kommentare-2027.csv
gelesen — damit die Seite und die einzureichende Datei nicht auseinanderlaufen können.
Nur die Einordnung (Module, Belegart, Anmerkung) steht hier.
"""
import csv, html, json, sys

CSV = "docs/ballot-kommentare-2027.csv"
OUT = sys.argv[1] if len(sys.argv) > 1 else "ballot-review.html"

# Einordnung je Kommentar, in der Reihenfolge der CSV.
#   beleg: gemessen | strukturell | fachlich
#   pruefen: Anmerkung, wenn ich vor dem Einreichen einen Blick empfehle
META = [
    dict(module=["Bildgebung"], beleg="strukturell",
         kurz="Ein Profil, aus der Spezifikation heraus nachweisbar"),
    dict(module=["Medikation"], beleg="fachlich",
         kurz="Harmonisierungs-Vorschlag, kein Validierungsfehler",
         pruefen="Der einzige Kommentar, der keinen Defekt meldet, sondern eine "
                 "Angleichung vorschlägt. Nichts daran ist falsch — aber er wird "
                 "anders beantwortet werden als die übrigen zwölf, und wenn das "
                 "Gremium nach Fehlern sortiert, steht er womöglich am falschen "
                 "Platz. Überlegen Sie, ob er als eigener Änderungsantrag besser "
                 "aufgehoben ist."),
    dict(module=["Mikrobiologie", "Bildgebung", "Kardiologie"], beleg="gemessen",
         kurz="159 Must-Support-Knoten gezählt",
         pruefen="Hier ist eine Antwort der Art „das ist erwartetes "
                 "Snapshot-Verhalten“ realistisch — geerbte Slices bleiben in FHIR "
                 "nun einmal stehen. Der Kommentar hält dem stand, weil er den "
                 "Schaden zeigt statt nur die Regel, stützt sich dabei aber auf "
                 "unseren eigenen Fehler (14 Beispielinstanzen mit unzulässigem "
                 "Typ). Das ist ehrlich und wirksam, macht uns aber angreifbar. "
                 "Ihre Entscheidung, ob das drin bleibt."),
    dict(module=["Lungenfunktion", "ICU"], beleg="gemessen",
         kurz="62 Elemente in 21 Profilen, nach Code-System aufgeschlüsselt"),
    dict(module=["Lungenfunktion"], beleg="gemessen",
         kurz="Vier Profile, Faktor 10⁹ beim Gewicht",
         pruefen="Mit 2705 Zeichen der längste Kommentar, und das letzte Drittel "
                 "verlässt die Sachebene: „eine nichtssagende Beschreibung“ und "
                 "„keinen einzigen eingehenden Profilverweis“ sind Urteile über "
                 "Arbeitsqualität, keine Defekte. Der Befund selbst — Mikrogramm "
                 "statt Kilogramm — ist so stark, dass er das nicht braucht. Ich "
                 "würde den Teil ab „mii-pr-lungenfunktion-gewicht hat zudem“ "
                 "streichen."),
    dict(module=["ICU"], beleg="strukturell",
         kurz="Geschlossenes Slicing ohne Slices, aus dem Profil ablesbar"),
    dict(module=["ICU"], beleg="gemessen",
         kurz="132 Fehler über vier Bundles, mit und ohne Terminologieserver gleich",
         pruefen="Die Randnotiz zum OutOfMemoryError und den 14 GB Heap ist wahr "
                 "und für das Gremium relevant — sie zeigt, dass der Defekt über "
                 "das einzelne Profil hinaus wirkt. Sie ist aber auch eine Aussage "
                 "über unsere CI. Falls Sie den Kommentar schlank halten wollen, "
                 "ist das die Stelle."),
    dict(module=["ICU"], beleg="gemessen",
         kurz="Beide Richtungen geprüft: SUSHI bricht ab, der Validator meldet"),
    dict(module=["ICU"], beleg="gemessen",
         kurz="Drei Widersprüche, alle drei in den Testdaten angelaufen"),
    dict(module=["ICU"], beleg="strukturell",
         kurz="Drei Validator-Meldungen wörtlich zitiert"),
    dict(module=["Lungenfunktion"], beleg="strukturell",
         kurz="Diskriminatortyp kann die Slices grundsätzlich nicht trennen"),
    dict(module=["Kardiologie"], beleg="gemessen",
         kurz="Vier-Felder-Probe, 98 % der Laufzeit des Vollaufs",
         neu=True),
]

BELEG_TEXT = {
    "gemessen": "gemessen",
    "strukturell": "strukturell",
    "fachlich": "fachlich",
}
BELEG_TITEL = {
    "gemessen": "Mit Zahlen belegt — Validatorlauf, Zählung oder Zeitmessung.",
    "strukturell": "Aus dem Profil selbst nachweisbar, ohne Messung.",
    "fachlich": "Eine fachliche Einschätzung, kein nachweisbarer Defekt.",
}


def absaetze(text):
    """Die CSV führt eine Beschreibung als einen Block. Am Satzanfang 'Vorschlag:'
    beginnt sichtbar ein neuer Gedanke — der bekommt einen eigenen Absatz."""
    teile, rest = [], text
    for marker in ("Vorschlag fuer diesen Fall konkret:", "Vorschlag:"):
        if marker in rest:
            kopf, _, schwanz = rest.partition(marker)
            if kopf.strip():
                teile.append(("text", kopf.strip()))
            teile.append(("vorschlag", marker + schwanz.strip()[len(marker):]))
            rest = ""
            break
    if rest.strip():
        teile.append(("text", rest.strip()))
    return teile


def main():
    rows = list(csv.reader(open(CSV, encoding="utf-8"), delimiter=";"))[1:]
    if len(rows) != len(META):
        sys.exit(f"CSV hat {len(rows)} Kommentare, META {len(META)} — bitte angleichen.")

    module, belege, zu_pruefen = {}, {}, 0
    for r, m in zip(rows, META):
        for mod in m["module"]:
            module[mod] = module.get(mod, 0) + 1
        belege[m["beleg"]] = belege.get(m["beleg"], 0) + 1
        if m.get("pruefen"):
            zu_pruefen += 1

    T = []
    A = T.append
    A('<title>Ballot-Kommentare 2027</title>')
    A('<link rel="preconnect" href="https://fonts.googleapis.com">')
    A('<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>')
    A('<link rel="stylesheet" href="https://fonts.googleapis.com/css2?'
      'family=Newsreader:ital,opsz,wght@0,6..72,400;0,6..72,600;1,6..72,400&'
      'family=Public+Sans:ital,wght@0,400;0,500;0,700;1,400&'
      'family=IBM+Plex+Mono:wght@400;500&display=swap">')
    A(f"<style>{CSS}</style>")

    A('<div class="wrap">')
    A('<header class="kopf">')
    A('<p class="eyebrow">MII Kerndatensatz · Ballot 2027</p>')
    ZAHLWORT = {10: "Zehn", 11: "Elf", 12: "Zwölf", 13: "Dreizehn",
                14: "Vierzehn", 15: "Fünfzehn"}
    A(f'<h1>{ZAHLWORT.get(len(rows), str(len(rows)))} Kommentare, '
      f'vor der Einreichung</h1>')
    A('<p class="lede">Der Wortlaut auf dieser Seite ist der Wortlaut, der eingereicht wird — '
      'er wird beim Erzeugen aus <code>docs/ballot-kommentare-2027.csv</code> gelesen, damit '
      'Prüfseite und Einreichungsdatei nicht auseinanderlaufen können. Was hier hinzukommt, '
      'ist die Einordnung: woher der Beleg stammt, und wo ich vor dem Absenden einen Blick '
      'empfehle.</p>')

    A('<dl class="kennzahlen">')
    for wert, label in ((len(rows), "Kommentare"),
                        (belege.get("gemessen", 0), "mit Zahlen belegt"),
                        (belege.get("strukturell", 0), "strukturell ablesbar"),
                        (zu_pruefen, "mit Anmerkung")):
        A(f'<div><dt>{wert}</dt><dd>{label}</dd></div>')
    A('</dl>')

    A('<p class="module-zeile"><span class="label">Module</span> ')
    A(" ".join(f'<span class="chip">{html.escape(k)}<span class="n">{v}</span></span>'
               for k, v in sorted(module.items(), key=lambda x: (-x[1], x[0]))))
    A('</p>')

    A('<aside class="abzweig">')
    A('<p class="a-kopf">Nicht mehr auf dieser Liste</p>')
    A('<p>Der Befund zu <strong>Must-Support-<code>dataAbsentReason</code> neben '
      '<code>value[x] 1..1</code></strong> stand hier als Kommentar 1 und geht '
      'stattdessen als drei Modul-Tickets heraus: ICU (27 Profile, 45 Knoten), '
      'Soziodemographie (4/4) und Mikrobiologie (1/1). Ein Sammelkommentar über drei '
      'Module bedeutet in jedem eine andere Korrektur und wird darum von keiner '
      'Redaktion ganz gelesen. Der Wortlaut steht in '
      '<code>docs/tickets-2027.md</code>.</p>')
    A('</aside>')
    A('</header>')

    A('<main>')
    for i, (r, m) in enumerate(zip(rows, META), 1):
        summary, desc = r[0], r[1]
        neu = ' <span class="neu">neu</span>' if m.get("neu") else ""
        A(f'<article class="k" id="k{i}">')
        A('<div class="k-kopf">')
        A(f'<span class="nr">{i:02d}</span>')
        A('<div>')
        A(f'<h2>{html.escape(summary)}{neu}</h2>')
        A('<p class="meta">')
        A(" ".join(f'<span class="mod">{html.escape(x)}</span>' for x in m["module"]))
        A(f'<span class="beleg b-{m["beleg"]}" title="{html.escape(BELEG_TITEL[m["beleg"]])}">'
          f'{BELEG_TEXT[m["beleg"]]}</span>')
        A(f'<span class="kurz">{html.escape(m["kurz"])}</span>')
        A('</p>')
        A('</div></div>')

        A('<div class="text">')
        for art, stueck in absaetze(desc):
            klasse = ' class="vorschlag"' if art == "vorschlag" else ""
            A(f'<p{klasse}>{html.escape(stueck)}</p>')
        A('</div>')

        if m.get("pruefen"):
            A('<aside class="anmerkung">')
            A('<p class="a-kopf">Vor dem Einreichen ansehen</p>')
            A(f'<p>{html.escape(m["pruefen"])}</p>')
            A('</aside>')
        A('</article>')
    A('</main>')

    A('<footer><p>Erzeugt aus <code>docs/ballot-kommentare-2027.csv</code>. '
      'Die ausführlichen Befunde mit Reproduktionsanleitung stehen in '
      '<code>docs/ballot-findings-2027.md</code>.</p></footer>')
    A('</div>')

    open(OUT, "w", encoding="utf-8").write("\n".join(T))
    print(f"{OUT} geschrieben — {len(rows)} Kommentare, {zu_pruefen} mit Anmerkung")


CSS = """
:root{
  --ground:#f6f7f9; --paper:#ffffff; --ink:#151d26; --ink-weich:#53616f;
  --linie:#dde3ea; --linie-fein:#eaeef3;
  --akzent:#1c6b74; --akzent-weich:#e3f0f0;
  --flagge:#9a5a0b; --flagge-weich:#fbf1e2;
  --schatten:0 1px 2px rgba(21,29,38,.05), 0 8px 24px -16px rgba(21,29,38,.18);
}
@media (prefers-color-scheme: dark){
  :root:not([data-theme="light"]){
    --ground:#12171d; --paper:#181f27; --ink:#e4e9ee; --ink-weich:#93a1b0;
    --linie:#2a343f; --linie-fein:#212a33;
    --akzent:#6fc2c6; --akzent-weich:#173234;
    --flagge:#e0a558; --flagge-weich:#2f2517;
    --schatten:0 1px 2px rgba(0,0,0,.3), 0 8px 24px -16px rgba(0,0,0,.6);
  }
}
:root[data-theme="dark"]{
  --ground:#12171d; --paper:#181f27; --ink:#e4e9ee; --ink-weich:#93a1b0;
  --linie:#2a343f; --linie-fein:#212a33;
  --akzent:#6fc2c6; --akzent-weich:#173234;
  --flagge:#e0a558; --flagge-weich:#2f2517;
  --schatten:0 1px 2px rgba(0,0,0,.3), 0 8px 24px -16px rgba(0,0,0,.6);
}
*{box-sizing:border-box}
body{
  margin:0; background:var(--ground); color:var(--ink);
  font-family:"Public Sans",-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;
  font-size:16px; line-height:1.62; -webkit-font-smoothing:antialiased;
}
.wrap{max-width:52rem; margin:0 auto; padding:clamp(1.5rem,4vw,4rem) clamp(1rem,4vw,2rem) 5rem}
code{font-family:"IBM Plex Mono",ui-monospace,SFMono-Regular,Menlo,monospace; font-size:.88em}

.kopf{border-bottom:2px solid var(--ink); padding-bottom:2rem; margin-bottom:3rem}
.eyebrow{
  font-size:.75rem; letter-spacing:.1em; text-transform:uppercase;
  color:var(--ink-weich); margin:0 0 1rem; font-weight:500;
}
h1{
  font-family:"Newsreader",Georgia,serif; font-weight:600;
  font-size:clamp(2rem,5vw,3rem); line-height:1.12; letter-spacing:-.015em;
  margin:0 0 1.25rem; text-wrap:balance;
}
.lede{margin:0 0 2rem; color:var(--ink-weich); max-width:42rem; font-size:1.02rem}

.kennzahlen{
  display:grid; grid-template-columns:repeat(auto-fit,minmax(9rem,1fr));
  gap:1px; background:var(--linie); border:1px solid var(--linie);
  margin:0 0 1.75rem; padding:0;
}
.kennzahlen>div{background:var(--paper); padding:1rem 1.15rem}
.kennzahlen dt{
  font-family:"Newsreader",Georgia,serif; font-size:2rem; font-weight:600;
  line-height:1; font-variant-numeric:tabular-nums; color:var(--akzent);
}
.kennzahlen dd{margin:.4rem 0 0; font-size:.82rem; color:var(--ink-weich)}

.module-zeile{margin:0; display:flex; flex-wrap:wrap; gap:.4rem; align-items:center}
.module-zeile .label{
  font-size:.72rem; letter-spacing:.08em; text-transform:uppercase;
  color:var(--ink-weich); margin-right:.3rem;
}
.chip{
  display:inline-flex; align-items:center; gap:.4rem; padding:.2rem .55rem;
  border:1px solid var(--linie); background:var(--paper);
  font-size:.8rem; border-radius:2px;
}
.chip .n{
  font-family:"IBM Plex Mono",monospace; font-size:.72rem;
  color:var(--ink-weich); font-variant-numeric:tabular-nums;
}

main{display:flex; flex-direction:column; gap:1.5rem}
.k{
  background:var(--paper); border:1px solid var(--linie);
  box-shadow:var(--schatten); padding:1.6rem clamp(1rem,3vw,2rem) 1.75rem;
}
.k-kopf{display:flex; gap:1rem; align-items:baseline; margin-bottom:1.1rem}
.nr{
  font-family:"IBM Plex Mono",monospace; font-size:.9rem; font-weight:500;
  color:var(--akzent); font-variant-numeric:tabular-nums; flex:0 0 auto;
  padding-top:.15rem;
}
.k h2{
  font-family:"Newsreader",Georgia,serif; font-weight:600;
  font-size:1.3rem; line-height:1.3; margin:0 0 .6rem; text-wrap:balance;
}
.neu{
  font-family:"Public Sans",sans-serif; font-size:.65rem; font-weight:700;
  letter-spacing:.08em; text-transform:uppercase; vertical-align:.25em;
  background:var(--akzent); color:var(--paper); padding:.15rem .4rem;
  border-radius:2px; margin-left:.4rem;
}
.meta{margin:0; display:flex; flex-wrap:wrap; gap:.45rem; align-items:center; font-size:.78rem}
.mod{
  padding:.12rem .45rem; border:1px solid var(--linie);
  color:var(--ink-weich); border-radius:2px;
}
.beleg{
  padding:.12rem .45rem; border-radius:2px; font-weight:500; cursor:help;
  border:1px solid transparent;
}
.b-gemessen{background:var(--akzent-weich); color:var(--akzent); border-color:var(--akzent)}
.b-strukturell{background:transparent; color:var(--ink-weich); border-color:var(--linie)}
.b-fachlich{background:var(--flagge-weich); color:var(--flagge); border-color:var(--flagge)}
.kurz{color:var(--ink-weich); font-style:italic; flex:1 1 14rem; min-width:0}

.text{max-width:44rem}
.text p{margin:0 0 .9rem}
.text p:last-child{margin-bottom:0}
.vorschlag{
  border-left:3px solid var(--akzent); padding:.1rem 0 .1rem .9rem;
  color:var(--ink);
}
.vorschlag::first-line{font-weight:500}

.anmerkung{
  margin:1.4rem 0 0; background:var(--flagge-weich);
  border:1px solid var(--flagge); border-left-width:3px;
  padding:.9rem 1.1rem; max-width:44rem;
}
.abzweig{
  margin:1.75rem 0 0; background:var(--akzent-weich);
  border:1px solid var(--akzent); border-left-width:3px;
  padding:.9rem 1.1rem; max-width:44rem;
}
.abzweig .a-kopf{color:var(--akzent)}
.abzweig p:last-child{margin:0; font-size:.93rem}
.abzweig code{background:transparent}
.a-kopf{
  margin:0 0 .4rem; font-size:.72rem; letter-spacing:.08em;
  text-transform:uppercase; font-weight:700; color:var(--flagge);
}
.anmerkung p{margin:0; font-size:.93rem}

footer{
  margin-top:3rem; padding-top:1.5rem; border-top:1px solid var(--linie);
  color:var(--ink-weich); font-size:.85rem;
}
footer p{margin:0}
@media (max-width:560px){
  .k-kopf{flex-direction:column; gap:.3rem}
  .kurz{flex-basis:100%}
}
"""

if __name__ == "__main__":
    main()
