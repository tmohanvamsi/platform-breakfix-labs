# Contributing

Contributions should teach investigation, not merely provide a broken manifest.

## Required lab structure

Each lab must include:

- A realistic scenario, symptom, and measurable objective
- A reproducible environment with low-cost local execution where possible
- Evidence obtainable through normal operational tooling
- At least two progressive hints that do not immediately reveal the cause
- A tested fix and explicit validation criteria
- Prevention guidance and a 30–60 second interview explanation
- Cleanup instructions that target only resources created by the lab

## Difficulty

- `beginner`: one failure domain and a direct evidence trail
- `intermediate`: multiple plausible hypotheses or interacting components
- `advanced`: ambiguous symptoms, misleading signals, or cascading failures

## Spoiler policy

Do not put the root cause in filenames, resource names, commit messages, lab titles, or the opening scenario. Keep answers under `solution/`. Broken assets may contain the defect because learners must inspect them during diagnosis.

## Safety

- Prefer kind, containers, and local emulators.
- Never require real credentials in committed files.
- Make cloud cost implications explicit.
- Avoid broad deletion commands; cleanup must name exact lab resources.
- Provide sample environment files rather than secrets.

## Pull requests

Include the platform versions used, exact reproduction commands, expected symptom, validation output, and confirmation that cleanup was tested.

