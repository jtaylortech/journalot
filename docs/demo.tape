Output docs/demo.gif

Set Shell bash
Set Width 800
Set Height 480
Set FontSize 14
Set Theme "Dracula"
Set Padding 12
Set BorderRadius 8
Set TypingSpeed 60ms
Set PlaybackSpeed 1.0

Env JOURNAL_DIR "/tmp/jot-demo"

# Seed a demo journal silently
Hide
Type "rm -rf /tmp/jot-demo && mkdir -p /tmp/jot-demo/entries" Enter
Sleep 200ms
Type "for i in 15 16 17 18 19 20 21; do echo '# 2026-06-'$i > $JOURNAL_DIR/entries/2026-06-$i.md; echo '' >> $JOURNAL_DIR/entries/2026-06-$i.md; echo 'Good progress today. The kind that compounds.' >> $JOURNAL_DIR/entries/2026-06-$i.md; echo '' >> $JOURNAL_DIR/entries/2026-06-$i.md; echo '#work #coding' >> $JOURNAL_DIR/entries/2026-06-$i.md; done" Enter
Sleep 400ms
Show

# 1 - Calendar view
Type "journal --calendar"
Sleep 400ms
Enter
Sleep 3s

# 2 - Stats + streak
Type "journal --stats"
Sleep 400ms
Enter
Sleep 3s

# 3 - Quick capture
Type "journal 'Shipped v5.6.0 - seven days running'"
Sleep 400ms
Enter
Sleep 2s

# 4 - Interactive list (fzf)
Type "journal --list"
Sleep 400ms
Enter
Sleep 2s
Escape
Sleep 1s
