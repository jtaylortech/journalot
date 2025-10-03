
# journalot

![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Bash](https://img.shields.io/badge/bash-4.0+-green.svg)

**Minimal journaling CLI for developers. Just type `journal` in your terminal and start writing.**

`journalot` is a CLI tool for maintaining a daily markdown journal with Git-based version control. It's designed to be lightweight and easy to use, promoting mindfulness and reflection. 

You can also search past entries by keyword or date using command-line tools like grep or fzf. For example, grep "confidence" or "new idea" ~/journalot/*.md

## Features
-   Creates a daily journal file: `YYYY-MM-DD.md`
-   Smart editor detection (respects `$EDITOR` or falls back to code → vim → nano)
-   Optional Git integration with auto-commit and push
-   Access previous entries with `--yesterday` or `--date`
-   List all entries with `--list`
-   Only commits when changes are detected
-   Works across multiple devices
-   Dependency checking and helpful error messages
-   Promotes mindfulness through lightweight journaling

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
journal                    # Open today's journal
journal --yesterday        # Open yesterday's journal
journal --date 2025-01-15  # Open specific date
journal --list             # List all entries
journal --help             # Show help
```

### First Run
On first run, journalot will offer to initialize a git repository if one doesn't exist. You can choose to skip this if you don't want version control.

### Customization
- **Editor**: Set `$EDITOR` environment variable (e.g., `export EDITOR=vim`)
- **Journal Directory**: Edit `JOURNAL_DIR` in `bin/journal` (default: `~/journalot`)

### Tips
- Use `grep "keyword" ~/journalot/*.md` to search all entries
- Use `fzf` for interactive entry selection
- Set up a private GitHub repo to sync across devices

---

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.