#!/usr/bin/env python3
"""Erntet FSH-Example-Instanzen aus den Modul-Repos in die kds-testdata.

Etliche Module pflegen ihre Examples als FSH im Repo, liefern sie aber nicht
im Package aus (Onkologie, MTB, MolGen, Seltene ...). Dieses Skript kopiert
reine Instanz-Dateien aus <repo>/input/fsh nach
kds-testdata/input/fsh-staging/repo-examples/<modul>/ und macht sie dabei
SUSHI-tauglich fuer dieses Projekt:

  - $-Aliases werden inline durch ihre URLs ersetzt (keine Alias-Konflikte
    mit der bestehenden aliases.fsh)
  - von Instanzen per `insert` genutzte RuleSets werden in
    rulesets-<modul>.fsh mitkopiert
  - Dateien, die auch Profile/ValueSets/etc. definieren, werden uebersprungen
    und gemeldet
  - Namenskollisionen mit bestehenden kds-testdata-Instanzen werden gemeldet,
    nicht automatisch umbenannt

Aufruf:  ./scripts/harvest-repo-examples.py <mod>=<repo-pfad> [...]
z.B.     ./scripts/harvest-repo-examples.py onkologie=/tmp/repos/kerndatensatzmodul-onkologie
"""

import os
import re
import sys

ROOT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "kds-testdata")
DEST = os.path.join(ROOT, "input", "fsh-staging", "repo-examples")
DEF_KW = re.compile(r"^(Instance|Profile|Extension|ValueSet|CodeSystem|Logical|"
                    r"Resource|RuleSet|Invariant|Mapping|Alias)\s*:", re.M)


def fsh_files(d):
    for dirpath, _, files in os.walk(d):
        for f in sorted(files):
            if f.endswith(".fsh"):
                yield os.path.join(dirpath, f)


def existing_instance_names():
    names = set()
    for fp in fsh_files(os.path.join(ROOT, "input", "fsh")):
        for m in re.finditer(r"^Instance:\s*(\S+)", open(fp, encoding="utf-8").read(), re.M):
            names.add(m.group(1))
    return names


def module_aliases(repo_fsh):
    """Alias-Name -> Wert, ueber alle FSH-Dateien des Moduls."""
    aliases = {}
    for fp in fsh_files(repo_fsh):
        for m in re.finditer(r"^Alias:\s*(\$?\S+)\s*=\s*(\S+)", open(fp, encoding="utf-8").read(), re.M):
            aliases[m.group(1)] = m.group(2)
    return aliases


def module_rulesets(repo_fsh):
    """RuleSet-Name -> kompletter Textblock."""
    out = {}
    for fp in fsh_files(repo_fsh):
        text = open(fp, encoding="utf-8").read()
        for m in re.finditer(r"^RuleSet:\s*([A-Za-z0-9_\-]+)", text, re.M):
            start = m.start()
            nxt = DEF_KW.search(text, m.end())
            out[m.group(1)] = text[start:nxt.start() if nxt else len(text)].rstrip() + "\n"
    return out


def inline_aliases(text, aliases):
    for name, val in sorted(aliases.items(), key=lambda kv: -len(kv[0])):
        if name.startswith("$"):
            text = re.sub(re.escape(name) + r"(?![A-Za-z0-9_\-])", val, text)
        else:
            # Eigenstaendiges Token vor '#', oder als ganzer Wert nach '= '.
            text = re.sub(r"(?<=[ (=])" + re.escape(name) + r"(?=#)", val, text)
            text = re.sub(r"(?<== )" + re.escape(name) + r"(?=\s*$)", val, text, flags=re.M)
    return text


# Definitional-Instanzen sind Conformance-Artefakte, keine Testdaten.
EXCLUDE_TYPES = {"CapabilityStatement", "ImplementationGuide", "SearchParameter",
                 "StructureDefinition", "OperationDefinition"}


def main():
    if len(sys.argv) < 2:
        sys.exit(__doc__)
    taken = existing_instance_names()
    for arg in sys.argv[1:]:
        mod, _, repo = arg.partition("=")
        repo_fsh = os.path.join(repo, "input", "fsh")
        if not os.path.isdir(repo_fsh):
            print(f"{mod}: {repo_fsh} fehlt"); continue
        aliases = module_aliases(repo_fsh)
        rulesets = module_rulesets(repo_fsh)
        dest = os.path.join(DEST, mod)
        os.makedirs(dest, exist_ok=True)
        copied = skipped = 0
        collisions, needed_rs = [], set()
        dropped_def = 0
        for fp in fsh_files(repo_fsh):
            text = open(fp, encoding="utf-8").read()
            kinds = set(m.group(1) for m in DEF_KW.finditer(text))
            if "Instance" not in kinds:
                continue
            if kinds - {"Instance", "Alias"}:
                skipped += 1
            # Immer blockweise: dedupliziert und filtert Definitional-Instanzen
            blocks = []
            for m in re.finditer(r"^Instance:\s*(\S+)", text, re.M):
                nxt = DEF_KW.search(text, m.end())
                block = text[m.start():nxt.start() if nxt else len(text)].rstrip()
                name = m.group(1)
                iof = re.search(r"^InstanceOf:\s*(\S+)", block, re.M)
                if iof and iof.group(1).split("/")[-1] in EXCLUDE_TYPES:
                    dropped_def += 1
                    continue
                if "Usage: #definition" in block:
                    dropped_def += 1
                    continue
                if name in taken:
                    collisions.append(name)
                    continue
                taken.add(name)
                blocks.append(block)
            if not blocks:
                continue
            text = "\n\n".join(blocks) + "\n"
            text = inline_aliases(text, aliases)
            for m in re.finditer(r"insert\s+([A-Za-z0-9_\-]+)", text):
                if m.group(1) in rulesets:
                    needed_rs.add(m.group(1))
            out = os.path.join(dest, os.path.relpath(fp, repo_fsh).replace(os.sep, "-"))
            open(out, "w", encoding="utf-8").write(text)
            copied += 1
        if needed_rs:
            blocks = [inline_aliases(re.sub(r"^Alias:.*\n", "", rulesets[n], flags=re.M), aliases)
                      for n in sorted(needed_rs)]
            open(os.path.join(dest, f"rulesets-{mod}.fsh"), "w", encoding="utf-8").write(
                "\n".join(blocks))
        print(f"{mod}: {copied} Dateien ({skipped} davon Mischdateien), "
              f"{len(needed_rs)} RuleSets, {dropped_def} Definitional-Instanzen verworfen, "
              f"{len(collisions)} Duplikate uebersprungen")
    return 0


if __name__ == "__main__":
    sys.exit(main())
