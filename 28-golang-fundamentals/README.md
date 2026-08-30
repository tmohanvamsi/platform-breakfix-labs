# Go Fundamentals — Learning Track

This track is different from the rest of the repo: it's not a breakfix lab,
it's a learning space. Purpose: actually learn Go, not just fix broken Go
later in `12-k8s-controllers-go`. That track (CRDs/controllers/operators in
Go) is the eventual destination — this is the on-ramp.

Following: **"Go / Golang Full Course for Beginners" — TechWorld with Nana**
(YouTube). Pace and topic order follow whatever the user is currently
watching, not a fixed syllabus — update `notes.md` and `exercises/` as
sections are completed.

## How this track works

1. **Exercises per topic** — after each tutorial section, a small numbered
   exercise under `exercises/NN-topic/` to actually write the code, not just
   watch it. Each exercise gets a short `TASK.md` (what to build, no
   solution given upfront) and the user writes the `.go` file themselves.
2. **Concept notes on demand** — `notes.md` collects plain-language
   explanations/analogies for anything that needed clarifying, so it's
   searchable later instead of re-explained from scratch.
3. **Real mini-project, built in parallel** — `labctl/`, a small CLI tool
   for *this* repo (validates lab folder structure, reports which labs are
   done/in-progress/not-started). Grows incrementally as new Go concepts are
   learned: plain functions and structs first, then file I/O, then error
   handling, then CLI flags, then maybe tests. It's a real tool the repo
   actually benefits from, not a throwaway toy.

## Structure

```text
28-golang-fundamentals/
├── README.md          (this file)
├── notes.md           (concept explanations, updated on demand)
├── exercises/
│   └── NN-topic/
│       ├── TASK.md    (what to build — no solution)
│       └── main.go    (written by the user)
└── labctl/            (the parallel mini-project, grows over time)
```

## Status

Just started. No exercises or `labctl` code written yet — waiting to hear
which tutorial section has been covered so the first exercise matches it.
