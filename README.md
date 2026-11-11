# ♠️ Pokerlost

Pokerlost is a set of independently owned libraries, templates, service foundations
and client applications. This private repository maps their boundaries and links
requirements to source evidence. Product account, ledger and multiplayer operations
remain planned.

The [private handbook](docs/README.md) links the existing team board, task workflow,
planning history and component evidence. Source delivery follows reviewed
working → test → dev → main PRs; a branch push alone does not accept a task.

## 🧩 Architecture

Start with the [component map](docs/service_map.md), the
[foundation request and table-entry case](docs/analysis/table_entry.md), and the
[architecture decisions](docs/decisions.md). Authoritative OpenAPI, database schemas,
engine rules and deployment commands stay in their component repositories.

`pokerService` exists remotely as a private FastAPI foundation; it is absent from
the supplied source package; its canonical local checkout is missing.
The setupSystem catalog already includes it.
Its source implements infrastructure routes, not table orchestration. See
[discovery and the integration prerequisite](docs/poker_service.md).

## 🚀 Work on this map

Read [CONTRIBUTING](CONTRIBUTING.md) and the pinned sources in [AGENTS](AGENTS.md).
From this exact Git root, use Git, Make and Docker with Buildx:

```bash
make help
make check
make ci-local
```

`check` checks documentation; `ci-local` additionally builds and verifies the
versioned source bundle. Reports remain in ignored `coverage/` and `dist/`.
These commands do not run the component integration suites. See
[development](docs/development.md), [versioning](docs/versioning.md) and
[release flow](docs/release_guide.md).

## 🔗 Owners and evidence

[platformInfra](https://github.com/pokerlost/platformInfra) owns Compose/Helm and
operational acceptance. [projectRules](https://github.com/pokerlost/projectRules)
is the active Pokerlost policy source; `.github` owns reusable delivery mechanics.
The separate [pokerDemo](https://github.com/pokerlost/pokerDemo/tree/dev) owns loopback
transport, terminal play and local recording with a pinned installed engine wheel.
New captures stay ignored in its `.local/recordings/`; repository access does not
publish them. The [historical public engine recording](https://github.com/serrja/serrja/blob/main/docs/engine_demo.md)
shows synthetic output. A recording or an old acceptance note does not establish
current full-system acceptance; inspect each exact source revision and CI result.

## 📄 License

Original documentation uses [MIT](LICENSE). Preserve [third-party notices](THIRD_PARTY_NOTICES.md)
and the [license inventory](docs/licenses.md); private sources retain their access boundaries.
