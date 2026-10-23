# ADR 0001: Dev-first delivery and shared planning

Status: accepted policy, implemented in dev with lint evidence. Date: 2026-10-23. Long-lived refs and the private [shared board](https://github.com/orgs/pokerlost/projects/1) exist. Full acceptance and default-branch manual workflow activation remain separate.

## Context

The earlier main-only delivery process and full checks before every push do not match the requested short development cycle. A personal knowledge vault cannot be the only source of team status.

## Options

The existing main-only process couples ordinary work with promotion. A local-only board requires every collaborator to access personal notes. Native GitHub Issues/Projects with versioned Markdown provides shared tasks while retaining the existing private repository boundaries.

## Decision

Preserve main as default, develop in dev, and reserve test for separately approved candidates. Treat local as process configuration. Use lint-only ordinary delivery, with heavier acceptance explicitly requested. Use issues in their owning repositories, one private organization Project, and this versioned handbook. Keep private personal notes outside shared source.

## Consequences

A dev push establishes implementation and lint evidence only. Project creation and permissions require real Chrome readback; a document is not a created board. New manual workflows may require later default-branch activation. Git clones preserve code/docs history, not GitHub task history. Existing refs, data and published tags remain intact; promotion and access expansion are separate decisions.
