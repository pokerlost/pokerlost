# 🧩 Foundation request and table entry

This case separates a source-backed technical foundation request (AS-IS) from a
proposed virtual-funds table-entry flow (TO-BE). It is a requirements index, not a
claim that a multiplayer backend or ledger API exists.

## 🎯 Actors and boundary

| Actor/component | Responsibility | Current capability |
| --- | --- | --- |
| Player / Flutter | Submit intent; display permitted public/player state | Synthetic preview; product authorization pending |
| Vue host | Load the client artifact and manage embed lifecycle | Component-owned implementation; no ledger authority |
| Gateway / SDK | Route exact service identity, preserve operation and wire fields | Foundation contract; routing is not authorization |
| pokerService | Serialize table commands and coordinate entry | Existing FastAPI foundation; orchestration planned |
| virtualMoney | Reserve/release virtual funds atomically | Foundation; ledger/hold contract planned |
| pokerengine | Validate authoritative game commands and views | Component implementation; service integration pending |

ServiceId, token audience, scope and deployment name are separate concepts.
A hold is virtual accounting, not custody or a real-money payment.

## 🔎 AS-IS: executable foundation evidence

At pokerService commit `49de7e063e5dd1a467aeaafb712ed95bf507f6c5`, the
[operation test](https://github.com/pokerlost/pokerService/blob/49de7e063e5dd1a467aeaafb712ed95bf507f6c5/tests/foundation/test_operations.py)
asserts pristine OpenAPI has only `/` and `/getOpenApi`; a POST sample exists only
inside a test. The [factory](https://github.com/pokerlost/pokerService/blob/49de7e063e5dd1a467aeaafb712ed95bf507f6c5/src/pokerservice/app.py)
keeps direct-origin routing separate from gateway selection and creates request
correlation IDs. This source inspection does not establish a passing runtime run.

After an assigned owner provides a scoped checkout and locked SDK access, the
component-native reproduction is:

```bash
uv sync --locked
uv run --locked pytest tests/foundation/test_operations.py tests/foundation/test_authorization.py
```

Run it in the pokerService root, not here. No credentials or production host are
embedded. The [discovery prerequisite](../poker_service.md) blocks full-profile
acceptance until the assigned producer supplies a verified artifact.

## 📝 TO-BE stories and use case

US-01: As a player with available virtual funds, I want one table-entry intent to
reserve the buy-in and join once. Given a valid session and sufficient funds, when
one intent is accepted, then one hold and one seat result.

US-02: As a player recovering a timeout, I want to learn the result of the same
intent without a second debit. Given an ambiguous response, when that intent is
retried, then the original outcome is returned or recovery remains explicitly pending.

UC-01 preconditions: authenticated player, eligible table, agreed hold/idempotency
contract. Main flow: validate → reserve → serialize engine entry → confirm outcome.
Insufficient funds rejects before entry; failed entry compensates the same hold;
a timeout triggers reconciliation of the original intent, not a new reservation.
No operation path, event schema or storage table below is a published API.

Mermaid sequence source (TO-BE):

```text
sequenceDiagram
    actor Player
    participant Service as pokerService (planned)
    participant Ledger as virtualMoney (planned)
    participant Engine as pokerengine
    Player->>Service: enter intent with stable request identity
    Service->>Ledger: reserve once (contract pending)
    alt reservation rejected
        Ledger-->>Service: rejection
        Service-->>Player: entry rejected
    else reservation accepted
        Service->>Engine: serialized entry command
        alt engine accepts
            Engine-->>Service: allowed state
            Service-->>Player: seat and hold outcome
        else entry fails
            Service->>Ledger: compensate same hold
            Service-->>Player: failed or recovery pending
        end
    end
    Player->>Service: retry same intent after timeout
    Service-->>Player: original outcome or explicit pending recovery
```

## 🔗 Requirements, verification and ownership

| ID | Requirement / acceptance | Contract or test | Status / owner |
| --- | --- | --- | --- |
| FND-01 | Pristine foundation does not advertise business operations | `test_pristine_openapi_keeps_infrastructure_exceptions` at the linked SHA | Source inspected; runtime not rerun / group 01 producer |
| FND-02 | Missing/malformed credentials, wrong audience/scope and unconfigured verifier fail closed | `src/pokerservice/authorization.py`, `tests/foundation/test_authorization.py` at the same SHA | Source inspected; runtime not rerun; combined gateway/auth integration pending / groups 01,08 |
| ENTRY-01 | One accepted intent produces at most one hold and seat | Hold + engine-entry contract/test pending | PLANNED / virtualMoney and pokerService owners |
| ENTRY-02 | Repeated delivery cannot change balance twice | Idempotency/concurrent-delivery tests pending | PLANNED / ledger owner |
| ENTRY-03 | Failed entry compensates or exposes recoverable pending state | Failure/reconcile tests pending | PLANNED / orchestrator and ledger owners |
| VIEW-01 | Client receives only authorized player/public state | Engine view contract and integration handoff H05/H06 pending | Integration BLOCKED / groups 05,06,01 |
| NFR-01 | Finite time budget, cancellation, bounded retry and metric labels | Consumer contract tests; no numeric SLA yet approved | PLANNED / groups 01,08 |

A database ERD/data dictionary must come from the ledger owner's actual migrations;
there is no ledger schema to present as implemented. Group 01 must supply that
immutable artifact with H07. Groups 05/06/08 supply client, engine and composition
evidence; this index links those results after receipt. Public-safe artifacts can
then be handed to group 04; this private source page is not a public portfolio URL.
