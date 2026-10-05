#!/usr/bin/env python3
"""build-gap-page.py — interaktive Luecken-Uebersicht als IG-Fragment.

Erzeugt aus `docs/ms-coverage-index.json` und den Profil-Snapshots der BOM ein
selbsttragendes HTML-Fragment fuer `input/includes/`. Die Daten stehen INLINE
im Fragment, nicht in einer separaten JSON-Datei: ein `fetch()` wuerde bei
`file://`-Aufrufen und im heruntergeladenen IG-ZIP scheitern.

Jekyll-Fallen, die hier vermieden werden: keine `{{`- oder `{%`-Sequenzen im
JavaScript (Liquid wuerde sie auswerten), und alle Styles sind auf `.gapv`
gescoped, damit sie nicht mit dem IG-Template kollidieren.

    ./scripts/build-gap-page.py kds-testdata/input/includes/ms-luecken.html
    ./scripts/build-gap-page.py --lang de kds-testdata/input/includes/ms-luecken-de.html

Alle sichtbaren Beschriftungen (Kacheln, Legende, Suche, Tabellenkopf,
Status-Tags, Zaehlzeile) kommen aus STRINGS[lang]; die Daten sind identisch.
"""
import json
import os
import re
import sys
import collections

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..")
BOM = os.path.expanduser(
    "~/.fhir/packages/de.medizininformatikinitiative.kerndatensatz.complete"
    "#2027.0.0-ballot.19/package")
PLACEHOLDER = re.compile(r"(?i)(todo|tbd|x{2,})")


def collect():
    idx = json.load(open(os.path.join(ROOT, "docs", "ms-coverage-index.json"),
                         encoding="utf-8"))
    sdidx = {f.get("url"): f["filename"]
             for f in json.load(open(os.path.join(BOM, ".index.json"),
                                     encoding="utf-8"))["files"]}
    mods = collections.defaultdict(lambda: {"total": 0, "covered": 0,
                                            "feasible": 0, "blocked": 0})
    gaps = []
    for prof, e in idx["profiles"].items():
        els = {}
        fn = sdidx.get(prof)
        if fn:
            try:
                els = {x["id"]: x for x in json.load(
                    open(os.path.join(BOM, fn), encoding="utf-8")
                ).get("snapshot", {}).get("element", [])}
            except (OSError, json.JSONDecodeError):
                pass
        mod = e["module"].replace("modul-", "")
        for eid, w in e["ms"].items():
            mods[mod]["total"] += 1
            if w:
                mods[mod]["covered"] += 1
                continue
            el = els.get(eid, {})
            reason = None
            if eid.endswith(".dataAbsentReason"):
                par = eid[: -len(".dataAbsentReason")]
                vals = [v for k, v in els.items()
                        if k == par + ".value[x]" or k.startswith(par + ".value[x]:")]
                if vals and vals[0].get("min", 0) >= 1:
                    reason = "obs6"
            if el.get("max") == "0":
                reason = "max0"
            if not reason:
                anc = [eid] + [eid.rsplit(".", i)[0]
                               for i in range(1, 4) if eid.count(".") >= i]
                for a in anc:
                    pc = els.get(a, {}).get("patternCoding") or {}
                    if isinstance(pc.get("code"), str) and PLACEHOLDER.fullmatch(pc["code"]):
                        reason = "placeholder"
                        break
            mods[mod]["blocked" if reason else "feasible"] += 1
            gaps.append({"m": mod, "p": prof.split("/")[-1],
                         "e": eid.split(".", 1)[1] if "." in eid else eid,
                         "r": reason or ""})
    modules = sorted(({"name": k, **v} for k, v in mods.items()),
                     key=lambda m: -(m["feasible"] + m["blocked"]))
    tot = {k: sum(m[k] for m in modules)
           for k in ("total", "covered", "feasible", "blocked")}
    return {"modules": modules, "gaps": gaps, "totals": tot}


