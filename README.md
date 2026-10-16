# Pokerlost

Pokerlost is a collection of separate libraries, templates, and service foundations. This private repository is the navigation point for the platform; it does not describe a deployed game or payment system.

## 🧭 Architecture

The [service map](docs/serviceMap.md) records each component's source, data boundary, current foundation, and deferred business work. The generic Python and FastAPI bases belong to `serrja`; `serviceTemplate` specializes them for Pokerlost. Generated applications run without those template checkouts.

## 🛠 Development

Open one repository from the canonical `setupSystem` project catalog, read its `AGENTS.md` and owner document, and run its documented local commands. `pypokerlost` is the HTTP SDK; `pokerengine` is the C++ rules library with Python bindings. The engine's terminal client and TCP server are reference examples, not the production transport or authorization policy.

Versioning and naming rules are owned by the generic Python base. Each component retains its own public contracts and release decision. GitHub publication, CI results, and runtime readiness must be checked in the component repository; a local foundation commit does not establish a production service.
