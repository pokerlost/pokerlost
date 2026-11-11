# 🧩 pokerService discovery

The historical package omits `pokerService`, but the remote repository exists.
Creating a replacement would duplicate an existing owner and source history.

## 🔎 Confirmed source

Remote identity is `pokerlost/pokerService`, private and active; default branch is
`main`. On 10 November 2026 the reviewed main/test commit was
`49de7e063e5dd1a467aeaafb712ed95bf507f6c5` and dev was
`7db495c1bb7783e499a1a63b85cf805cfe23047f`. No local checkout existed in the
assigned workspace. setupSystem already declares the repository in its catalog
(`5e5412b763ddbe270e7109c10f02ce3512b44fd4`, `manifests/projects.toml`);
keep that entry. These are discovery facts, not runtime acceptance.

At the reviewed [README](https://github.com/pokerlost/pokerService/blob/49de7e063e5dd1a467aeaafb712ed95bf507f6c5/README.md),
[factory](https://github.com/pokerlost/pokerService/blob/49de7e063e5dd1a467aeaafb712ed95bf507f6c5/src/pokerservice/app.py)
and [operation tests](https://github.com/pokerlost/pokerService/blob/49de7e063e5dd1a467aeaafb712ed95bf507f6c5/tests/foundation/test_operations.py),
the implemented scope is FastAPI health/root/OpenAPI, fail-closed authorization
and observability. The tests assert only `/` and `/getOpenApi` in the pristine
OpenAPI document. The sample POST operation is test-only.

## 🔗 Ownership and prerequisite

The owner assigned the existing pokerService repository to group 01 and its
integration to group 08 on 10 November 2026. Group 01 needs a separate scoped
checkout/session before service changes; group 08 consumes the reviewed contract
and artifact. Group 02 does not modify this repository.

Full-profile acceptance is **BLOCKED** until groups 01/08 confirm the scoped checkout,
reviewed source/artifact pin, SDK access, supported build and runtime checks, and
the consuming composition contract. The foundation/web subset is documented by
platformInfra; this map does not claim that subset was rerun here.

Future orchestration would own table/session lifecycle and serialize commands to
pokerengine. Engine invariants stay with pokerengine; balances/holds stay with
virtualMoney; clients receive allowed public/player views. Table entry, reconnect,
settlement and idempotency require explicit contracts and acceptance before that
planned responsibility becomes implemented capability.
