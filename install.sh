#!/usr/bin/env bash

set -e

# Copy binary to /usr/local/bin
if [ ! -d /usr/local/bin ]; then
    echo "Error: /usr/local/bin does not exist." >&2
    echo "" >&2
    echo "To fix this, run:" >&2
    echo "  sudo mkdir -p /usr/local/bin" >&2
    echo "" >&2
    echo "Then run this install script again." >&2
    exit 1
fi

if ! cp ./bin/journal /usr/local/bin/journal; then
    echo "Error: Failed to copy journal to /usr/local/bin. Check permissions." >&2
    exit 1
fi

chmod +x /usr/local/bin/journal
echo "✅ journalot installed! Now run 'journal' from anywhere."
