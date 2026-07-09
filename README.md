# Linux Security Hardening

A hands-on log of me hardening my own Ubuntu system, following the
CIS Benchmark (consensus-driven security guidelines published by the
Center for Internet Security), as a way to study cybersecurity concepts
practically and get comfortable with the Linux command line and Bash.

## Motivation

Each entry here documents a real security control I implemented on my
own system, following CIS Benchmark recommendations. The goal isn't to
just run commands from a guide, it's to understand what each tool does
internally, troubleshoot real problems as they come up, and document my
reasoning along the way. As I get more comfortable with Bash, some of
these manual procedures may evolve into automated scripts — but for now,
the priority is understanding over automating.

## Environment

* OS: Ubuntu (24.04)
* Shell: Bash
* Tested on: personal computer

## Structure

Each hardening control is isolated in its own folder, containing:

* `docs/` — step-by-step guide with screenshots, commands used, and the
  reasoning behind each decision (including errors encountered and how
  they were resolved)
* `scripts/` — automation scripts, when applicable (some controls are
  still fully manual while I build up my Bash skills)
* `README.md` — overview of that specific control
* `commands/` — manual commands typed one by one with the purpose of hardening the system

## Disclaimer

Procedures and scripts developed and tested in a personal study
environment. Adapt before using in production.
