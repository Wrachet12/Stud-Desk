-- StudyCore — migration 3: Friend IDs.
-- Run this once in your Supabase project's SQL Editor.
-- Adds a unique, shareable friend code to every profile, backfills codes
-- for all existing accounts, and rebuilds the public leaderboard view so
-- the app can look up a user by their Friend ID (without ever exposing
-- private app data).

-- 1. Add the column.
alter table public.profiles
  add column if not exists friend_code text unique;

-- 2. Backfill a code for every existing account that doesn't have one.
--    Format: 8 uppercase hex characters (e.g. 4F7A9C2E).
update public.profiles
set friend_code = upper(substr(md5(random()::text || id::text), 1, 8))
where friend_code is null;

-- 3. Rebuild the safe public leaderboard view to include friend_code so
--    the app can resolve "add friend by ID" lookups. Still exposes only
--    non-private fields — never app_data.
create or replace view public.leaderboard as
  select id, username, name, xp, level, friend_code
  from public.profiles;

grant select on public.leaderboard to authenticated;
