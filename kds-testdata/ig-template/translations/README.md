# `translations/` — German UI-string catalogs (vendored)

These are the **base template's own** German UI-string catalogs, vendored here
from [`HL7/ig-template-base2`](https://github.com/HL7/ig-template-base2) `main`
(CC0-1.0, the same licence as this template).

> **Why vendored:** this template pins `fhir2.base.template` to the fixed release
> **0.1.0** for reproducibility, and that release ships catalogs for
> `ar`/`es`/`fr`/`nl`/`pt`/`ru` — **but not `de`**. German was added upstream only
> *after* 0.1.0 was cut. Without a German catalog, every base-provided UI string
> (`site.data.stringsBase['de'][…]`) renders **blank** on the German `/de/`
> pages — visibly: the footer loses its copyright, package and generated-date
> lines, and other base chrome loses its labels.
>
> Adding the files here is additive: template files are layered base-then-child,
> so these new filenames supplement the base catalogs rather than replacing them.

**Upkeep:** when the pinned base is bumped to a release that ships `de` itself,
delete this folder — the base's own catalogs then apply. The scheduled dependency
checker watches `fhir2.base.template`, so that bump surfaces in the
dependencies tracking issue.
Re-apply the one change listed below, or check first whether the bumped base has
made it unnecessary.

Source files:

- `stringsArtifacts-de.po` — unmodified copy.
- `stringsBase-de.po` — one deliberate change, in the `TRANS_HLP` entry: the
  link is written as HTML (`<a href='…'>hier</a>`) instead of markdown. The pinned base inserts this string without `| markdownify`, so
  markdown link syntax reached the rendered page verbatim and every German page
  showed a literal `[hier](translationinfo.html)`. HTML renders as a link both
  on the pinned base and on the newer upstream one that does apply
  `markdownify`. The same defect is visible in HL7's own reference IG
  (FHIR/multi-lang-test-ig) and should be raised upstream against
  [`HL7/ig-template-base2`](https://github.com/HL7/ig-template-base2). The href
  is single-quoted on purpose: no upstream catalog escapes a double quote, so
  the reader's handling of that is unproven, and single quotes need no escaping.

> **Keep the rationale here, not in the `.po`.** The IG Publisher's PO reader
> aborts the whole build with `Publishing Content Failed: Name is null` when an
> entry carries extra comment lines between its `# NAME` and `#: NAME` lines.
> The vendored catalogs must stay structurally identical to upstream — only
> `msgstr` values may differ.

> **Upstream:** the missing `markdownify` is a defect of the pinned base, not of
> the German text — HL7's own reference IG `FHIR/multi-lang-test-ig` shows the
> same literal brackets in every translated language. Worth raising against
> `HL7/ig-template-base2`.
