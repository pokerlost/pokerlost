# Pokerlost handbook

This private handbook owns team-wide decisions, navigation and development workflow. Component documentation remains with its repository; personal notes and university materials remain private and outside Git.

## Navigation

- [Development and task workflow](development.md)
- [Architecture and boundaries](architecture.md)
- [Component ownership](serviceMap.md)
- [Dev-first decision](decisions/0001-dev-first.md)
- [Versioning](versioning.md) and [release procedure](release-guide.md)
- [Licenses](licenses.md) and [historical migration evidence](change-ledger.md)

## Shared planning

The canonical board is the private organization Project [Pokerlost — разработка](https://github.com/orgs/pokerlost/projects/1), verified in Chrome. Its views are План (table), В работе (board), and Цели (table grouped by parent issue). The current [dev-first goal](https://github.com/pokerlost/pokerlost/issues/4) links the implementation work. Repository issues own tasks and bugs; an issue in this overview owns a cross-service goal and links its component tasks.

Project access and repository access are separate. A member who can read the board still needs existing repository access to read a private issue. The new Project uses Read as its organization base role; the existing owner retains Admin. No collaborator invitations or repository ACL changes were made. The default PR-merged → Done automation is disabled: a dev merge is not owner acceptance. Preserve visibility, membership and App permissions. Propose any required repository ACL change separately for owner approval.

## History and offline use

Code and documentation history live in Git commits. Issue discussions, fields and Project history live in GitHub and are not included in a clone or bundle. An explicit private export of an accessible Project view is a dated snapshot and does not promise complete comment or field history. No second editable task master or background sync is required.

Development documentation is reviewed on `dev`; `main` retains the accepted previous version until separately authorized promotion. A dev push does not update the organization's or user's default-branch profile.
