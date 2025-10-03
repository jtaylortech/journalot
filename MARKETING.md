# Marketing Materials for journalot

## Show HN Post

**Title:** Show HN: journalot – Git-based journaling CLI that actually gets used

**Body:**
```
Hi HN!

I built journalot because every journaling app I tried was either too bloated or I'd forget to use it. As a dev, I wanted something that fit my workflow: terminal-based, git-backed, zero friction.

Just type `journal` and start writing. It:
- Opens today's entry in your $EDITOR (or VS Code/vim/nano)
- Only commits if you actually changed something
- Syncs across devices via git
- Has flags for --yesterday, --date, --list

The whole thing is ~200 lines of bash. Works on Mac/Linux. MIT licensed.

I've been using it daily for months and it's the first journaling habit that's stuck. No accounts, no sync services, just markdown files in a git repo.

GitHub: https://github.com/jtaylortech/journalot

Would love feedback! What features would make this more useful for you?
```

**Best time to post:** Tuesday-Thursday, 8-10am PST

---

## Blog Post: "Why I Built a 200-Line Journaling CLI"

### Outline

**Hook:**
Every productivity guru says "journal daily." I tried Notion, Day One, Obsidian, pen and paper. Nothing stuck. Then I realized: I don't need another app. I need less friction.

**The Problem:**
- Desktop apps: requires context switching
- Web apps: requires internet, accounts, privacy concerns
- Pen and paper: can't search, can't sync
- Obsidian/Roam: too many features, too much setup