FRAGMENT = """<div class="gapv">
<style>
.gapv{--g-teal:#0E7C86;--g-amber:#A96C0B;--g-rust:#96473A;--g-tealsoft:#D3E7E8;
 --g-ambersoft:#F2E3C6;--g-rustsoft:#EEDAD5;--g-line:#D8E2E3;--g-sunk:#EDF2F2;
 --g-muted:#5E7278;--g-surface:#fff;--g-ink:#15242A;
 --g-mono:ui-monospace,"IBM Plex Mono",Menlo,Consolas,monospace;
 color:var(--g-ink);font-variant-numeric:tabular-nums}
@media (prefers-color-scheme:dark){.gapv{--g-teal:#43B3BB;--g-amber:#D9A03F;--g-rust:#CE7D6C;
 --g-tealsoft:#123437;--g-ambersoft:#332915;--g-rustsoft:#33201C;--g-line:#2A383C;
 --g-sunk:#1C2629;--g-muted:#8FA3A9;--g-surface:#161E21;--g-ink:#E6EEEF}}
.gapv .g-figs{display:grid;gap:1px;grid-template-columns:repeat(auto-fit,minmax(170px,1fr));
 background:var(--g-line);border:1px solid var(--g-line);margin:1.2rem 0 1.8rem}
.gapv .g-fig{background:var(--g-surface);padding:.9rem 1rem}
.gapv .g-n{font-family:var(--g-mono);font-size:1.7rem;font-weight:600;line-height:1.15;display:block}
.gapv .g-k{font-family:var(--g-mono);font-size:.66rem;letter-spacing:.1em;text-transform:uppercase;
 color:var(--g-muted);display:block;margin-bottom:.3rem}
.gapv .g-d{font-size:.8rem;color:var(--g-muted);display:block;margin-top:.25rem}
.gapv .g-bars{display:flex;flex-direction:column;gap:.4rem;margin:.8rem 0}
.gapv .g-row{display:grid;grid-template-columns:minmax(110px,140px) 1fr minmax(74px,auto);
 gap:.7rem;align-items:center;background:none;border:0;padding:.18rem;width:100%;font:inherit;
 color:inherit;text-align:left;cursor:pointer}
.gapv .g-row[aria-pressed="true"]{background:var(--g-sunk)}
.gapv .g-row:focus-visible{outline:2px solid var(--g-teal);outline-offset:2px}
.gapv .g-name{font-family:var(--g-mono);font-size:.78rem;color:var(--g-muted);white-space:nowrap;
 overflow:hidden;text-overflow:ellipsis}
.gapv .g-track{display:flex;height:16px;background:var(--g-sunk);overflow:hidden}
.gapv .g-seg{height:100%}
.gapv .g-c{background:var(--g-tealsoft)}.gapv .g-f{background:var(--g-amber)}
.gapv .g-b{background:var(--g-rust)}
.gapv .g-pct{font-family:var(--g-mono);font-size:.76rem;color:var(--g-muted);text-align:right}
.gapv .g-legend{display:flex;flex-wrap:wrap;gap:1rem;font-size:.8rem;color:var(--g-muted);margin:.5rem 0 0}
.gapv .g-legend span{display:inline-flex;align-items:center;gap:.35rem}
.gapv .g-sw{width:10px;height:10px;display:inline-block}
.gapv .g-ctl{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;margin:1.4rem 0 .8rem}
.gapv input[type=search]{font:inherit;font-size:.85rem;padding:.4rem .6rem;border:1px solid var(--g-line);
 background:var(--g-surface);color:var(--g-ink);min-width:210px}
.gapv .g-chip{font-family:var(--g-mono);font-size:.72rem;padding:.32rem .55rem;border:1px solid var(--g-line);
 background:var(--g-surface);color:var(--g-muted);cursor:pointer}
.gapv .g-chip[aria-pressed="true"]{background:var(--g-ink);color:var(--g-surface);border-color:var(--g-ink)}
.gapv .g-tw{overflow-x:auto;border:1px solid var(--g-line);background:var(--g-surface);max-height:32rem}
.gapv table{border-collapse:collapse;width:100%;font-size:.83rem;margin:0}
.gapv th{font-family:var(--g-mono);font-size:.66rem;letter-spacing:.09em;text-transform:uppercase;
 color:var(--g-muted);text-align:left;padding:.55rem .7rem;border-bottom:1px solid var(--g-line);
 position:sticky;top:0;background:var(--g-surface)}
.gapv td{padding:.45rem .7rem;border-bottom:1px solid var(--g-line);vertical-align:top}
.gapv td.g-el{font-family:var(--g-mono);font-size:.78rem;word-break:break-word}
.gapv td.g-pr{font-family:var(--g-mono);font-size:.74rem;color:var(--g-muted);word-break:break-word}
.gapv .g-tag{display:inline-block;font-family:var(--g-mono);font-size:.66rem;padding:.12rem .42rem;white-space:nowrap}
.gapv .g-tagf{background:var(--g-ambersoft);color:var(--g-amber)}
.gapv .g-tagb{background:var(--g-rustsoft);color:var(--g-rust)}
.gapv .g-stripe{border-left:3px solid var(--g-amber)}
.gapv .g-stripe.g-isb{border-left-color:var(--g-rust)}
.gapv .g-cnt{font-family:var(--g-mono);font-size:.78rem;color:var(--g-muted);margin:.6rem 0 0}
</style>

<div class="g-figs">
  <div class="g-fig"><span class="g-k">__L_COVERED__</span>
    <span class="g-n" style="color:var(--g-teal)">__COVPCT__&thinsp;%</span>
    <span class="g-d">__L_OFTOTAL__</span></div>
  <div class="g-fig"><span class="g-k">__L_FEASIBLE__</span>
    <span class="g-n" style="color:var(--g-amber)">__FEAS__</span>
    <span class="g-d">__L_FEASIBLE_D__</span></div>
  <div class="g-fig"><span class="g-k">__L_BLOCKED__</span>
    <span class="g-n" style="color:var(--g-rust)">__BLOCK__</span>
    <span class="g-d">__L_BLOCKED_D__</span></div>
</div>

<div class="g-bars" id="g-bars"></div>
<div class="g-legend">
  <span><i class="g-sw g-c"></i>__L_COVERED__</span>
  <span><i class="g-sw g-f"></i>__L_FEASIBLE__</span>
  <span><i class="g-sw g-b"></i>__L_BLOCKED__</span>
</div>

<div class="g-ctl">
  <input type="search" id="g-q" placeholder="__L_SEARCH__" aria-label="__L_SEARCH_A__">
  <button class="g-chip" id="g-all" aria-pressed="true">__L_ALL__</button>
  <button class="g-chip" id="g-onlyf" aria-pressed="false">__L_ONLYF__</button>
  <button class="g-chip" id="g-onlyb" aria-pressed="false">__L_ONLYB__</button>
</div>
<div class="g-tw">
  <table><thead><tr><th>__L_TH_MODULE__</th><th>__L_TH_PROFILE__</th><th>__L_TH_ELEMENT__</th><th>__L_TH_STATUS__</th></tr></thead>
  <tbody id="g-tb"></tbody></table>
</div>
<p class="g-cnt" id="g-cnt"></p>

<script>
(function(){
  var DATA = __DATA__, S = __STRINGS__;
  var mod = null, mode = "all";
  var bars = document.getElementById("g-bars"), tb = document.getElementById("g-tb"),
      cnt = document.getElementById("g-cnt"), q = document.getElementById("g-q");
  function esc(s){ return String(s).replace(/&/g,"&amp;").replace(/</g,"&lt;"); }

  DATA.modules.forEach(function(m){
    var open = m.feasible + m.blocked;
    var b = document.createElement("button");
    b.className = "g-row"; b.setAttribute("aria-pressed","false");
    b.title = m.name + ": " + m.covered + "/" + m.total + " " + S.covered + ", "
            + m.feasible + " " + S.feasible + ", " + m.blocked + " " + S.blocked;
    b.innerHTML = '<span class="g-name">' + esc(m.name) + '</span>'
      + '<span class="g-track">'
      + '<span class="g-seg g-c" style="width:' + (100*m.covered/m.total) + '%"></span>'
      + '<span class="g-seg g-f" style="width:' + (100*m.feasible/m.total) + '%"></span>'
      + '<span class="g-seg g-b" style="width:' + (100*m.blocked/m.total) + '%"></span>'
      + '</span><span class="g-pct">' + (open ? open + " " + S.open : S.complete) + '</span>';
    b.onclick = function(){
      mod = (mod === m.name) ? null : m.name;
      Array.prototype.forEach.call(bars.children, function(c){
        c.setAttribute("aria-pressed", String(c === b && mod !== null)); });
      render();
    };
    bars.appendChild(b);
  });

  function setMode(x){
    mode = x;
    document.getElementById("g-all").setAttribute("aria-pressed", String(x==="all"));
    document.getElementById("g-onlyf").setAttribute("aria-pressed", String(x==="f"));
    document.getElementById("g-onlyb").setAttribute("aria-pressed", String(x==="b"));
    render();
  }
  document.getElementById("g-all").onclick = function(){ setMode("all"); };
  document.getElementById("g-onlyf").onclick = function(){ setMode("f"); };
  document.getElementById("g-onlyb").onclick = function(){ setMode("b"); };
  q.oninput = render;

  function render(){
    var term = q.value.trim().toLowerCase();
    var rows = DATA.gaps.filter(function(g){
      return (!mod || g.m === mod)
        && (mode === "all" || (mode === "b") === Boolean(g.r))
        && (!term || (g.e + " " + g.p + " " + g.m).toLowerCase().indexOf(term) !== -1);
    });
    tb.innerHTML = rows.slice(0,400).map(function(g){
      return '<tr><td class="g-stripe' + (g.r ? " g-isb" : "") + '">' + esc(g.m) + '</td>'
        + '<td class="g-pr">' + esc(g.p) + '</td>'
        + '<td class="g-el">' + esc(g.e) + '</td><td>'
        + (g.r ? '<span class="g-tag g-tagb">' + esc(S.reasons[g.r] || g.r) + '</span>'
               : '<span class="g-tag g-tagf">' + S.feasible + '</span>') + '</td></tr>';
    }).join("");
    cnt.textContent = rows.length + " " + S.of + " " + DATA.gaps.length + " " + S.openNodes
      + (rows.length > 400 ? " \\u00b7 " + S.first400 : "")
      + (mod ? " \\u00b7 " + S.module + " " + mod : "");
  }
  render();
})();
</script>
</div>
"""


