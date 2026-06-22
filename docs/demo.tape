Output docs/demo.gif

Set Shell bash
Set Width 800
Set Height 500
Set FontSize 14
Set Theme "Dracula"
Set Padding 12
Set BorderRadius 8
Set TypingSpeed 60ms
Set PlaybackSpeed 1.0

Env JOURNAL_DIR "/tmp/jot-demo"

# Seed 7 days of entries silently (Jun 15–21), leave today (Jun 22) blank
Hide
Type "rm -rf /tmp/jot-demo && mkdir -p /tmp/jot-demo/entries" Enter
Sleep 200ms
Type "for i in 15 16 17 18 19 20 21; do echo '# 2026-06-'$i > $JOURNAL_DIR/entries/2026-06-$i.md; echo '' >> $JOURNAL_DIR/entries/2026-06-$i.md; echo 'Good progress today. The kind that compounds.' >> $JOURNAL_DIR/entries/2026-06-$i.md; echo '' >> $JOURNAL_DIR/entries/2026-06-$i.md; echo '#work #coding' >> $JOURNAL_DIR/entries/2026-06-$i.md; done" Enter
Sleep 500ms
Show

Sleep 500ms

# Quick capture — starts the day, creates today's entry
Type "journal 'Shipped v5.6.0 - day eight'"
Sleep 500ms
Enter
Sleep 2s

# Calendar — today now shows green (entry + today), last 7 days blue
Type "journal --calendar"
Sleep 500ms
Enter
Sleep 3s

# Stats — streak ticks to 8
Type "journal --stats"
Sleep 500ms
Enter
Sleep 4s
