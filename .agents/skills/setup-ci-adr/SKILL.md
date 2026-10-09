---
name: setup-ci-adr
description: >-
  Triggered by `/setup-ci-adr` or when asked about ADR validation. 
  Automates the addition of a GitHub Actions workflow to validate
  Architecture Decision Records (ADRs) using adr-tools.
---

# CI Setup for ADRs

You are capable of configuring a Continuous Integration (CI) pipeline for repositories using `adr-tools`.
When the user asks to configure CI for ADRs, execute the steps below and apply the configuration to the project.

## Execution Steps:

1. Use bash commands or file writing tools to create the `.github/workflows/` directory (if it does not exist).
2. Create the file `.github/workflows/adr-validation.yml` and insert the following YAML content:

```yaml
name: ADR Validation

on:
  push:
    branches: [ "main", "master" ]
  pull_request:
    branches: [ "main", "master" ]

jobs:
  validate-adrs:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Install adr-tools
        run: |
          sudo apt-get update
          sudo apt-get install -y adr-tools

      - name: Validate ADR Index / TOC
        run: |
          # Generates the TOC and checks for pending changes
          # If the git diff command fails, it means a new ADR was added
          # but the toc.md file was not updated.
          
          # NOTE: The default adr-tools directory is doc/adr. Adjust if the project uses a different one.
          if [ -d "doc/architecture/decisions" ]; then
            ADR_DIR="doc/architecture/decisions"
          else
            ADR_DIR="doc/adr"
          fi
          
          adr generate toc > $ADR_DIR/toc.md
          
          if ! git diff --exit-code $ADR_DIR/toc.md; then
            echo "Error: The ADR index (toc.md) is outdated."
            echo "Please run 'adr generate toc > $ADR_DIR/toc.md' locally and add the file to your commit."
            exit 1
          fi
          echo "ADRs successfully validated!"
```

3. Modify the script if the user indicates that the repository saves ADRs in a different folder.
4. Present the modifications to the user, explaining that the action:
   - Installs `adr-tools` on the runner.
   - Updates `toc.md` (table of contents).
   - Uses `git diff` to check if the developer forgot to commit the updated index.
