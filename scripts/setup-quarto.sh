#!/usr/bin/env bash
# Install Quarto (same version as .github/workflows/publish.yml's setup action resolves to) if it is missing.
# Used by Claude's cloud sandbox, which starts without Quarto. Safe to run repeatedly.
set -euo pipefail
V="${QUARTO_VERSION:-1.10.19}"
if command -v quarto >/dev/null 2>&1; then quarto --version; exit 0; fi
D="${QUARTO_DIR:-$HOME/.local/quarto}"
mkdir -p "$D"
curl -fsSL "https://github.com/quarto-dev/quarto-cli/releases/download/v${V}/quarto-${V}-linux-amd64.tar.gz" | tar xz -C "$D"
mkdir -p "$HOME/.local/bin"
ln -sf "$D/quarto-${V}/bin/quarto" "$HOME/.local/bin/quarto"
export PATH="$HOME/.local/bin:$PATH"
pip install -q pyyaml --break-system-packages 2>/dev/null || pip install -q pyyaml
quarto --version
