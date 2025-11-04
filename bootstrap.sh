#!/usr/bin/env bash
set -e

REPO_URL="https://github.com/plmeister/bootstrap.git"
REPO_DIR="/opt/bootstrap"
PLAYBOOK="ansible/playbook.yml"

echo "[Bootstrap] Installing prerequisites..."
if ! command -v ansible >/dev/null 2>&1; then
    sudo apt-get update -y
    sudo apt-get install -y ansible git python3
fi

echo "[Bootstrap] Pulling repo..."
sudo mkdir -p "$REPO_DIR"
sudo chown "$(whoami)" "$REPO_DIR"

ansible-pull -U "$REPO_URL" -i localhost, "$PLAYBOOK" --directory "$REPO_DIR"

echo "[Bootstrap] Done!"
