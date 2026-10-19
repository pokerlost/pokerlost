# Pokerlost component map

This private map describes component ownership and the implemented development foundations. It is not a checkout inventory or a claim that open PRs are merged. setupSystem owns checkout locations; component PRs and CI artifacts own current revisions and verification results.

## Components

| Component | Owns | Current boundary |
| --- | --- | --- |
| [pythonTemplate](https://github.com/serrja/pythonTemplate/pull/1) | Generic Python engineering, packaging, quality and Copier source | Independent CLI/library profiles; source archive privacy and real update tests |
| [fastApiTemplate](https://github.com/serrja/fastApiTemplate/pull/1) | Generic FastAPI lifecycle, TestClient tests, optional persistence, Docker and service chart | Runtime optional DB profile, installed-artifact tests, migrations and native delivery tools |
| [serviceTemplate](https://github.com/pokerlost/serviceTemplate/pull/1) | Pokerlost protocol, scopes and private SDK specialization | Infrastructure routes and fail-closed verifier composition; no fake business API |
| [pypokerlost](https://github.com/pokerlost/pypokerlost/pull/1) | Python HTTP SDK, generated HTTP contracts and token-store ports | Actual OpenAPI generation; absent server operations produce no invented client methods |
| [pokerengine](https://github.com/pokerlost/pokerengine/pull/9) | Authoritative C++20 rules, state, events and public/player/trusted views | Python is a binding/adapter; reference TCP/curses applications are preserved |
| [authService](https://github.com/pokerlost/authService/pull/1) | Future principals, grants, sessions and token lifecycle | Foundation routes; PostgreSQL wiring and historical migration history preserved; issuance/revocation pending |
| [accountsService](https://github.com/pokerlost/accountsService/pull/1) | Future account/password records and identity assertions | Foundation routes; PostgreSQL wiring and historical migrations preserved; account operations pending |
| [virtualMoney](https://github.com/pokerlost/virtualMoney/pull/1) | Future internal ledger, holds and table escrow | Proposed foundation in PR; no active ledger API or invented migration history |
| [pokerService](https://github.com/pokerlost/pokerService/pull/1) | Future table/session ownership and serialized engine commands | Foundation only; gameplay transport, reconnect and settlement contracts pending |
| [cryptoService](https://github.com/pokerlost/cryptoService/pull/1) | Future external network/provider observation adaptation | Foundation only; no wallet, custody, provider or payment route |
| [pokerClient](https://github.com/pokerlost/pokerClient/pull/1) | Dart contract, shared Flutter gameplay package and web entry application and retained native source runners | Runnable explicit synthetic preview; production source reports unavailable. No Python CLI/package or template recovery dependency |
| [pokerWeb](https://github.com/pokerlost/pokerWeb/pull/1) | Vue 3/TypeScript pages, navigation, accessibility and Flutter host lifecycle | Loads one pinned client-produced bundle and typed bridge; no second renderer or embedded SDK credentials |
| [pokerGateway](https://github.com/pokerlost/pokerGateway/pull/1) | Traefik OSS routing, verified TLS/WebSocket behavior and Gateway API chart | No Docker socket/provider, dashboard, application launcher or mutation retries |
| [platformInfra](https://github.com/pokerlost/platformInfra/pull/1) | Artifact compatibility lock, Compose/Helm composition and data-only values adapter | Explicit preview and full-foundation targets; missing service artifacts stop full startup before side effects |

## Data and gameplay boundaries

Accounts and authorization own their respective future records. virtualMoney owns financial invariants; cryptoService adapts external observations rather than creating a second ledger. No service reads or writes another service's database. Only authService and accountsService currently select the PostgreSQL foundation profile; other services receive no fictitious database wiring.

pokerService will coordinate authoritative engine commands. The shared Flutter widgets and embedded Flutter view present an allowed public/player snapshot and user intent; neither implements shuffle, legal betting, settlement, ledger decisions or another player's private cards. Preview data is synthetic and explicitly selected. No production realtime protocol is inferred from the engine reference NDJSON server, and a Python SDK is not imported into Dart or TypeScript.

Client updates are reviewed Dart/Flutter changes. The Python → FastAPI → service template chain belongs to backend sources and has no arrow into pokerClient. Its artifact export and verification run in Dart.

Vue owns HTML pages and the embed boundary. One engine promise and one active view lease govern loading, cancellation, removal, re-entry and context/events. The site serves the pinned bundle and versioned same-origin assets. Browser authentication, native secure storage and network adapters await actual server contracts; there are no refresh tokens or SDK App keys in client assets.

## Delivery boundaries

Traefik file-provider configuration serves Compose; the owner chart pins the official controller image for Gateway API. platformInfra consumes checksum-verified owner chart packages and records client bridge/manifest/source identity. Compose/Helm perform the lifecycle directly, without a runtime administration service or duplicated source checkout catalog.

Local acceptance has exercised real Flutter rendering through Compose and Kind, HTTPS with verified CA/SNI, failure recovery, replica rollout and retained PostgreSQL PVCs. These checks do not establish a production cluster or full service readiness. Private SDK builds use an approved solo-owner/full-SHA model; the owner must activate the six CI-only PR #2 and provision the existing SDK-only App secrets. This is owner policy, not server-enforced reviewer protection. The private game package grants only pokerWeb Read under Actions access; an actual consuming Actions pull is required to prove it. Visibility and the SDK App installation remain unchanged.

Web client delivery is supported; Android/iOS/macOS/Linux desktop delivery is deferred with source runners retained. Coverage below 100% is advisory; missing/corrupt/stale reports and real test/build/type/configuration/access failures remain errors. Incomplete scopes are explicit and do not by themselves keep a PR Draft. Release and migration compatibility decisions are separate from package, generator, bridge and chart version numbers. Remote cluster use, merge, release, live database changes and production deployment are outside the authorized task.
