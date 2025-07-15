.PHONY: uv-install dev-setup

# Install uv if not already installed
uv-install:
	@command -v uv >/dev/null 2>&1 || { \
		echo "Installing uv..."; \
		curl -LsSf https://astral.sh/uv/install.sh | sh; \
	}

# Set up development environment
dev-setup: uv-install
	uv sync --all-extras
	uv run pre-commit install
