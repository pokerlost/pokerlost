# 📦 Release guide

The system map is independently versioned documentation, with [VERSION](../VERSION)
as its native version intent. Release mechanics belong to `pokerlost/.github`.

## 🌿 Promotion

Use a reviewed working branch → `test` PR, then distinct ancestry-preserving
`test` → `dev` and `dev` → `main` PRs. Before merge verify repository, base/head,
exact head SHA, full diff, checks, reviews and protections. Use exact-head guarded
merge and read back the resulting merge SHA. No admin bypass or protection downgrade.

## 🏷️ Event identity

Every new dev/main push, including docs-only, requires successful native checks and
an exact-event release: dev `vX.Y.Z-dev.N` (prerelease, not latest), main `vX.Y.Z`.
Version allocation derives from accepted tags/releases and native version intent;
no version commit is pushed back to a permanent branch. The publisher injects the
resolved native version into an isolated archive. Retry the original run to recover
partial publication; never substitute the current branch head.

Until a reviewed reusable workflow pin and enforceable protections are available,
publishing/promotion remains **BLOCKED**. In this private repository the protection
API returned HTTP 403 with a GitHub plan restriction during baseline; do not change
visibility or use an unprotected merge to work around it. Local checks and reviewed
working-branch PRs remain useful. GitHub Releases do not authorize production deploy
or package/container registry publication.
