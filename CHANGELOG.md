# Changelog

All notable changes to journalot will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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

## [Unreleased]

### Planned for v5.0
- Multiple journal support (work, personal, etc.)
- Git conflict resolution helper
- Additional archive and organization features
