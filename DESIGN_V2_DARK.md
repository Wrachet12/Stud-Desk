# StudyCore — "Dark Artboard" redesign (Framer design analysis)

Full visual replacement of the console-chrome theme. No functionality
changed — CSS, fonts, and inline colors only.

## The system
- **Canvas**: near-black #090909 everywhere — app, landing page, privacy.
  Cards sit at surface-1 (#141414), raised/inner elements at surface-2
  (#1c1c1c), separated by hairlines (#262626) instead of borders+bevels.
- **Type**: Inter everywhere (the spec's approved substitute for GT
  Walsheim), weight 500–600, negative letter-spacing that scales with
  size — the landing hero pulls -.05em, card titles -.035em, body -.01em.
  Numbers (timer, XP, ranks, share codes) use tabular figures.
- **Buttons**: everything is a pill. Primary actions = white pill with
  black text; secondary = charcoal pill; destructive/success = dark
  tinted pills with coral/green text. No bordered ghost buttons, per spec.
- **One blue accent** (#0099ff): links, focus rings on every input, the
  selected calendar day, your own row on the leaderboard, active Connect
  mode. Never a fill.
- **Gradient family** (violet→magenta) appears exactly where the spec
  allows scarce atmosphere: the logo dot, the XP bar fill, one gradient
  spotlight card in the landing page feature grid, mind-map bubble tints,
  and a faint violet glow behind the login screen and timer dial.
- **Dark-only**: per the spec ("Don't ship a light mode"), the dark mode
  toggle in Settings is now hidden — the whole design IS the dark mode.
  Nothing breaks for accounts that had it on or off.

## Kept from your requests
- Achievements + Weekly Recap keep their yellow (#FFDD55) text treatment.
- All retro glyphs (■ ▦ ► ◄ ★ etc.) remain — no emojis anywhere.

## Deploy
Upload everything; cache version bumped to ?v=10 so browsers fetch fresh
files automatically.
