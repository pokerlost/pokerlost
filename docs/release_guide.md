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

The workflow calls the reviewed shared provider at `637ff1b505b0b9fb54847d46927a9596b1ebc967`
using the native VERSION adapter. Private branch protection is unavailable on the
current GitHub plan. The owner-approved G02 delivery exception permits ordinary
checked PR merges without that feature. It does not waive available checks/reviews
or authorize admin bypass, visibility/settings changes, force-push or deletion.
Recheck actual protections before each merge and revisit the exception when support
becomes available. GitHub Releases do not authorize production deployment or
package/container registry publication.
