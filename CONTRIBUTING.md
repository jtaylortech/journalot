# Contributing to journalot

Thanks for taking the time to contribute. journalot is a minimal tool — keep that spirit in every change.

## How to contribute

### Reporting bugs
Open an issue with:
- What you ran
- What you expected
- What actually happened
- Your OS and bash version (`bash --version`)

### Suggesting features
Open an issue describing the problem you're solving. Simple, terminal-native ideas that fit the "zero friction journaling" philosophy are most likely to land.

### Submitting a pull request

1. Fork the repo and create a branch from `main`
2. Make your changes in `bin/journal`
3. Test on macOS and Linux if possible
4. Keep it minimal — no new dependencies, no bloat
5. Update `README.md` and `CHANGELOG.md` if needed
6. Open a PR with a clear description of what and why

### Code style
- Pure bash — no Python, Ruby, or other runtimes
- Cross-platform: macOS (BSD date) and Linux (GNU date) both supported
- Errors should be actionable — tell the user exactly how to fix the problem
- New flags follow the existing pattern in `show_help()` and the `case` arg parser

## Local development

```bash
git clone https://github.com/jtaylortech/journalot.git
cd journalot

# Test directly without installing
bash bin/journal --help
bash bin/journal --calendar

# Install locally
sudo ./install.sh
```

## License

By contributing, you agree that your contributions will be licensed under the [MIT License](LICENSE).
