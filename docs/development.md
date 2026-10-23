# Development

Daily policy: use `dev`, run `make lint`, inspect the staged diff, then explicitly
`git push origin dev`. `main` and `test` are preserved. Test, typecheck, build,
coverage and full acceptance commands below are manual. New manual Actions in
`dev` may require a later authorized default-branch activation.

Shared tasks live in GitHub Issues and one private organization Project. This repository owns the team handbook and cross-service goals; component repositories own their code, API and operational instructions.

## Start a task

Choose a goal, find an existing issue before creating a duplicate, and agree the scope and acceptance criteria. Create a component issue for implementation or a goal issue here with measurable results and links to child issues. Native parent/sub-issue relationships are optional; ordinary links remain sufficient. Do not invent dates, estimates, issue numbers or historical events.

Use the [sprint guide](sprints.md) for iteration dates, current scope, board views and the team cycle. Keep task status in the existing Project and detailed criteria/evidence in the owning issue.

## Branches and checkout

`main` is the preserved default branch, `dev` receives new work, and `test` is reserved for separately approved candidates. Bootstrap absent dev/test refs from a verified current main; never reset existing refs or discard unique work. `local` is an environment, not a branch.

After those branches actually exist, a participant with existing repository access can use:

```bash
git clone git@github.com:pokerlost/pokerlost.git
cd pokerlost
git fetch origin
git switch --track origin/dev
```

For an existing checkout with local dev, use `git fetch origin` and `git switch dev`. Read current AGENTS, inspect status and preserve unrelated changes. Use one writer per checkout/index and an address-scoped session for repository writes. Keep private backups outside public source.

## Ordinary delivery

Implement in dev, run the applicable lint and formatting checks, review the full diff and staged paths for conflict markers and accidental secrets, then commit with `Refs owner/repo#N` using a real issue number. Push explicitly with `git push origin dev`. No automatic merge, release, deployment, global `--no-verify`, force push or blanket tag publication.

Do not assume `make lint` is cheap: inspect its dependencies and hooks first. Older Make interfaces in these repositories can build a tools image or execute broader checks. Until their dev migration is actually applied, invoke the documented pinned native lint tools directly. Tests, coverage, typecheck, packaging, integration and `ci-local` are separate manual acceptance operations. Coverage below 100% is advisory; a failed manually requested test remains a failure.

A dev push may trigger only a credential-free lint workflow. Review all old triggers before creating refs; preserve main/test protection checks. Heavy workflow replacement, hooks and Make adoption require implementation evidence. A new `workflow_dispatch` file only on dev is not a working default-branch entrypoint. Do not switch the default branch or merge into main to manufacture a button.

## Review and outcome

Follow the [sprint review cycle](sprints.md#working-cycle). An ordinary implementation remains in Review after dev push until the agreed criteria are accepted. Record source implementation, verification and promotion separately:

```text
implementation: implemented_in_dev
source: <full dev SHA and real issue/code links>
verification: lint_passed; tests_not_run_by_policy
promotion: dev
remaining: <actual blocker or next agreed step>
```

A documentation-only task may reach Done after content review without runtime tests. Push, dev merge and green lint alone do not mark work Done. `Fixes` keywords do not guarantee issue closure from a non-default branch; use explicit links and a deliberate status decision.

## Versions and manual promotion

Each artifact owns its version. New dev snapshots use an actual next unstable version consistent with metadata and an explicitly selected annotated tag. The annotation states `development snapshot; lint-only; tests not run` and the real scope. Preserve published tags; an unchanged repository needs no artificial bump.

Promotion into test/main, new main/test commits, releases and production deployment require a separate owner request. Future manual activation must retain real exit codes and source SHA evidence. See [versioning](versioning.md) and [release procedure](release-guide.md) for artifact-specific details; this current dev-only policy governs ordinary work.

## Knowledge and history

The [handbook](README.md) and [architecture](architecture.md) link to component owners rather than copying service manuals. Personal Obsidian notes provide private navigation and drafts; participants do not need Obsidian. Git history records source and documents, while GitHub stores tasks, discussions and Project changes. A repository clone is not an offline copy of the task system.
