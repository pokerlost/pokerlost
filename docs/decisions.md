# 🧩 Architecture decisions

These boundaries preserve independent ownership and compatibility during updates.
The Git history retains the earlier migration details.

## 📦 Sources and templates

The SDK has one active runtime package. Published imports and old immutable source
links remain compatibility contracts. Template changes flow producer-first through
reviewed source snapshots and Copier updates; project-owned migrations and local
contracts survive regeneration. Generated applications need no neighboring template
checkout. Flutter is not a Python template consumer.

## 🌐 Transport and data

The typed service header selects an infrastructure-owned upstream and grants no
authorization. Public/player engine views exclude opponents' hidden state. Vue owns
the embed lifecycle; Flutter owns the shared gameplay renderer. No service writes
another service's database. Engine rules, ledger invariants and external provider
observations have separate owners.

## 📚 One canonical home

Generic policy belongs to baseRules, Pokerlost-specific norms to active projectRules,
community/reusable delivery to `.github`, deployment to platformInfra, and the system
index here. Useful source/provenance/license evidence remains with its owner;
coordination journals and personal materials do not belong in product documentation.
