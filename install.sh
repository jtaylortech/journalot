#!/usr/bin/env bash

set -e

# Determine install location
# Homebrew on Apple Silicon uses /opt/homebrew/bin; fall back to /usr/local/bin
if [ -d /opt/homebrew/bin ]; then
    INSTALL_DIR=/opt/homebrew/bin
elif [ -d /usr/local/bin ]; then
    INSTALL_DIR=/usr/local/bin
else
    echo "Error: Could not find a suitable install directory." >&2
    echo "" >&2
    echo "Create one and re-run:" >&2
    echo "  sudo mkdir -p /usr/local/bin" >&2
    exit 1
fi

if ! cp ./bin/journal "$INSTALL_DIR/journal"; then
    echo "Error: Failed to copy journal to $INSTALL_DIR. Check permissions." >&2
    echo "  Try: sudo ./install.sh" >&2
    exit 1
fi

chmod +x "$INSTALL_DIR/journal"
echo "✅ journalot installed to $INSTALL_DIR — run 'journal' from anywhere."
