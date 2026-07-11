# Round 9 — Mistake log fixes, Light mode, Friend IDs

## Mistake log (3 real bugs found)
1. **Delete never worked**: the Delete button called deleteMistake() — a
   function that literally didn't exist anywhere in the code. Every click
   threw a silent error. It exists now and works.
2. **Done button added**: every mistake now has "✓ Done — I've got it now"
   which marks it Resolved (dimmed, sorted to the bottom, excluded from
   the Home tab's unreviewed count and weak-spots list). Resolved ones can
   be un-resolved or deleted.
3. **"Correct answer still shows as a mistake"**: retaking a test and
   answering correctly used to leave the old mistake entry forever — and
   missing the same question twice stacked duplicates. Now a correct
   answer AUTO-RESOLVES any open mistake for that question, and a repeat
   miss updates the existing entry instead of duplicating it. All three
   behaviors verified with an automated simulation (miss → 1 entry;
   miss again → still 1 entry; answer correctly → auto-resolved).

## Light mode (Settings)
Dark stays the default. The Settings toggle is back as "Light mode
(cream)" — a three-color cream / blue / white theme echoing the earlier
designs: cream page canvas, white cards, deep blue-navy text, blue pills
for primary actions and active tabs. Saved per-account like before.

## Friend ID system
- Every account gets a unique 8-character Friend ID (e.g. 4F7A9C2E),
  shown in the Friends tab with a "Copy my ID" button.
- Adding friends now works by entering someone's Friend ID instead of
  their display name — no more failed lookups from typos/duplicate names.

### ⚠ REQUIRED: run migration_3.sql in Supabase
The Friend ID feature needs one database change. In your Supabase
dashboard → SQL Editor, paste and run the contents of migration_3.sql
(included in this zip). It adds the friend_code column, generates codes
for all existing accounts, and updates the public leaderboard view. Safe
to re-run. Until it's run, the Friends tab will show "Unavailable — run
migration_3.sql" instead of your ID.

Cache version bumped to ?v=11.
