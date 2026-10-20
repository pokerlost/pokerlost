# Pokerlost

Pokerlost is a set of independent libraries, templates, service foundations and client applications. This private repository provides navigation; development acceptance does not establish a deployed game, account system or payment product.

## Architecture

The [component map](docs/serviceMap.md) records ownership and current boundaries. The main client is Dart/Flutter, the website is Vue/TypeScript, and both render gameplay through one Flutter package owned by pokerClient. Traefik owns the gateway; native Compose and Helm own composition in platformInfra. No application-start API or custom orchestration daemon is introduced.

The Python foundation, Typer CLI specialization and generic FastAPI base belong to `serrja`; serviceTemplate adds Pokerlost protocol and SDK conventions. Generated services run independently of template checkouts. pypokerlost is the Python HTTP SDK, while pokerengine owns authoritative C++ rules and its Python binding. The engine's installed-wheel TCP/console demo completes a real synthetic hand; [public recordings](https://github.com/serrja/serrja/blob/main/docs/engine_demo.md) expose safe outputs while source remains private.

## Development and delivery

Use the sole checkout catalog in setupSystem, open the exact repository root, read its AGENTS and owner document, and run that repository's commands. Template changes flow through reviewed parent snapshots and actual Copier updates. Python backend engineering/versioning rules belong to pythonTemplate; application contracts and migration histories remain with their owners. pokerClient owns its Dart/Flutter commands and version policy, with no Python package or template update dependency.

Use [platformInfra](https://github.com/pokerlost/platformInfra) as the single deployment entrypoint. Its full local build path includes the real Vue/Flutter bundle, Nginx, header-routing gateway, five foundations, two PostgreSQL databases and Prometheus/Grafana/Loki/Alloy. Real HTTP, browser and telemetry queries have passed on pinned source artifacts. Registry mode remains gated on missing image digests/read access; local acceptance does not imply production readiness. Product account, token, ledger, payment and multiplayer operations remain pending. Source tests, coverage, installed wheels, image execution, PostgreSQL, browser and Kubernetes checks are distinct results; inspect the exact PR head and CI artifacts for each.

Releases and production/remote-cluster deployment require separate owner decisions.

From this exact Git root, `make ci-local` checks Markdown/links once, builds a versioned
source bundle and verifies its bytes. `make version` reads [VERSION](VERSION);
`make coverage` reports the current documentation result without rerunning checks.
Git, Make and Docker suffice; product runtime coverage and deployment are not applicable.
See [development](docs/development.md), [versioning](docs/versioning.md) and
[release workflow](docs/release-guide.md). Reports stay in ignored `coverage/`.

Web client delivery is supported now; native client targets are deferred with source runners retained.
Coverage below 100% is advisory across the components; actual test, build, type, report and access errors still fail.

[License inventory](docs/licenses.md) · [Migration/removal evidence](docs/change-ledger.md)

## 📄 License

Original source/documentation uses [MIT](LICENSE). Preserve the
[third-party notices](THIRD_PARTY_NOTICES.md); upstream assets, distributions and
private data retain their own terms and access boundaries.