STRINGS = {
    "en": {
        "covered": "covered", "feasible": "feasible", "blocked": "blocked",
        "feasible_d": "open, but populatable", "blocked_d": "the profile prevents population",
        "oftotal": "__COV__ of __TOTAL__ MS elements",
        "search": "Search element, profile or module", "search_a": "Search",
        "all": "all", "onlyf": "feasible only", "onlyb": "blocked only",
        "th": ("Module", "Profile", "Element", "Status"),
        "js": {"covered": "covered", "feasible": "feasible", "blocked": "blocked",
               "open": "open", "complete": "complete", "of": "of", "openNodes": "open nodes",
               "first400": "first 400 shown", "module": "module",
               "reasons": {"obs6": "obs-6: value[x] is required",
                           "max0": "max=0 despite Must-Support",
                           "placeholder": "placeholder code in the profile"}},
    },
    "de": {
        "covered": "befüllt", "feasible": "befüllbar", "blocked": "blockiert",
        "feasible_d": "offen, aber befüllbar", "blocked_d": "das Profil verhindert die Befüllung",
        "oftotal": "__COV__ von __TOTAL__ MS-Elementen",
        "search": "Element, Profil oder Modul suchen", "search_a": "Suche",
        "all": "alle", "onlyf": "nur befüllbar", "onlyb": "nur blockiert",
        "th": ("Modul", "Profil", "Element", "Status"),
        "js": {"covered": "befüllt", "feasible": "befüllbar", "blocked": "blockiert",
               "open": "offen", "complete": "vollständig", "of": "von", "openNodes": "offene Knoten",
               "first400": "erste 400 angezeigt", "module": "Modul",
               "reasons": {"obs6": "obs-6: value[x] ist Pflicht",
                           "max0": "max=0 trotz Must-Support",
                           "placeholder": "Platzhaltercode im Profil"}},
    },
}


