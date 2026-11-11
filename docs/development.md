# Development

This repository owns the private handbook and cross-service requirements index.
Component repositories own code, API and operational commands. GitHub Issues and
one private organization Project own shared tasks; personal notes stay private.

## Start a task

Find an existing issue before creating a duplicate, agree the scope and observable
acceptance, and link component issues to the goal. Do not invent dates, issue numbers
or evidence. The [sprint guide](sprints.md) preserves iteration dates, board views
and the review cycle. Project access remains separate from repository access.

Use the exact project root, read AGENTS and inspect status before writing. Preserve
unrelated changes and use one writer per checkout/index with scoped permissions.
Start a lowerCamelCase working branch from current test; never reset existing refs.
The [historical dev-first ADR](decisions/0001-dev-first.md) is retained as history.

## Native checks

From this repository root with Git, Make, Docker and Buildx:

```bash
make check
make ci-local
```

The quick gate checks documentation and native VERSION regression. The full gate
adds source identity, deterministic bundle build and byte/checksum verification.
Reports remain ignored in coverage/ and dist/. These checks do not execute component
runtime, template update, database, browser or deployment suites. Native commands
for those contracts belong to their component owners. Report actual exit codes;
missing or failed checks are not successful acceptance.

`make help` lists commands; `make version` reads VERSION. `make coverage` reports
the existing result without rerunning checks; `make release-check` verifies the
built archive. Ignored receipts preserve source commit, dirty/content identity,
commands, tool versions, exit codes and hashes. Hosted CI uses the same entrypoint.
The first locked tool-image build may need network access. After preparing exact
inputs, `make ci-local OFFLINE=1` validates that cache and runs without network;
missing or changed inputs fail. Shared Make/source/receipt helpers remain reviewed
pythonTemplate snapshots, refreshed through their owning engineering mechanism.

## Review and delivery

Review the full diff, staged paths and accidental secrets. Use conventional scoped
commit and PR titles. Link an actual issue when applicable; never invent one for
formatting. Open the working branch into test, then separately review test → dev
and dev → main PRs, preserving ancestry and exact head identity. Do not push directly
to permanent branches, force-push, delete them or bypass checks.

Every applicable dev/main push, including documentation, requires a release for its
exact event SHA after successful native checks. See [versioning](versioning.md) and
[release flow](release_guide.md) for native metadata, channel and recovery. Registry
publication and deployment require separate authorization. Environment selection
is independent of source branches; local is a process configuration, not a branch.

## Outcome and history

Move work to Review with the full source SHA, changed behavior, actual command
results and unresolved acceptance. A merged PR, green CI or release does not itself
prove runtime integration or close every linked task. Keep implementation,
verification, promotion and acceptance distinct. Follow the [sprint review
cycle](sprints.md#working-cycle) for the agreed outcome.

The [handbook](README.md) and [architecture](architecture.md) link component owners.
Git preserves source/document history; issues, discussions and Project fields live
in GitHub. A clone is not an offline copy of the task system. Preserve existing
visibility, memberships, App access, data and historical tags.
