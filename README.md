
# journalot

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Bash](https://img.shields.io/badge/bash-4.0+-green.svg)
![Version](https://img.shields.io/badge/version-4.6-blue.svg)

**Minimal journaling CLI for developers. Just type `journal` in your terminal and start writing.**

`journalot` is a CLI tool for maintaining a daily markdown journal with Git-based version control. It's designed to be lightweight and easy to use, promoting mindfulness and reflection.

**✨ New in v4.6:** List sort control with `--oldest-first` flag! Plus natural language dates, enhanced search, backup/restore, and customizable prompts. 

You can also search past entries by keyword or date using command-line tools like grep or fzf. For example, grep "confidence" or "new idea" ~/journalot/entries/*.md

## Features

### Core Features
-   Creates a daily journal file: `YYYY-MM-DD.md` stored in `entries/` folder
-   Smart editor detection (respects `$EDITOR` or falls back to code → vim → nano)
-   Optional Git integration with auto-commit and push
-   Template support for customized entry structure
-   XDG-compliant config file (`~/.config/journalot/config`)

### Quick Wins
-   **Quick capture**: `journal "Had a great idea"` - append to today's entry without opening editor
-   **Enhanced list view**: Word count and preview for each entry (newest first, or use `--oldest-first`)
-   **Auto-sync**: Set `AUTOSYNC=true` in config to skip commit/push prompts
-   **Natural language dates**: `--date "last friday"` or `--date "3 days ago"`
-   **Previous entries**: `--yesterday` or `--date` to access any day
-   **Backup & restore**: `--backup` and `--restore` for easy backups

### Power Features
-   **Stats**: `--stats` shows total entries, words, and patterns (non-gamified)
-   **Enhanced search**: `--search "keyword"` with context lines and highlighting
-   **Week view**: `--week` opens all entries from current week
-   **Timestamps**: `--time` creates multiple entries per day (e.g., `2025-01-15-1430.md`)
-   **Tags**: Filter entries by hashtag with `--tag work`
-   **Export**: `--export html` or `--export pdf` to share or archive
-   **Random entry**: `--random` rediscover old thoughts
-   **Diff view**: `--diff DATE` see what changed in an entry
-   **Archive**: `--archive YEAR` move old years to archive folder
-   **Customizable prompts**: Daily writing prompts (custom + day-of-week specific)


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

### Manual Installation

```bash
git clone git@github.com:jtaylortech/journalot.git
cd journalot
sudo ./install.sh
```

## SSH Setup (Optional)
If you want to sync across devices, set up SSH access for GitHub. [Guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

## Set Up Your Own Private Journal Repo
Your journal entries are stored in `~/journalot/` (the journal directory), NOT in the cloned `journalot` repository. To enable git-based syncing for your personal journal entries:

1. Create a new private repo on GitHub (e.g., `my-private-journal`)
2. Initialize git in your journal directory and add the remote:
```bash
   cd ~/journalot
   git init
   git remote add origin git@github.com:<your-username>/my-private-journal.git
   git add .
   git commit -m "Initial journal setup"
   git push -u origin main
 ```

**Note**: The branch name can be configured - see Configuration section below.

## Privacy & Security

Your journal entries are:
- **Stored locally** as plain markdown files in `~/journalot/entries/`
- **Optionally synced** to a private GitHub repository you control
- **Encrypted in transit** when using SSH (git@github.com URLs)
- **Protected by GitHub's access controls** if using a private repo

For additional security, use:
- Encrypted filesystem (FileVault on macOS, LUKS on Linux)
- Private repository with restricted access
- SSH keys with passphrase protection

**Note**: Entries are stored as plain text locally and in your git repository. If you need encryption at rest, consider using full-disk encryption or an encrypted git remote.

## Usage

### Basic Usage
```bash
journal                              # Open today's journal
journal "Had a breakthrough today"   # Quick capture (append without editor)
journal --yesterday                  # Open yesterday's journal
journal --date 2025-01-15            # Open specific date
journal --date "last friday"         # Natural language dates
journal --date "3 days ago"          # Relative dates
journal --time                       # Create timestamped entry (multiple per day)
journal --list                       # List all entries (newest first)
journal --list --oldest-first        # List entries oldest first
journal --help                       # Show help
```

**Natural language dates** support:
- `"yesterday"`, `"tomorrow"`
- `"X days ago"`, `"X weeks ago"` (e.g., `"5 days ago"`)
- `"last monday"`, `"last friday"`, etc.
- Standard formats like `2025-01-15`

### Search & Discovery
```bash
journal --search "confidence"        # Search with context and highlighting
journal --week                       # Open all entries from this week
journal --tag work                   # Filter entries by #tag
journal --stats                      # View journal statistics
journal --random                     # Show a random entry
journal --diff 2025-01-15            # See git history for an entry
journal --prompt                     # Show today's writing prompt
```

**Enhanced search** shows 2 lines of context before/after matches with color highlighting.

### Backup & Restore
```bash
journal --backup                     # Create timestamped backup
journal --restore                    # Restore from backup (interactive)
```

Backups are stored in `~/journalot/backups/` as compressed archives. The restore command:
- Shows all available backups with sizes and dates
- Creates a safety backup before restoring
- Fully interactive with confirmation prompts

### Archive & Organization
```bash
journal --archive 2024               # Archive all 2024 entries
journal --archive 2024 --unarchive   # Restore from archive
```

### Export & Sharing
```bash
journal --export html                # Export to HTML
journal --export pdf                 # Export to PDF (requires pandoc)
```

### Configuration

Create `~/.config/journalot/config` to customize behavior:
```bash
# Auto-sync without prompts
AUTOSYNC=true

# Disable daily writing prompts
DISABLE_PROMPTS=true

# Custom git branch name (default: main)
GIT_BRANCH=master

# Custom journal directory (optional)
# JOURNAL_DIR="$HOME/my-journal"
```

**Note**: Old config files at `~/.journalotrc` will be automatically migrated to the XDG location on first run.

Create `~/journalot/template.md` to customize new entries:
```markdown
# {{date}}

## What happened today?

## Grateful for

## Tomorrow's focus
```

### Custom Prompts

**Option 1: General custom prompts** - Create `~/journalot/prompts.md` with one prompt per line:
```
What am I working towards?
What patterns am I noticing?
What decision needs to be made?
```

**Option 2: Day-specific prompts** - Create files for specific days (e.g., `~/journalot/prompts-monday.md`):
```bash
~/journalot/prompts-monday.md       # Monday prompts: "What are your goals for the week?"
~/journalot/prompts-friday.md       # Friday prompts: "What did you accomplish this week?"
~/journalot/prompts-sunday.md       # Sunday prompts: "What are you grateful for?"
```

**Priority order**: Day-specific prompts → Custom prompts → Default prompts

Each file should contain one prompt per line. Day-specific files choose a random prompt, while general prompts rotate daily.

### Customization
- **Editor**: Set `$EDITOR` environment variable (e.g., `export EDITOR=vim`)
- **Journal Directory**: Edit `JOURNAL_DIR` in config or `bin/journal` (default: `~/journalot`)
- **Template**: Create `~/journalot/template.md` for custom entry structure
- **Auto-sync**: Set `AUTOSYNC=true` in `~/.config/journalot/config` to skip prompts

### Tips
- Quick capture great for fleeting thoughts: `journal "Remember to check that bug"`
- Use natural language dates: `journal --date "last monday"` is more intuitive
- Search shows context - perfect for finding related thoughts
- Regular backups: Run `journal --backup` before major changes
- Use tags for organization: add `#work`, `#personal`, `#ideas` to entries
- Week view opens all entries in your editor at once
- Stats are informational only - no guilt for skipping days
- Templates support `{{date}}` placeholder
- Custom prompts: Create day-specific prompts for Monday planning, Friday reflection, etc.
- Archive old entries to keep your main folder clean
- Use `--random` for serendipitous rediscovery

---

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.