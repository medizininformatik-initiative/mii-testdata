<!-- markdownlint-disable MD041 -->
<!-- The MII template links this page from the translation notice it prints at
     the top of every German page ("... finden Sie hier"). Without it every
     /de/ page carries a broken link. German mirror:
     input/translations/de/pagecontent/translationinfo.md. -->

This guide is written in **English** (the default language); **German** is the
translation. English is therefore both the base rendering of the guide and the
`/en/` rendering; use the language switcher at the top right to move between
`/en/` and `/de/`.

Translated pages live under `input/translations/de/pagecontent/` (same file name
as the English page), the German menu under `input/translations/de/includes/`,
and the page titles in the catalogue
`input/translations/de/ImplementationGuide-de.medizininformatikinitiative.kerndatensatz.testdata.po`.
The two generated fragments on the test-coverage page (coverage table and gap
view) are produced per language by `scripts/ms-coverage.py` and
`scripts/build-gap-page.py`.

**Translation coverage:** every narrative page of this guide exists in both
languages. The example instances themselves are not translated: their
descriptions and clinical texts are German where the simulated source system
would write German, and the names of the artifact groups on the artifacts page
are English in both renderings. Feedback on the translations is welcome as an
issue in the
[repository](https://github.com/medizininformatik-initiative/mii-testdata/issues).
