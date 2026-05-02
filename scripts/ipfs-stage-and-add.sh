#!/usr/bin/env bash
# Stage static site (no .git) and add to local Kubo. Requires: ipfs in PATH, ~/.ipfs initialized.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
STAGE="${STAGE:-/tmp/gameseekrs-site-ipfs-stage}"

rm -rf "$STAGE"
mkdir -p "$STAGE/assets" "$STAGE/vault-runner" "$STAGE/flashlight"
cp "$ROOT/index.html" "$STAGE/"
cp "$ROOT/assets/legal.css" "$STAGE/assets/"
cp "$ROOT/vault-runner"/*.html "$STAGE/vault-runner/"
cp "$ROOT/flashlight"/*.html "$STAGE/flashlight/"

echo "Staged: $STAGE"
echo "Adding to IPFS (CIDv1)..."
CID="$(ipfs add -r -Q --cid-version=1 "$STAGE")"
echo "Root CID: $CID"
ipfs pin add "$CID" >/dev/null
echo "Pinned locally."
echo ""
echo "  https://ipfs.io/ipfs/${CID}/"
echo "  ipfs://${CID}"
echo ""
echo "If serving the network: ipfs daemon"
