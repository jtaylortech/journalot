
# journalot

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Bash](https://img.shields.io/badge/bash-4.0+-green.svg)

**Minimal journaling CLI for developers. Just type `journal` in your terminal and start writing.**

`journalot` is a CLI tool for maintaining a daily markdown journal with Git-based version control. It's designed to be lightweight and easy to use, promoting mindfulness and reflection. 

You can also search past entries by keyword or date using command-line tools like grep or fzf. For example, grep "confidence" or "new idea" ~/journalot/entries/*.md

## Features

### Core Features
-   Creates a daily journal file: `YYYY-MM-DD.md` stored in `entries/` folder
-   Smart editor detection (respects `$EDITOR` or falls back to code → vim → nano)
-   Optional Git integration with auto-commit and push
-   Template support for customized entry structure
-   Config file support (`~/.journalotrc`)

### Quick Wins
-   **Quick capture**: `journal "Had a great idea"` - append to today's entry without opening editor
-   **Enhanced list view**: Word count and preview for each entry
-   **Auto-sync**: Set `AUTOSYNC=true` in config to skip commit/push prompts
-   **Previous entries**: `--yesterday` or `--date` to access any day

### Power Features
-   **Stats**: `--stats` shows total entries, words, and patterns (non-gamified)
-   **Search**: `--search "keyword"` to find entries containing text
-   **Week view**: `--week` opens all entries from current week
-   **Timestamps**: `--time` creates multiple entries per day (e.g., `2025-01-15-1430.md`)
-   **Tags**: Filter entries by hashtag with `--tag work`
-   **Export**: `--export html` or `--export pdf` to share or archive
-   **Random entry**: `--random` rediscover old thoughts
-   **Diff view**: `--diff DATE` see what changed in an entry
-   **Archive**: `--archive YEAR` move old years to archive folder
-   **Daily prompts**: Writing prompts for blank entries (disable with `DISABLE_PROMPTS=true`)

### Pro Features (Premium)
-   **AI Insights**: `--insights` weekly patterns and AI-powered analysis
-   **Voice capture**: `--voice` record and transcribe voice memos
-   **Encryption**: `--encrypt` GPG encryption for sensitive entries
-   **Cloud backup**: `--backup` auto-backup to S3/Dropbox beyond Git
-   **Graph view**: `--graph` visualize tag connections and patterns

[Get Pro →](https://journalot.dev/pro) | [Sponsor on GitHub →](https://github.com/sponsors/jtaylortech)

## Why journalot?

Every journaling app has the same problem: **friction**. Open app → wait for sync → click new entry → choose template...

journalot eliminates all of that:
- **You're already in terminal** → just type `journal`
- **Opens in your preferred editor** → no learning curve
- **Auto-commits to git** → no manual syncing
- **Just markdown files** → complete ownership

The best productivity tool is the one you actually use.

## Installation

```bash
git clone git@github.com:jtaylortech/journalot.git
cd journalot
sudo ./install.sh
```

## SSH Setup (Optional)
If you want to sync across devices, set up SSH access for GitHub. [Guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)

## Set Up Your Own Private Journal Repo
By default, this repo points to my public GitHub. To push your own journal entries:
1. Create a new private repo on GitHub (e.g., `journalot-private`)
2. Replace the remote:
```bash
   git remote remove origin
   git remote add origin git@github.com:<your-username>/journalot-private.git
   git push -u origin main
 ```

## Usage

### Basic Usage
```bash
journal                              # Open today's journal
journal "Had a breakthrough today"   # Quick capture (append without editor)
journal --yesterday                  # Open yesterday's journal
journal --date 2025-01-15            # Open specific date
journal --time                       # Create timestamped entry (multiple per day)
journal --list                       # List all entries with previews
journal --help                       # Show help
```

### Search & Discovery
```bash
journal --search "confidence"        # Search all entries for keyword
journal --week                       # Open all entries from this week
journal --tag work                   # Filter entries by #tag
journal --stats                      # View journal statistics
journal --random                     # Show a random entry
journal --diff 2025-01-15            # See git history for an entry
journal --prompt                     # Show today's writing prompt
```

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

Create `~/.journalotrc` to customize behavior:
```bash
# Auto-sync without prompts
AUTOSYNC=true

# Custom journal directory (optional)
# JOURNAL_DIR="$HOME/my-journal"
```

Create `~/journalot/template.md` to customize new entries:
```markdown
# {{date}}

## What happened today?

## Grateful for

## Tomorrow's focus
```

### Customization
- **Editor**: Set `$EDITOR` environment variable (e.g., `export EDITOR=vim`)
- **Journal Directory**: Edit `JOURNAL_DIR` in config or `bin/journal` (default: `~/journalot`)
- **Template**: Create `~/journalot/template.md` for custom entry structure
- **Auto-sync**: Set `AUTOSYNC=true` in `~/.journalotrc` to skip prompts

### Tips
- Quick capture great for fleeting thoughts: `journal "Remember to check that bug"`
- Use tags for organization: add `#work`, `#personal`, `#ideas` to entries
- Search is case-insensitive and shows line numbers
- Week view opens all entries in your editor at once
- Stats are informational only - no guilt for skipping days
- Templates support `{{date}}` placeholder
- Daily prompts rotate based on day of year (disable with `DISABLE_PROMPTS=true`)
- Archive old entries to keep your main folder clean
- Use `--random` for serendipitous rediscovery

---

## journalot Pro

Upgrade to **journalot Pro** for advanced features:

### What's Included
- 🤖 **AI Insights**: Weekly patterns, mood tracking, and personalized insights
- 🎙️ **Voice Capture**: Record and transcribe voice memos directly into your journal
- 🔐 **Encryption**: GPG encryption for sensitive entries
- ☁️ **Cloud Backup**: Automatic backup to S3/Dropbox beyond Git
- 📊 **Graph View**: Visualize tag connections and topic relationships

### Pricing
- **$20/year** or **$50 lifetime**
- **Free for GitHub Sponsors** ($50+/month tier)

### How to Get Pro
1. Purchase a license at [journalot.dev/pro](https://journalot.dev/pro)
2. Add your license key to `~/.journalotrc`:
   ```bash
   PRO_LICENSE=your-license-key-here
   ```
3. Start using Pro features: `journal --insights`, `journal --voice`, etc.

### Support Open Source
Prefer to support through sponsorship? [Sponsor on GitHub](https://github.com/sponsors/jtaylortech) and get Pro features free at the $50+/month tier.

---

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.