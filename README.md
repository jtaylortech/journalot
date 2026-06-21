
# journalot

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Bash](https://img.shields.io/badge/bash-4.0+-green.svg)
![Version](https://img.shields.io/badge/version-5.4.0-blue.svg)
![GitHub stars](https://img.shields.io/github/stars/jtaylortech/journalot?style=social)

![journalot demo](https://github.com/user-attachments/assets/d3f631ad-d1e0-4ad2-8a34-12b92c53c8a6)

**Minimal journaling CLI for developers. Just type `journal` in your terminal and start writing.**

**Website**: [journalot.dev](https://journalot.dev)

## Why journalot?

Every journaling app has the same problem: **friction**. Open app → wait for sync → click new entry → choose template...

journalot eliminates all of that:
- **You're already in terminal** → just type `journal`
- **Opens in your preferred editor** → no learning curve
- **Auto-commits to git** → no manual syncing
- **Just markdown files** → complete ownership

The best productivity tool is the one you actually use.

## Installation

### Homebrew (Recommended)

```bash
brew tap jtaylortech/journalot
brew install journalot
```

### Manual

```bash
git clone git@github.com:jtaylortech/journalot.git
cd journalot
sudo ./install.sh
```

## Usage

```bash
journal                              # Open today's journal
journal "Had a breakthrough today"   # Quick capture (no editor)
journal --yesterday                  # Open yesterday's entry
journal --last                       # Open most recent entry
journal --date "last friday"         # Natural language dates
journal --date "3 days ago"          # Relative dates
journal --list                       # List all entries (newest first)
journal --list --oldest-first        # List entries oldest first
journal --calendar                   # Monthly calendar with entry indicators
journal --calendar 2026-01           # Calendar for a specific month
journal --search "confidence"        # Search with context and highlighting
journal --week                       # Open all entries from this week
journal --tag work                   # Filter entries by #tag
journal --stats                      # Journal statistics
journal --random                     # Show a random entry
journal --diff 2025-01-15            # Git history for an entry
journal --prompt                     # Show today's writing prompt
journal --export html                # Export to HTML
journal --export pdf                 # Export to PDF (requires pandoc)
journal --backup                     # Create timestamped backup
journal --restore                    # Restore from backup (interactive)
journal --archive 2024               # Archive all 2024 entries
```

## Multiple Journals

```bash
journal --switch work                # Switch to (or create) 'work' journal
journal --switch kids --shared       # Switch to 'kids' and mark as shared
journal --switch default             # Return to default journal
journal --list-journals              # List all journals
journal --new-journal work           # Explicitly create a named journal
```

Each journal lives at `~/journalot/journals/NAME/` with its own `entries/` and git repo. Your default journal at `~/journalot/` is unchanged. Disable with `MULTI_JOURNAL=false`.

## Shared Journals

For two people writing to the same journal, synced via a private git repo:

```bash
# Person 1
journal --switch kids --shared
cd ~/journalot/journals/kids
git remote add origin git@github.com:you/kids-journal-private.git
git push -u origin main

# Person 2
mkdir -p ~/journalot/journals
git clone git@github.com:you/kids-journal-private.git ~/journalot/journals/kids
journal --switch kids --shared
```

Shared journals auto-pull on open, warn before conflicts, auto-commit and push on save, and include a conflict resolution helper if push fails.

## Git Sync (Private Journal)

```bash
cd ~/journalot
git init
git remote add origin git@github.com:<your-username>/my-private-journal.git
git push -u origin main
```

[SSH setup guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

## Configuration

`~/.config/journalot/config`:

```bash
AUTOSYNC=true          # Skip commit/push prompts
DISABLE_PROMPTS=true   # Disable daily writing prompts
GIT_BRANCH=master      # Custom git branch (default: main)
MULTI_JOURNAL=false    # Disable multi-journal support
# JOURNAL_DIR="$HOME/my-journal"  # Custom journal directory
```

Custom entry template: `~/journalot/template.md` (supports `{{date}}` placeholder)

Custom prompts: `~/journalot/prompts.md` (one per line) or day-specific files like `~/journalot/prompts-monday.md`

---

## Support journalot

**[💖 Sponsor on GitHub](https://github.com/sponsors/jtaylortech)** | **[Learn more](https://journalot.dev/sponsor)**

### Current Sponsors

_Thank you to all sponsors! Your support makes journalot possible._

<!-- sponsors --><!-- sponsors -->

---

## License

MIT — see [LICENSE](LICENSE)
