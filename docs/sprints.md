# Sprints

Use the existing [Pokerlost board](https://github.com/orgs/pokerlost/projects/1) for shared planning. Repository issues own implementation tasks; an overview issue owns the cross-service goal. The board and this handbook are the shared sources; personal notes do not copy issue cards.

## Views and fields

- [Backlog](https://github.com/orgs/pokerlost/projects/1/views/1): select and prepare work.
- [Текущий спринт](https://github.com/orgs/pokerlost/projects/1/views/2): the saved `sprint:@current` filter follows the current iteration.
- [Review/Blocked](https://github.com/orgs/pokerlost/projects/1/views/4): the saved `status:Review,Blocked` filter shows work needing review or help.
- [Цели](https://github.com/orgs/pokerlost/projects/1/views/3): retain the existing goal view and parent links.

Use Status, Sprint, Priority and the issue's assignee/repository. Link a parent goal where needed. Sprint is a native two-week Iteration field; no second task list or mandatory point estimates are required. Access to the board does not grant access to private repositories.

## Configured iterations

| Iteration | Dates, inclusive |
| --- | --- |
| Sprint 1 | 23 October–5 November 2026 |
| Sprint 2 | 6–19 November 2026 |
| Sprint 3 | 20 November–3 December 2026 |

These are planning dates configured on 23 October 2026, not a claim about past work. Preserve existing iteration dates and assign only work that fits the agreed capacity.

## Sprint 1 scope

The [shared goal, pokerlost #4](https://github.com/pokerlost/pokerlost/issues/4), coordinates two bounded tasks:

- [pokerengine #12](https://github.com/pokerlost/pokerengine/issues/12): transfer the existing server, two clients and local recording workflow to pokerDemo, then remove superseded active examples only after the transferred demo works.
- [pypokerlost #6](https://github.com/pokerlost/pypokerlost/issues/6): review the existing environment/client boundary, its documented configuration and remaining limitations. This sprint does not imply a new full test run or a deployed environment.

The issue bodies own detailed criteria and current evidence. Do not expand the sprint to every repository or close a task merely because its dev commit was pushed.

## Working cycle

1. Select the goal and real component issues. Agree each task's outcome, scope and acceptance criteria before assigning Sprint.
2. Move prepared work from Backlog to Ready, then In progress when someone starts it. Use the existing Blocked status with a concrete reason, needed action and owner when progress stops.
3. Work on a lowerCamelCase branch from current test. Run the owning native quick/full gates, review the diff, staged paths and secrets, then use separate working → test → dev → main PRs. The [release guide](release_guide.md) owns delivery mechanics.
4. Move the task to Review with the full source SHA, result, actual checks and remaining limitations. Distinguish native gate, installed-artifact checks, runtime acceptance and checks not run; historical lint-only evidence is not full acceptance.
5. Move to Done when the agreed scope is accepted. At the sprint boundary, record what finished, what did not and why, and one process change for the next sprint. Carry unfinished work to a suitable iteration with the reason preserved in the issue.

Done does not imply test/main promotion, stable release or deployment. A dev push never closes all linked issues automatically. See [development](development.md) for checkout and delivery commands and the [handbook](README.md) for architecture and history.
