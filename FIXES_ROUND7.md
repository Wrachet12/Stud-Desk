# Round 7

## Mind map connections still not saving — found the deeper issue
The guard I added last round only helps once it's actually been saved to
the database — if that was your very first login on the new code, the
flag hadn't hit the server yet, so it could still look broken "one more
time." Fixed properly now: the legacy fields that triggered the bug are
deleted outright (not just flagged), and the fix saves immediately on
login instead of waiting for the normal delay — so it can't recur, not
even once more.

## Weekly Recap & Achievements — cream text
Both modals now use a dark background with cream/gold text (color pulled
from the same tone as the border), instead of the standard dark-ink-on-
paper look every other modal uses.

## Ambient sounds — real fixes, not just tweaks
Found actual bugs, not just "needs polish":
- **Brown noise could clip** — the old formula could push well past full
  volume, causing harsh crackling. Fixed the gain and added a soft limiter
  so nothing can ever hard-clip, regardless of sound type.
- **No fade-in** — sounds used to snap to full volume instantly, which is
  jarring. Now fades in gently over ~1 second.
- **Rain swept like a siren** — the filter used to sweep ±800Hz, which
  sounds like a wah-pedal, not rain. Reduced to a subtle ±60Hz drift.
- Added a gentle overall lowpass filter to every noise type to take the
  harsh edge off, and lowered the default volume from 50% to 35%.
- **Added a "Custom" option** — upload your own audio file and it loops
  locally (Timer tab, next to the ambient sound dropdown). Nothing gets
  uploaded anywhere; it plays straight from your device.

## Bell schedule — "only one stuck"
Found a real bug: if you'd tried the *old* bell schedule (before last
round's redesign), your saved data still had the old `{periods, bells}`
shape. The new code expects `{blocks: []}` — loading the old shape meant
every "add period/bell" click was silently failing with nothing visibly
happening. Added a safety check that resets to the correct shape if it
detects the old format. Also added a clearer warning + auto-focus on the
End time field, since it's easy to forget that field clears after each
entry.

## Dark mode not sticking after reload
Found it: saving your dark mode preference used the normal delayed save
(900ms), and closing the tab/laptop shortly after clicking Save could beat
that delay, silently losing the change. Settings now save immediately when
you click Save, so this can't happen anymore.
