# Round 5 — Weekly Recap, Achievements, Ambient Sound, Bell Schedule, .ics Import, Grade Tracker

## Weekly Recap & Achievement Log (next to the StudyCore logo)
Two new buttons in the top bar. Weekly Recap summarizes the last 7 days:
focus minutes, Leitner reviews, flashcards made, practice tests taken, note
edits, and planner tasks completed. Achievement Log shows 16 unlockable
achievements (streaks, levels, focus session milestones, flashcard/test/
note counts) — locked ones are dimmed, unlocked ones show 🏆. All of this
runs off a new lightweight activity log that records every XP-worthy
action as it happens; a separate "lifetime stats" counter (never trimmed)
ensures achievement progress is never lost even though the day-by-day log
only keeps 60 days of history.

## Ambient sound (Timer tab)
6 options — None, White noise, Pink noise, Brown noise, Rain, Ocean waves —
all synthesized live in the browser with the Web Audio API. No sound files,
no external service, no ongoing cost. Volume slider included. Your last
choice is remembered for next time (though it won't auto-play on load,
since browsers block audio without a click first).

## Class bell schedule (Timer tab)
Add up to 10 periods (name each one — "Algebra II," "Lunch," "Free," etc.)
and up to 9 bell times marking the boundaries between them. Once set up,
shows "Currently: Period 3 (Chemistry) — 12 min until the bell" live,
updating every 30 seconds, or "School's out" outside those hours.

## .ics calendar import (Calendar tab)
Upload a .ics file exported from Google Classroom/Canvas/Schoology. Every
event gets pulled into a review list where you can rename it, adjust the
due date, uncheck anything you don't want, and set a workload type
(Questions/Pages/no quantity) + amount before importing — after that it's
a normal Planner task with full Parkinson's-Law day-by-day breakdown
support, same as anything typed in by hand.

## Grade tracker (new "📊 Grades" tab)
Up to 5 subjects (renameable, same pattern as flashcards/notebooks). Each
subject tracks Major grades and Quiz grades separately per term (1–4),
with an adjustable weight split between the two categories (default
70/30). Automatically computes:
- Term 1–4 averages (weighted by your major/quiz split)
- Semester 1 = average of Terms 1–2
- Semester 2 = average of Terms 3–4
- Final grade = average of both semesters
An overview table at the bottom shows all 5 subjects side by side across
every term, semester, and final grade at once.
