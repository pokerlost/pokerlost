# Pokerlost

Pokerlost is a set of independent libraries, templates, service foundations and client applications. This private repository provides navigation; development acceptance does not establish a deployed game, account system or payment product.

## Architecture

The [component map](docs/serviceMap.md) records ownership and current boundaries. The main client is Dart/Flutter, the website is Vue/TypeScript, and both render gameplay through one Flutter package owned by pokerClient. Traefik owns the gateway; native Compose and Helm own composition in platformInfra. No application-start API or custom orchestration daemon is introduced.

The Python foundation, Typer CLI specialization and generic FastAPI base belong to `serrja`; serviceTemplate adds Pokerlost protocol and SDK conventions. Generated services run independently of template checkouts. pypokerlost is the Python HTTP SDK, while pokerengine owns authoritative C++ rules and its Python binding. The engine's TCP/curses examples remain reference applications.

## Development and delivery

Use the sole checkout catalog in setupSystem, open the exact repository root, read its AGENTS and owner document, and run that repository's commands. Template changes flow through reviewed parent snapshots and actual Copier updates. Python backend engineering/versioning rules belong to pythonTemplate; application contracts and migration histories remain with their owners. pokerClient owns its Dart/Flutter commands and version policy, with no Python package or template update dependency.

Local Compose and disposable Kind acceptance exists for the website, real pinned Flutter bundle, gateway and local PostgreSQL storage. Full service composition remains gated on owner-admitted private SDK acquisition and verified service image digests. Product account, token, ledger, payment and multiplayer operations remain pending. Source tests, coverage, installed wheels, image execution, PostgreSQL, browser and Kubernetes checks are distinct results; inspect the exact PR head and CI artifacts for each.

Releases and production/remote-cluster deployment require separate owner decisions.

From this exact Git root, `make check` runs whitespace and Markdown/link checks in Docker.
`make coverage` reads that fresh result without rerunning checks. Coverage, distributions and
runtime acceptance are `notApplicable` for this documentation repository. Git, Make and Docker
suffice; no application SDK is needed.

Web client delivery is supported now; native client targets are deferred with source runners retained.
Coverage below 100% is advisory across the components; actual test, build, type, report and access errors still fail.
