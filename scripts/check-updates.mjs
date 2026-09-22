#!/usr/bin/env node
// check-updates.mjs — vergleicht die gepinnten Versionen dieses Repos mit dem
// jeweils neuesten verfügbaren Stand und druckt einen Markdown-Drift-Report.
//
// Adaptiert aus dem mii-kds-module-template (dort: scripts/check-updates.mjs),
// zugeschnitten auf das Testdaten-Repo. Design-Regeln unverändert:
// - Pins werden aus den ECHTEN Repo-Dateien gelesen (kds-testdata/package.json,
//   kds-testdata/sushi-config.yaml, .github/workflows/ci.yml) — dieses Skript
//   wird nie zweite Wahrheit.
// - Das Skript ändert NIE etwas selbst und endet IMMER mit Exit 0 — Drift
//   steht im Output, nicht im Exit-Code.
// - Keine npm-Dependencies; nur Node-22-Built-ins (fetch, node:fs).
// - Netzwerkfehler werden je Zeile toleriert ("lookup failed"), nie fatal.
//
// Watch-Liste dieses Repos:
// 1. Die BOM de.medizininformatikinitiative.kerndatensatz.complete aus
//    sushi-config.yaml — geprüft gegen die GitHub-Releases von
//    medizininformatik-initiative/kerndatensatz-complete (nicht registry-publiziert).
// 2. Alle FHIR-Package-Pins aus kds-testdata/package.json — geprüft gegen
//    packages.fhir.org, Fallback packages.simplifier.net (npm-Protokoll).
// 3. Toolchain-Pins aus .github/workflows/ci.yml (SUSHI_VERSION, YQ_VERSION).
//
// Bewusst ignorierte Versionen (werden gemeldet, aber als "ignoriert" markiert):
// - de.medizininformatikinitiative.kerndatensatz.icu 2027.0.0 — versehentlich
//   publiziert, 256 statt 267 Ressourcen, ohne die fünf Score-Profile
//   (siehe kerndatensatz-complete/ignored-versions.json).
//
// Usage:  node scripts/check-updates.mjs [--format=markdown]