def main():
    args = [a for a in sys.argv[1:]]
    lang = "en"
    if "--lang" in args:
        i = args.index("--lang")
        lang = args[i + 1]
        del args[i:i + 2]
    if lang not in STRINGS:
        sys.exit(f"unbekannte Sprache {lang!r}; bekannt: {', '.join(STRINGS)}")
    T = STRINGS[lang]
    out = args[0] if args else os.path.join(
        ROOT, "kds-testdata", "input", "includes",
        "ms-luecken.html" if lang == "en" else f"ms-luecken-{lang}.html")
    d = collect()
    t = d["totals"]
    frag = (FRAGMENT
            .replace("__DATA__", json.dumps(d, ensure_ascii=False, separators=(",", ":")))
            .replace("__STRINGS__", json.dumps(T["js"], ensure_ascii=False, separators=(",", ":")))
            .replace("__L_COVERED__", T["covered"])
            .replace("__L_FEASIBLE_D__", T["feasible_d"])
            .replace("__L_BLOCKED_D__", T["blocked_d"])
            .replace("__L_FEASIBLE__", T["feasible"])
            .replace("__L_BLOCKED__", T["blocked"])
            .replace("__L_OFTOTAL__", T["oftotal"])
            .replace("__L_SEARCH_A__", T["search_a"])
            .replace("__L_SEARCH__", T["search"])
            .replace("__L_ALL__", T["all"])
            .replace("__L_ONLYF__", T["onlyf"])
            .replace("__L_ONLYB__", T["onlyb"])
            .replace("__L_TH_MODULE__", T["th"][0])
            .replace("__L_TH_PROFILE__", T["th"][1])
            .replace("__L_TH_ELEMENT__", T["th"][2])
            .replace("__L_TH_STATUS__", T["th"][3])
            .replace("__COVPCT__", f"{100 * t['covered'] / t['total']:.1f}".replace(".", ","))
            .replace("__COV__", f"{t['covered']:,}".replace(",", "."))
            .replace("__TOTAL__", f"{t['total']:,}".replace(",", "."))
            .replace("__FEAS__", str(t["feasible"]))
            .replace("__BLOCK__", str(t["blocked"])))
    for bad in ("{{", "{%", "__L_"):
        if bad in frag:
            print(f"FEHLER: '{bad}' im Fragment — Jekyll/Liquid wuerde das auswerten "
                  f"bzw. ein Label blieb unersetzt.", file=sys.stderr)
            sys.exit(1)
    os.makedirs(os.path.dirname(out), exist_ok=True)
    open(out, "w", encoding="utf-8").write(frag)
    print(f"{out}\n   {len(d['gaps'])} offene Knoten, {len(d['modules'])} Module, "
          f"{len(frag) // 1024} KB, Sprache {lang}")


if __name__ == "__main__":
    main()
