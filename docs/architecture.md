# Architecture

The [component map](serviceMap.md) owns the detailed catalog. This page summarizes the boundaries needed for team planning, without duplicating service API or operations manuals.

## Runtime ownership

Vue owns site navigation and embeds the Flutter gameplay artifact owned by pokerClient. Traefik selects fixed configured backends using the typed service identifier; that identifier does not grant authorization. Services enforce their own authorization and data boundaries. C++ pokerengine owns authoritative rules; its Python bindings and examples are adapters. pypokerlost owns the Python HTTP contract and does not run inside the Dart client.

Compose and Helm in platformInfra own process composition. Existing data paths, volumes and credentials are preserved; changes to source configuration do not constitute a running deployment. The component map records planned product operations separately from implemented foundations.

## Source composition

The Python foundation flows from pythonTemplate to typerTemplate, and through fastApiTemplate to serviceTemplate. These are reviewed source snapshots used for generation and explicit updates. Generated applications do not depend on neighboring template checkouts at runtime. Dart/Flutter uses its own tooling and version ownership.

## Environment contract

`main`, `dev`, `test` and `local` describe explicit process configuration. Git branches describe source history; there is no runtime lookup of `.git` and no `local` branch. Remote endpoints must be supplied by trusted application configuration, and an absent endpoint must fail before network I/O. Service identity, auth audience, credentials and release version are separate concepts.

Source implementations now exist in dev:

| Owner | Exact implementation | Boundary |
| --- | --- | --- |
| pypokerlost | [5b3b0e02564e3063232fd9b422c889dc9170c0c3](https://github.com/pokerlost/pypokerlost/commit/5b3b0e02564e3063232fd9b422c889dc9170c0c3) | Explicit environment/client factory, origin validation and bound auth context |
| pokerWeb | [26e2f5baf9c308873bc32745b688e16d833ffd60](https://github.com/pokerlost/pokerWeb/commit/26e2f5baf9c308873bc32745b688e16d833ffd60) | Typed HTTP client configuration; gameplay integration remains separate |
| pokerClient | [2337ab23f5e45f1f7e84764e7fa31a608432b892](https://github.com/pokerlost/pokerClient/commit/2337ab23f5e45f1f7e84764e7fa31a608432b892) | Dart HTTP environment and bearer-origin boundary |
| platformInfra | [9518aa2506ed5fe832b82e0afd976c9a79f683ce](https://github.com/pokerlost/platformInfra/commit/9518aa2506ed5fe832b82e0afd976c9a79f683ce) | Environment separate from execution context, scoped state paths and read-only plan |
| serviceTemplate | [62e43ff7438c855964b625535f3ebdac50b09ee3](https://github.com/pokerlost/serviceTemplate/commit/62e43ff7438c855964b625535f3ebdac50b09ee3) | Typed process setting propagated through the reviewed source composition |

These snapshots passed lint only. Missing remote endpoints remain not configured.
Legacy direct SDK usage remains compatible; consuming services retain their existing
SDK dependency pins until a separate dependency update. Source settings do not
provision remote databases, secrets, namespaces or running isolation. Template
render/update suites and runtime integration were not run in this pass.

## Decisions and operations

The [dev-first decision](decisions/0001-dev-first.md) records the current delivery policy. Existing [platform operations](https://github.com/pokerlost/platformInfra/tree/main/docs) and component READMEs remain authoritative for commands and recovery. A new decision may explicitly supersede an earlier ADR; historical context is not rewritten as if it had always been current.
