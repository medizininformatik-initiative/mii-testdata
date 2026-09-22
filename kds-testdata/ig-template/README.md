# `ig-template/` — vendored IG template (development mirror)

A **vendored mirror** of the MII IG-Publisher template package
`de.medizininformatikinitiative.template` (version `1.3.2`), copied from
<https://github.com/forschungsgruppe-digital-health/ig-template-mii-kds>
at commit `b50a7cc3ebdc697f189692ee7fdd7db12d96aef5`.

**Do not edit these files here.** The single source of truth is the
`ig-template-mii-kds` repository; local edits would silently drift and be
overwritten by the next sync.

## Why a mirror, and how it stays current

The template package is not published to a FHIR package registry yet, so
`ig.ini` references it as a local folder (`template = #ig-template`). To make
sure the IG always builds against the CURRENT template during development, the
mirror is refreshed by `scripts/sync-ig-template.sh`:

- `scripts/sync-ig-template.sh` — re-vendor from `dev` (default).
- `scripts/sync-ig-template.sh --check` — fail if the mirror has drifted (run in CI).
- `.github/workflows/sync-ig-template.yml` — scheduled + manual; opens a PR when
  the template repo has moved on.

Once the package is published to a registry, switch `ig.ini` to the pinned
package and delete this folder — see
[`docs/recipes/switch-template-to-published.md`](../docs/recipes/switch-template-to-published.md).
