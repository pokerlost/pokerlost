# Migration and removal evidence

[Home](../README.md) · [Component map](serviceMap.md) · [Licenses](licenses.md)

Baseline Git refs and private pre-task archives were preserved before edits.
The private evidence records full source SHAs, exact rename/delete inventory and
backup locations. No reset, prune, branch cleanup, history rewrite or data-volume
removal was used as a substitute for the new work.

| Source | Purpose / evidence of replacement | Replacement and preservation | Verification |
| --- | --- | --- | --- |
| SDK flat runtime tree | One active runtime package was required; keeping two copies would make imports ambiguous | Git records 69 renames into src/pypokerlost; original public imports remain, old refs/archive retained | 504 installed-wheel tests, foreign cwd import, wheel/sdist and installed generator |
| pokerWeb deploy/nginx.conf | Old monolithic active config was superseded by the static-only routing ADR | Logical includes in deploy/nginx plus explicit local environment; old Git blob/archive retained | nginx -T/-t, real HTTP/cache/MIME/security behavior and actual browser lifecycle |
| Personal profile decorative logo | Removed only after checking its profile consumers and updating the local AGENTS contract | Useful generated role/stack banner and accessible text; old source refs retained | Real light/dark, narrow/wide Chrome readback and anonymous asset GET |
| Repeated full root AGENTS bodies | Short entrypoints now pin common/project norms; local contracts still have distinct owners | Full owner contracts preserved in local development documents; consumer LOCAL_CONTRACTS bytes retained | Source comparisons, native docs and composition/update checks |
| Old active service-prefix routing/docs | Replaced by one typed HTTP header-selection contract | SDK owns IDs; infrastructure owns named upstreams; no SPA API fallback or second live prefix scheme | Real HTTP/1.1, HTTP/2, TLS/WS, auth/error and fail-closed proxy matrix |

All 196 unrelated original vault files were preserved; no existing note, checkbox,
attachment or Drive object was deleted. The one project-scope test note was created
and removed by this task. Drive moves preserve IDs and rights; private evidence
records before/after metadata. Jobdesk code, history, runtime, data and the agreed
resume/hh.ru changes were preserved. The organization logo remains in use and was
not treated as the personal profile's obsolete asset.