**The Solution:**
A CLI tool that does ONE thing well:
- Lives in your terminal (you're already there)
- Uses your preferred editor (you already know it)
- Stores in git (you already use it)
- Zero configuration (just works)

**How It Works:**
```bash
$ journal
# Opens today's entry
# Edit, save, close
# Commits if changed
# Done.
```

**The Result:**
- 100+ consecutive days of journaling
- ~50KB total (just text files)
- Searchable with grep
- Synced across 3 machines
- Zero maintenance

**Key Insight:**
The best productivity tool is the one you actually use. For developers, that means:
- Terminal-native
- Git-based
- Editor-agnostic
- No accounts, no cloud service, no subscription

**Call to Action:**
Try it: `git clone git@github.com:jtaylortech/journalot.git`

The whole codebase is MIT licensed and under 200 lines. Fork it, customize it, make it yours.

**Proof:**
[Link to your public journalot repo with real entries if comfortable]

---

## Reddit Posts

### r/commandline
**Title:** [Release] journalot – Daily journaling CLI with git sync

**Body:**
```
Just released journalot, a minimal CLI for daily journaling.

Features:
- `journal` to open today's entry
- `journal --yesterday` or `--date 2025-01-15`
- Respects $EDITOR (fallback: code > vim > nano)
- Auto-commits only if file changed (md5 check)
- Git sync across devices
- ~200 lines of bash

Been using it daily for months. No dependencies except git and an editor.

GitHub: https://github.com/jtaylortech/journalot

MIT licensed. Feedback welcome!
```

### r/productivity
**Title:** I built a git-based journaling CLI that finally made the habit stick

**Body:**
```
After failing with Notion, Day One, and physical notebooks, I realized I needed journaling to be *stupid simple*.

So I built journalot - a CLI that does exactly one thing:
- Type `journal`
- Write stuff
- Close editor
- Auto-commits to git

That's it. No UI, no features, no distractions.

100+ days streak now. First time journaling has actually stuck.

The trick? Meet developers where they already are (the terminal) instead of asking them to context switch.

Open source: https://github.com/jtaylortech/journalot
```

### r/selfhosted
**Title:** journalot – Self-hosted journaling with git (no database, no web server)

**Body:**
```
Simple journaling CLI that uses git for sync. No database, no web server, just markdown files.

Perfect for self-hosters who want:
- Complete data ownership (it's just .md files)
- Git-based sync (push to your own remote)
- E2E encryption possible (use encrypted git remote)
- Zero attack surface (it's bash, not a web app)

Install: `git clone` + `sudo ./install.sh`

Works great with private GitHub repos or self-hosted Gitea/GitLab.

https://github.com/jtaylortech/journalot
```

---

## Product Hunt Launch

**Tagline:** Git-based journaling CLI for developers who actually want to build the habit

**Description:**
journalot is the minimalist journaling tool for developers. No accounts, no UI, no distractions—just type `journal` and write.

**What makes it different:**
- Lives in your terminal (you're already there)
- Uses your preferred editor ($EDITOR/VS Code/vim/nano)
- Git-based sync (works across devices)
- Only commits when you actually change something
- 100% open source, 200 lines of bash

**Who is it for:**
Developers who tried journaling apps but never stuck with them. If you spend your day in a terminal, this will fit your workflow perfectly.

**First Comment (as maker):**
Hey PH,

I built journalot because I kept failing at journaling. Every app had too much friction: open app, wait for sync, click "new entry", pick template...

As a dev, I realized: I'm already in the terminal. Why not just... `journal`?

Three months later, I'm on a 100+ day streak. First time journaling has stuck.

It's MIT licensed, ~200 lines of bash, zero dependencies (except git + editor). Fork it and make it yours.

Would love to hear what you think!

**Topics:**
- Developer Tools
- Productivity
- Open Source
- Terminal
- Git

---

## Twitter/X Posts

### Thread (Main Launch)
```
I tried every journaling app. None stuck.

Then I realized: I don't need another app. I need less friction.

So I built journalot - a CLI that does ONE thing:

`journal` → write → done

100+ day streak now. Here's why it works:

[1/6]

---

Most journaling apps assume you WANT features.

Templates! Mood tracking! Cloud sync! Analytics!

But features = friction.

Every click between "I should journal" and "I'm journaling" is a chance to give up.

[2/6]

---

journalot has zero friction:

1. Type `journal`
2. Editor opens
3. Write
4. Close

That's it. No login, no loading, no decisions.

[3/6]

---

Why it works for devs:

- You're already in terminal
- Uses your $EDITOR (no learning curve)
- Git-backed (sync like code)
- Searchable (grep is your friend)
- Private (it's just .md files)

[4/6]

---

It's 200 lines of bash.

MIT licensed.
Works on Mac/Linux.
Zero dependencies (just git + editor).

Install in 30 seconds.

[5/6]

---

Journaling shouldn't require willpower.

It should require typing 7 characters.

Star if interested: github.com/jtaylortech/journalot

[6/6]
```

### Standalone Tweets

**Option 1 (Problem/Solution):**
```
Every journaling app: *15 clicks to start writing*

journalot:
$ journal

That's the whole UX.

100+ day streak and counting.

github.com/jtaylortech/journalot
```

**Option 2 (Developer angle):**
```
Why journalot works for devs:

No context switching
No new tools to learn
No "sync services"

Terminal-native
Uses your $EDITOR
Git-backed

It's just bash + markdown.

github.com/jtaylortech/journalot
```

**Option 3 (Minimalist angle):**
```
journalot is 200 lines of bash that do one thing:

Make journaling so easy you actually do it.

No features.
No UI.
No friction.

Just:
$ journal

github.com/jtaylortech/journalot
```

---

## GitHub Optimization

### Update Repository

**Description:**
Minimal journaling CLI for developers. Git-backed, terminal-native, zero friction. Just type `journal` and start writing.

**Topics to add:**
- journaling
- cli
- productivity
- markdown
- git
- bash
- developer-tools
- terminal
- version-control
- daily-journal

**About section:**
`Minimal journaling CLI for developers | Git-backed | Terminal-native | Zero friction`

### Already Updated in README

Badges added:
```markdown
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Bash](https://img.shields.io/badge/bash-4.0+-green.svg)
```

"Why journalot?" section added after features.

---

## Dev.to Post Title Options

1. "I Built a 200-Line Journaling CLI (And It's the First Habit That Stuck)"
2. "Why Every Journaling App Failed Me (And How I Fixed It With Bash)"
3. "Git-Based Journaling: The Developer's Approach to Daily Reflection"
4. "100 Days of Journaling: How a Simple CLI Succeeded Where Apps Failed"
5. "journalot: The Anti-Feature Journaling Tool"

---

## Awesome Lists to Submit To

1. **awesome-cli-apps** - https://github.com/agarrharr/awesome-cli-apps
2. **awesome-shell** - https://github.com/alebcay/awesome-shell
3. **awesome-productivity** - https://github.com/jyguyomarch/awesome-productivity
4. **awesome-bash** - https://github.com/awesome-lists/awesome-bash

---

## Launch Sequence (Recommended)

**Week 1:**
- Day 1: Update GitHub (topics, description, badges)
- Day 2: Submit to awesome lists
- Day 3: Post to r/commandline + r/productivity

**Week 2:**
- Day 1: Publish Dev.to post
- Day 2: Post Show HN (Tuesday morning PST)
- Day 3: Share on Twitter/X
- Day 4: Product Hunt launch (Wednesday)

**Week 3:**
- Post to r/selfhosted
- Share in relevant Discord/Slack communities
- Comment on related HN threads

---

## Key Metrics to Track

- GitHub stars
- Clones/week (GitHub insights)
- Reddit upvotes/comments
- HN points/comments
- Product Hunt upvotes
- Twitter engagement

**Success = 100+ stars in first month**

---

## Common Questions (Prepare Answers)

**Q: Why not use Obsidian/Notion?**
A: They're great, but too feature-rich. journalot does ONE thing: make journaling frictionless for terminal users.

**Q: What about encryption?**
A: Use an encrypted git remote, or git-crypt. It's just git—use any git security tool.

**Q: Windows support?**
A: WSL2 works great. Native Windows support could be added (PRs welcome!)

**Q: Why bash and not [language]?**
A: Bash is everywhere, has zero dependencies, and this tool is simple enough not to need more.

**Q: Can I use this for [other use case]?**
A: Absolutely! It's MIT licensed. Fork and customize.
