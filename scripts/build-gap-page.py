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
                    reason = "obs-6: value[x] ist Pflicht"
            if el.get("max") == "0":
                reason = "max=0 trotz Must-Support"
            if not reason:
                anc = [eid] + [eid.rsplit(".", i)[0]
                               for i in range(1, 4) if eid.count(".") >= i]
                for a in anc:
                    pc = els.get(a, {}).get("patternCoding") or {}
                    if isinstance(pc.get("code"), str) and PLACEHOLDER.fullmatch(pc["code"]):
                        reason = "Platzhalter-Code im Profil"
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
  <div class="g-fig"><span class="g-k">belegt</span>
    <span class="g-n" style="color:var(--g-teal)">__COVPCT__&thinsp;%</span>
    <span class="g-d">__COV__ von __TOTAL__ MS-Elementen</span></div>
  <div class="g-fig"><span class="g-k">machbar</span>
    <span class="g-n" style="color:var(--g-amber)">__FEAS__</span>
    <span class="g-d">offen, aber befüllbar</span></div>
  <div class="g-fig"><span class="g-k">blockiert</span>
    <span class="g-n" style="color:var(--g-rust)">__BLOCK__</span>
    <span class="g-d">Profil verhindert die Befüllung</span></div>
</div>

<div class="g-bars" id="g-bars"></div>
<div class="g-legend">
  <span><i class="g-sw g-c"></i>belegt</span>
  <span><i class="g-sw g-f"></i>machbar</span>
  <span><i class="g-sw g-b"></i>blockiert</span>
</div>

<div class="g-ctl">
  <input type="search" id="g-q" placeholder="Element, Profil oder Modul suchen" aria-label="Suchen">
  <button class="g-chip" id="g-all" aria-pressed="true">alle</button>
  <button class="g-chip" id="g-onlyf" aria-pressed="false">nur machbar</button>
  <button class="g-chip" id="g-onlyb" aria-pressed="false">nur blockiert</button>
</div>
<div class="g-tw">
  <table><thead><tr><th>Modul</th><th>Profil</th><th>Element</th><th>Status</th></tr></thead>
  <tbody id="g-tb"></tbody></table>
</div>
<p class="g-cnt" id="g-cnt"></p>

<script>
(function(){
  var DATA = __DATA__;
  var mod = null, mode = "all";
  var bars = document.getElementById("g-bars"), tb = document.getElementById("g-tb"),
      cnt = document.getElementById("g-cnt"), q = document.getElementById("g-q");
  function esc(s){ return String(s).replace(/&/g,"&amp;").replace(/</g,"&lt;"); }

  DATA.modules.forEach(function(m){
    var open = m.feasible + m.blocked;
    var b = document.createElement("button");
    b.className = "g-row"; b.setAttribute("aria-pressed","false");
    b.title = m.name + ": " + m.covered + "/" + m.total + " belegt, "
            + m.feasible + " machbar, " + m.blocked + " blockiert";
    b.innerHTML = '<span class="g-name">' + esc(m.name) + '</span>'
      + '<span class="g-track">'
      + '<span class="g-seg g-c" style="width:' + (100*m.covered/m.total) + '%"></span>'
      + '<span class="g-seg g-f" style="width:' + (100*m.feasible/m.total) + '%"></span>'
      + '<span class="g-seg g-b" style="width:' + (100*m.blocked/m.total) + '%"></span>'
      + '</span><span class="g-pct">' + (open ? open + " offen" : "vollst\\u00e4ndig") + '</span>';
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
        + (g.r ? '<span class="g-tag g-tagb">' + esc(g.r) + '</span>'
               : '<span class="g-tag g-tagf">machbar</span>') + '</td></tr>';
    }).join("");
    cnt.textContent = rows.length + " von " + DATA.gaps.length + " offenen Knoten"
      + (rows.length > 400 ? " \\u00b7 erste 400 gezeigt" : "")
      + (mod ? " \\u00b7 Modul " + mod : "");
  }
  render();
})();
</script>
</div>
"""


def main():
    out = sys.argv[1] if len(sys.argv) > 1 else os.path.join(
        ROOT, "kds-testdata", "input", "includes", "ms-luecken.html")
    d = collect()
    t = d["totals"]
    frag = (FRAGMENT
            .replace("__DATA__", json.dumps(d, ensure_ascii=False, separators=(",", ":")))
            .replace("__COVPCT__", f"{100 * t['covered'] / t['total']:.1f}".replace(".", ","))
            .replace("__COV__", f"{t['covered']:,}".replace(",", "."))
            .replace("__TOTAL__", f"{t['total']:,}".replace(",", "."))
            .replace("__FEAS__", str(t["feasible"]))
            .replace("__BLOCK__", str(t["blocked"])))
    for bad in ("{{", "{%"):
        if bad in frag:
            print(f"FEHLER: '{bad}' im Fragment — Jekyll/Liquid wuerde das auswerten.",
                  file=sys.stderr)
            sys.exit(1)
    os.makedirs(os.path.dirname(out), exist_ok=True)
    open(out, "w", encoding="utf-8").write(frag)
    print(f"{out}\n   {len(d['gaps'])} offene Knoten, {len(d['modules'])} Module, "
          f"{len(frag) // 1024} KB")


if __name__ == "__main__":
    main()
