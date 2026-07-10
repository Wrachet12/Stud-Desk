# StudyCore — "Console Chrome" redesign

Full visual redesign applied across every page (app, landing page, privacy
policy) using the Nintendo.com (2001) design analysis you provided. Only
CSS/HTML changed — no functionality, no JS logic, touched.

## What changed
- **Palette**: warm amber/signal-orange/nav-gold reserved strictly for
  wayfinding (buttons, active tabs, nav words) over a cool periwinkle-to-
  chrome-indigo chrome, with a carbon-navy command layer for the top bar,
  tab strip, footer, and landing page nav.
- **Typography**: switched from Fraunces/Inter to system Arial/Helvetica
  throughout (matches the era, zero extra font weight to load). Added one
  signature touch — VT323, a retro terminal font — used only for HUD-style
  numbers (timer clock, XP/level/streak, share codes) so it reads as a
  console readout without overwhelming body text legibility.
- **Shape language**: sharp/chamfered (cut-corner) panels everywhere
  instead of rounded cards — buttons, cards, modals, flashcards all clipped
  with a small corner chamfer. Roundness kept only where it signals a
  physical control (pills, dots), matching the brief's own rule.
- **Bevel depth**: every card/modal/button gets a light top highlight +
  dark bottom shadow line instead of soft drop shadows — "molded plastic,"
  not Material elevation.
- **Halftone texture**: added to every carbon surface (top bar, tab strip,
  landing page nav/footer) — a subtle repeating dot pattern, pure CSS.
- **Card headers**: every `<h2>` inside a card now renders as a full-bleed
  periwinkle header strip (uppercase, tracked) instead of plain bold text —
  the "section-label-bar" component from the brief.
- **Dark mode**: rather than switching themes, dark mode leans further
  into the carbon/chrome-indigo palette that's already core to this
  design — panels move from white plate to a raised indigo plate, so it
  still feels like the same machine, just at night.

## One deliberate adaptation from the literal brief
The brief's palette doesn't define semantic green/red for "good/bad" —
but StudyCore leans on that convention throughout (task difficulty,
correct/incorrect answers, streak health). I kept a muted sage-green and
games-red for those specific meanings rather than forcing everything into
signal-orange, since overloading orange for both "forward action" and
"success" would break a lot of existing at-a-glance meaning. Everything
else follows the brief exactly.

## Note
I can't render a live screenshot from this sandbox (no browser available
here), so this hasn't been visually proofed by me beyond careful code
review — worth a first look together after deploying, in case any spacing
needs a second pass once you can actually see it running.