import { readFileSync, existsSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");

const IGNORED_VERSIONS = {
  "de.medizininformatikinitiative.kerndatensatz.icu": {
    "2027.0.0":
      "versehentlich publiziert (256/267 Ressourcen, Score-Profile fehlen) — nie pinnen",
  },
};

// ---------------------------------------------------------------------------
// Pure helpers
// ---------------------------------------------------------------------------

export function normalizeVersion(v) {
  if (typeof v !== "string") return v;
  return v.replace(/^v/, "").trim();
}

/** Segmentweiser Versionsvergleich; Prerelease < Release derselben Basis. */
export function compareVersions(a, b) {
  const [am, ap = ""] = normalizeVersion(a).split(/-(.+)/);
  const [bm, bp = ""] = normalizeVersion(b).split(/-(.+)/);
  const as = am.split(".");
  const bs = bm.split(".");
  const len = Math.max(as.length, bs.length);
  for (let i = 0; i < len; i++) {
    const nx = Number(as[i] ?? "0");
    const ny = Number(bs[i] ?? "0");
    if (Number.isFinite(nx) && Number.isFinite(ny)) {
      if (nx !== ny) return nx < ny ? -1 : 1;
    } else if ((as[i] ?? "") !== (bs[i] ?? "")) {
      return (as[i] ?? "") < (bs[i] ?? "") ? -1 : 1;
    }
  }
  if (ap === bp) return 0;
  if (ap === "") return 1; // Release schlägt Prerelease
  if (bp === "") return -1;
  // Prerelease-Teile nach MII-Konvention: ballot.rc1 < ballot.rc2 < ballot
  // < ballot.1 < ballot.2 < ballot.10 — d.h. an der ersten abweichenden
  // Position gilt: rc-Segment < fehlendes Segment < numerisches Segment.
  const aps = ap.split(/[.\-]/);
  const bps = bp.split(/[.\-]/);
  const rank = (s) => {
    if (s === undefined) return 1; // fehlend
    if (/^rc\d*$/i.test(s)) return 0; // Release Candidate
    return 2; // numerisch oder sonstiger Zusatz
  };
  const plen = Math.max(aps.length, bps.length);
  for (let i = 0; i < plen; i++) {
    const x = aps[i];
    const y = bps[i];
    if (x === y) continue;
    const rx = rank(x);
    const ry = rank(y);
    if (rx !== ry) return rx < ry ? -1 : 1;
    if (rx === 0) {
      // beide rc: rc1 < rc2 numerisch
      const nx = Number((x ?? "").replace(/^rc/i, "") || "0");
      const ny = Number((y ?? "").replace(/^rc/i, "") || "0");
      if (nx !== ny) return nx < ny ? -1 : 1;
      continue;
    }
    const nx = Number(x);
    const ny = Number(y);
    if (Number.isFinite(nx) && Number.isFinite(ny)) {
      if (nx !== ny) return nx < ny ? -1 : 1;
    } else if ((x ?? "") !== (y ?? "")) {
      return (x ?? "") < (y ?? "") ? -1 : 1;
    }
  }
  return 0;
}

function readDefensively(rel) {
  const p = path.join(ROOT, rel);
  if (!existsSync(p)) return null;
  return readFileSync(p, "utf8");
}

// ---------------------------------------------------------------------------
// Pin-Quellen
// ---------------------------------------------------------------------------

function readPackagePins() {
  const raw = readDefensively("kds-testdata/package.json");
  if (raw === null) return { missing: "kds-testdata/package.json", pins: {} };
  try {
    const deps = JSON.parse(raw).dependencies ?? {};
    delete deps["hl7.fhir.r4.core"]; // fix, wandert nie
    return { pins: deps };
  } catch {
    return { missing: "kds-testdata/package.json (unparsebar)", pins: {} };
  }
}

function readBomPin() {
  const raw = readDefensively("kds-testdata/sushi-config.yaml");
  if (raw === null) return null;
  const m = raw.match(
    /kerndatensatz\.complete:\s*\n\s*version:\s*(\S+)/
  );
  return m ? m[1] : null;
}

function readToolchainPins() {
  const raw = readDefensively(".github/workflows/ci.yml") ?? "";
  const sushi = raw.match(/SUSHI_VERSION:\s*(\S+)/)?.[1] ?? null;
  const yq = raw.match(/YQ_VERSION:\s*(\S+)/)?.[1] ?? null;
  return { sushi, yq };
}

// ---------------------------------------------------------------------------
// Upstream-Lookups (je Zeile tolerant)
// ---------------------------------------------------------------------------

async function fetchJson(url, headers = {}) {
  const res = await fetch(url, { headers });
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
  return res.json();
}

async function latestFhirPackage(name) {
  for (const base of [
    "https://packages.fhir.org",
    "https://packages.simplifier.net",
  ]) {
    try {
      const doc = await fetchJson(`${base}/${name}`);
      const versions = Object.keys(doc.versions ?? {});
      if (versions.length === 0) continue;
      versions.sort(compareVersions);
      return { all: versions, latest: versions[versions.length - 1] };
    } catch {
      /* nächste Registry */
    }
  }
  throw new Error("keine Registry erreichbar");
}

async function latestGithubRelease(repo) {
  const headers = { Accept: "application/vnd.github+json" };
  if (process.env.GITHUB_TOKEN)
    headers.Authorization = `Bearer ${process.env.GITHUB_TOKEN}`;
  const rels = await fetchJson(
    `https://api.github.com/repos/${repo}/releases?per_page=10`,
    headers
  );
  if (!Array.isArray(rels) || rels.length === 0)
    throw new Error("keine Releases");
  return normalizeVersion(rels[0].tag_name);
}

async function latestNpm(pkg) {
  const doc = await fetchJson(`https://registry.npmjs.org/${pkg}/latest`);
  return doc.version;
}

// ---------------------------------------------------------------------------
// Report
// ---------------------------------------------------------------------------

function row(name, pinned, latest, note = "") {
  const drift =
    latest && pinned && compareVersions(pinned, latest) < 0 ? "⬆️" : "✓";
  return `| ${name} | \`${pinned ?? "—"}\` | \`${latest ?? "?"}\` | ${drift} ${note} |`;
}

async function main() {
  const lines = [];
  lines.push(`# Dependency-Status (Testdaten-Repo)`);
  lines.push("");
  lines.push(`Erzeugt: ${new Date().toISOString()} · Skript meldet nur, bumpt nie.`);
  lines.push("");
  lines.push("| Artefakt | gepinnt | verfügbar | Drift |");
  lines.push("|---|---|---|---|");

  // 1. BOM
  const bomPin = readBomPin();
  try {
    const bomLatest = await latestGithubRelease(
      "medizininformatik-initiative/kerndatensatz-complete"
    );
    lines.push(
      row(
        "kerndatensatz.complete (BOM, GitHub-Release)",
        bomPin,
        bomLatest,
        "— bei Bump: package.json-Pins mitziehen!"
      )
    );
  } catch (e) {
    lines.push(row("kerndatensatz.complete (BOM)", bomPin, null, `lookup failed: ${e.message}`));
  }

  // 2. FHIR-Package-Pins
  const { pins, missing } = readPackagePins();
  if (missing) lines.push(`| ⚠️ Pin-Datei fehlt: ${missing} | | | |`);
  for (const [name, pinned] of Object.entries(pins)) {
    try {
      const { all, latest } = await latestFhirPackage(name);
      const ignored = IGNORED_VERSIONS[name] ?? {};
      let candidate = latest;
      const notes = [];
      while (candidate && ignored[candidate]) {
        notes.push(`\`${candidate}\` ignoriert: ${ignored[candidate]}`);
        const idx = all.indexOf(candidate);
        candidate = idx > 0 ? all[idx - 1] : null;
      }
      lines.push(row(name, pinned, candidate, notes.join("; ")));
    } catch (e) {
      lines.push(row(name, pinned, null, `lookup failed: ${e.message}`));
    }
  }

  // 3. Toolchain
  const { sushi, yq } = readToolchainPins();
  try {
    lines.push(row("fsh-sushi (npm)", sushi, await latestNpm("fsh-sushi")));
  } catch (e) {
    lines.push(row("fsh-sushi (npm)", sushi, null, `lookup failed: ${e.message}`));
  }
  try {
    lines.push(row("yq (GitHub-Release)", yq, `v${await latestGithubRelease("mikefarah/yq")}`));
  } catch (e) {
    lines.push(row("yq (GitHub-Release)", yq, null, `lookup failed: ${e.message}`));
  }

  lines.push("");
  lines.push(
    "Hinweis: `sushi-config.yaml` bezieht alle MII-Module über die BOM; " +
      "`kds-testdata/package.json` trägt die expandierten Pins für die " +
      "Java-Validation. Beide bei einem Bump gemeinsam pflegen " +
      "(Quelle: package.json der BOM-Version)."
  );
  console.log(lines.join("\n"));
}

main().catch((e) => {
  // Auch ein Totalausfall produziert einen Report, nie einen roten Job.
  console.log(`# Dependency-Status\n\nChecker-Fehler: ${e.message}`);
});
