---
outline: deep
---

# Principles & Guidelines

## Everything is Stored in a Single Git Repository (Monorepo)

**Single Source of Truth**

All code and documentation reside in one repository, ensuring that every team member works off the same version of the project. This simplifies collaboration and reduces the risk of discrepancies between different parts of the project.

**Synchronized Changes**

Changes across different parts of the codebase can be made simultaneously and tracked together, reducing version mismatches and making it easier to maintain consistent updates across components.

**Easier Dependency Management**

Shared libraries and modules can be referenced directly within the same repository, eliminating the need to manage external dependencies between multiple repositories. This ensures all dependencies are always up-to-date and compatible.

**Streamlined Releases**

Releasing updates is simplified when everything is in one repository. You can deploy new features or bug fixes across different services or modules in a single, coordinated release without the need for managing multiple repositories.
