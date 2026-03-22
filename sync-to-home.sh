#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${HOME}/.kiro"

mkdir -p "${DEST}/steering" "${DEST}/skills"

# Merge canonical files into ~/.kiro (no --delete: keeps extra local-only files you may have added)
rsync -a "${ROOT}/steering/" "${DEST}/steering/"
rsync -a "${ROOT}/skills/" "${DEST}/skills/"

echo "Synced ${ROOT}/steering/ -> ${DEST}/steering/"
echo "Synced ${ROOT}/skills/   -> ${DEST}/skills/"
echo "Done."
