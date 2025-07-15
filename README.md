# 🚀 Cursor Framework Workshop

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Python](https://img.shields.io/badge/Python-3.12+-blue?logo=python&logoColor=white)](https://www.python.org/)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

Welcome to the interactive section of the Cursor Framework workshop!

---

## 🏁 Getting Started

To get your local environment set up, please follow these simple steps.

### Prerequisites

You'll need `curl` to be installed to fetch the `uv` installer. Most Unix-like systems have it pre-installed.

### 🛠️ Installation

This project uses a `Makefile` to simplify the setup process.

You can install `uv` separately if you wish:
```bash
make uv-install
```

To install all dependencies and configure pre-commit hooks, run the following command:

```bash
make dev-setup
```

This single command will:
1.  **Check for `uv`**: It verifies if `uv` is installed and, if not, downloads and installs it for you.
2.  **Sync Dependencies**: It runs `uv sync --all-extras` to install all required packages from `pyproject.toml`.
3.  **Install Pre-commit Hooks**: It executes `uv run pre-commit install` to set up the git hooks for automated code quality checks before each commit.

After the setup is complete, your environment is ready for development!

---

## 📋 Workshop Modules

For details on each workshop module, please see the [Table of Contents](./workshop/README.md).
