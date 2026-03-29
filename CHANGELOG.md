# Changelog

All notable changes to journalot will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [5.2.1] - 2026-03-16

### Fixed
- Calendar rendering on macOS — replaced fragile `date -d` chain with pure bash leap-year math for `days_in_month`. Zero external dependencies, works on all platforms.

## [5.2.0] - 2026-03-16

### Added
- **Calendar view** — `journal --calendar` shows the current month as an ASCII calendar:
  - Days with journal entries highlighted in blue
  - Today highlighted in yellow
  - Today with an entry highlighted in green
  - Navigate to any month with `journal --calendar YYYY-MM` (e.g., `journal --calendar 2026-01`)
  - Cross-platform: works on macOS and Linux

## [5.1.0] - 2026-03-16

### Added
- **Shared journal support** — first-class collaborative journaling via `--shared` flag:
  - `journal --switch kids --shared` — mark a journal as shared
  - Shared journals pull loudly on open, showing sync status clearly
  - Conflict detection before opening editor — warns if a collaborator wrote to today's entry
  - Auto-commit and auto-push after every save — no prompts
  - Built-in conflict resolution helper when push fails: merge, edit manually, or skip
  - `.shared` marker file in journal directory signals shared status

## [5.0.0] - 2026-03-16

### Added
- **Multiple journal support** - Keep work, personal, and any other journals completely separate:
  - `journal --switch NAME` — switch to a named journal (creates it if it doesn't exist)
  - `journal --switch default` — return to your default journal
  - `journal --list-journals` — list all journals with active one highlighted
  - `journal --new-journal NAME` — explicitly create a new named journal
  - Each journal lives at `~/journalot/journals/NAME/` with its own `entries/` and git repo
  - Active journal persists across sessions via `ACTIVE_JOURNAL` in config
  - Set `MULTI_JOURNAL=false` in config to disable the feature entirely
  - Fully backwards compatible — default journal at `~/journalot/` is unchanged

## [4.7.0] - 2025-10-28

### Changed
- **Improved error messages** — all error messages now include actionable instructions:
  - Installation errors show exact commands to fix missing directories
  - "Not found" errors explain how to create what's missing
  - Permission errors suggest alternative solutions

## [4.6.0] - 2025-10-24

### Added
- **List sort order control** - New `--oldest-first` flag for `--list` command
  - Default: `journal --list` shows newest entries first
  - Optional: `journal --list --oldest-first` shows oldest entries first
  - Useful when piping to pagers like `more` or `less`

## [4.5.0] - 2025-10-20

### Added
- **Natural language date parsing** - Use intuitive date expressions like:
  - `--date "last friday"`, `--date "last monday"`
  - `--date "3 days ago"`, `--date "2 weeks ago"`
  - `--date "yesterday"`, `--date "tomorrow"`
  - Cross-platform support for macOS and Linux date commands
- **Enhanced search with context** - Search now shows:
  - 2 lines of context before and after each match
  - Color highlighting of search terms
  - Total count of entries containing matches
- **Backup and restore commands**:
  - `--backup` creates timestamped compressed archives in `~/journalot/backups/`
  - `--restore` provides interactive selection from available backups
  - Automatic safety backup before restore operation
- **Custom prompts system** with three priority levels:
  - Day-specific prompts: `~/journalot/prompts-monday.md` through `~/journalot/prompts-sunday.md`
  - General custom prompts: `~/journalot/prompts.md`
  - Built-in default prompts as fallback
  - Day-specific prompts choose randomly, general prompts rotate daily

### Changed
- Search functionality now uses `find` + `grep` for better cross-platform compatibility
- Help text updated with new feature examples
- README updated with comprehensive documentation for all v4.5 features

### Fixed
- Fixed `local` keyword usage outside function scope that caused script errors
- Fixed `JOURNAL_DIR` to properly respect environment variable overrides
- Improved error handling for backup/restore operations

## [4.0.0] - 2025-10-18

### Added
- Initial public release
- Core journaling functionality with git integration
- Template support
- Daily writing prompts
- Search, stats, and export features
- Archive and organization commands
- XDG-compliant configuration

### Community Improvements
- Configurable git branch name via `GIT_BRANCH` config option
- Terminal color support using `tput` with ANSI fallback
- Portable shebang `#!/usr/bin/env bash` for BSD compatibility
- Enhanced installation script with error checking
- Clarified documentation distinguishing journal directory from cloned repo
- Added privacy & security documentation

