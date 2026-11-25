#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BIN_DIR="${HOME}/.local/bin"

mkdir -p "${BIN_DIR}"
install -m 0755 "${SCRIPT_DIR}/antigravity-update" "${BIN_DIR}/antigravity-update"

echo "Installed antigravity-update to ${BIN_DIR}/antigravity-update"

case ":${PATH}:" in
  *":${BIN_DIR}:"*) ;;
  *)
    echo "Note: ${BIN_DIR} is not in your PATH. Add it to your shell config:"
    echo "  export PATH=\"\${HOME}/.local/bin:\${PATH}\""
    ;;
esac
