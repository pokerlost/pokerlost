# Pokerlost

Pokerlost keeps its existing SDK, native rules engine, and service scaffold in separate repositories. This private overview maps the code that exists; it does not describe a deployed platform.

## 🧭 Components

| Repository | Current responsibility | Local check |
| --- | --- | --- |
| `pokerlost/pypokerlost` | Typed Python SDK and transport contracts | `make check` |
| `pokerlost/pokerengine` | C++ rules and state with a Python binding | `make check` |
| `pokerlost/serviceTemplate` | Pokerlost-specific Copier service scaffold | `make check` |

Run each command from that repository's root after installing its documented toolchain. Their own READMEs and `AGENTS.md` files own the exact build and development contracts.

## 🔒 Boundaries

The SDK does not own game rules. The native engine does not own service deployment. The Pokerlost service template remains specific to the platform; generic project scaffolds belong to `serrja/projectTemplates`. No entry here represents an implemented production service or permission to publish internal endpoints.

## 📚 Working on a component

Choose one repository and read its current `AGENTS.md` before editing. Keep changes and checks within that repository, then review its staged diff and outgoing commits before publication. Shared workstation configuration belongs to `serrja/setupSystem`.
