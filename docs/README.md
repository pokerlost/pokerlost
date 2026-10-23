# Pokerlost handbook

This private handbook owns team-wide decisions, navigation and development workflow. Component documentation remains with its repository; personal notes and university materials remain private and outside Git.

## Navigation

- [Development and task workflow](development.md)
- [Current sprint and team cycle](sprints.md)
- [Architecture and boundaries](architecture.md)
- [Component ownership](serviceMap.md)
- [Dev-first decision](decisions/0001-dev-first.md)
- [Versioning](versioning.md) and [release procedure](release-guide.md)
- [Licenses](licenses.md) and [historical migration evidence](change-ledger.md)

## Shared planning

The existing private [Pokerlost board](https://github.com/orgs/pokerlost/projects/1) connects repository tasks to the [shared goal #4](https://github.com/pokerlost/pokerlost/issues/4). Start with the [current sprint](https://github.com/orgs/pokerlost/projects/1/views/2); [sprints](sprints.md) documents its scope, iteration dates, views and review cycle.

Project and repository access are separate. The PR-merged → Done automation is disabled. Preserve existing visibility, membership and App permissions. A dev push or merge does not accept a task or promote it to main/test; result and verification are recorded separately.

## History and offline use

Code and documentation history live in Git commits. Issue discussions, fields and Project history live in GitHub and are not included in a clone or bundle. An explicit private export of an accessible Project view is a dated snapshot and does not promise complete comment or field history. No second editable task master or background sync is required.

Development documentation is reviewed on `dev`; `main` retains the accepted previous version until separately authorized promotion. A dev push does not update the organization's or user's default-branch profile.
