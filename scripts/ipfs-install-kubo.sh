#!/usr/bin/env bash
# Install Kubo (ipfs) to ~/.local/bin on Linux x86_64|arm64
set -euo pipefail

VER="${IPFS_KUBO_VERSION:-v0.41.0}"
ARCH="$(uname -m)"
case "$ARCH" in
  x86_64) PLAT=linux-amd64 ;;
  aarch64) PLAT=linux-arm64 ;;
  *) echo "Unsupported arch: $ARCH"; exit 1 ;;
esac

DEST="${HOME}/.local/bin"
mkdir -p "$DEST"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

cd "$TMP"
echo "Downloading Kubo ${VER} (${PLAT})..."
curl -fsSL "https://dist.ipfs.tech/kubo/${VER}/kubo_${VER}_${PLAT}.tar.gz" | tar -xz
install -m 0755 kubo/ipfs "${DEST}/ipfs"

"${DEST}/ipfs" version

if [[ ! -f "${HOME}/.ipfs/config" ]]; then
  echo "Initializing repo (~/.ipfs) with lowpower profile..."
  ipfs init --profile=lowpower
else
  echo "Existing IPFS repo at ~/.ipfs — skipping init."
fi

echo "Done. From repo root: ./scripts/ipfs-stage-and-add.sh"
