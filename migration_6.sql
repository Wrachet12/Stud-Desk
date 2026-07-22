-- StudyCore — migration 6: direct share-to-friend.
-- Run once in the Supabase SQL Editor.
-- Adds an optional recipient to shared_decks so a deck can be sent straight
-- to a specific friend (in addition to the existing share-code path, which
-- keeps working exactly as before — recipient_id is just null for those).

alter table public.shared_decks
  add column if not exists recipient_id uuid references auth.users on delete cascade,
  add column if not exists dismissed boolean not null default false;

create index if not exists shared_decks_recipient_idx on public.shared_decks(recipient_id);

-- The existing "Anyone signed in can browse shared decks" select policy from
-- migration_2.sql already covers recipients reading their own direct shares
-- (it's a broad authenticated-read policy), so no new SELECT policy is
-- needed here. Recipients also need to be able to dismiss/mark their own
-- direct shares as handled:
create policy "Recipients can update their own direct shares"
  on public.shared_decks for update
  using (auth.uid() = recipient_id);
