# 📦 Versioning

[VERSION](../VERSION) is the native version intent for `pokerlost-overview`, independent
of component packages, schemas and databases. A compatible docs change advances
patch by default after the latest accepted stable release. Feature/breaking intent
must be explicit and reviewed.

## 🏷️ Mapping

GitHub dev tags use `vX.Y.Z-dev.N`; stable tags use `vX.Y.Z`. Release bundles receive
the exact allocated version in an isolated build tree, with source SHA, checksums
and manifest. Source-tree VERSION is not a claim that a release exists. Historical
tags remain immutable. The documentation VERSION adapter preserves exact SemVer in both local and shared
release archives; native Python package metadata remains a separate PEP 440 contract.
Never publish mismatched metadata. See the
[release gate](release_guide.md) before enabling publication.
