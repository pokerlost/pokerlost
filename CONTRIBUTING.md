# 🤝 Contributing

This repository owns the private system map and cross-system requirements index.
Change component source, contracts and operational commands at their owners.

## 🚀 Prepare and check

Use the exact Git root with Git, Make, Docker and Buildx. Locked tool versions are
in [Dockerfile.quality](Dockerfile.quality) and the documentation requirements lock.
No product credential is needed for this documentation suite.

```bash
make help
make check
make ci-local
make release-check
```

The quick gate validates Markdown structure and relative links. The full gate adds
source identity, deterministic bundle build, inventory/checksum verification and
a receipt. See [development](docs/development.md). Report actual exit codes and
unavailable capabilities; a prose check is not a component runtime test.

## 🌿 Review and delivery

Read [AGENTS](AGENTS.md), review the full diff, and use one lowerCamelCase working
branch from current `test`. Open a PR into `test`; promotion is separately reviewed
`test` → `dev` → `main`, preserving ancestry. Required checks and reviews apply;
never force-push or delete permanent branches. Releases use the exact event SHA
and the [release contract](docs/release_guide.md). Registry publication and production
deployment require separate authorization.

Keep AS-IS and proposals explicit. A requirement without an implemented contract
or test must be marked planned. Link immutable source evidence and describe
compatibility, migration and rollback when applicable. Do not publish credentials,
private endpoints, personal data or coordination logs. Report sensitive issues
privately to the repository owner rather than attaching secrets to an issue.
