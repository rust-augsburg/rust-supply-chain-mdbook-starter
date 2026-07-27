# Supply Chain Security in Rust — mdBook Starter Kit

Starter project for developing a one-hour presentation and accompanying handbook:

**Supply Chain Security in Rust: Evaluating Crates for Production**

## Requirements

- Rust and Cargo
- mdBook
- mdbook-admonish

Install the mdBook tools:

```bash
cargo install mdbook --version 0.4.48 --locked
cargo install mdbook-admonish --version 1.20.0 --locked
```

## Start locally

```bash
mdbook serve --open
```

The book is normally available at:

```text
http://localhost:3000
```

## Useful commands

```bash
make serve
make build
make test
make check
```

Without `make`:

```bash
mdbook serve --open
mdbook build
mdbook test
./scripts/check.sh
```

## Work with Codex in the ChatGPT Mac app

Open this repository as the working folder. Codex will read `AGENTS.md` automatically.

A good first prompt is:

```text
Read AGENTS.md, README.md, TALK_PLAN.md, and src/SUMMARY.md.
Review the current talk structure for a 60-minute technical presentation.
Do not rewrite all chapters. First update TALK_PLAN.md with:
1. timing problems,
2. missing transitions,
3. the three most important improvements.
```

Then continue chapter by chapter:

```text
Develop src/02-evaluation/01-workflow.md into a concise presentation chapter.
Follow AGENTS.md. Keep the visible section suitable for about three minutes
of speaking and put detailed material under Speaker Notes.
```

## Project structure

```text
.
├── AGENTS.md
├── README.md
├── TALK_PLAN.md
├── TASKS.md
├── book.toml
├── Makefile
├── src/
│   ├── SUMMARY.md
│   ├── introduction.md
│   ├── 01-context/
│   ├── 02-evaluation/
│   ├── 03-tools/
│   ├── 04-production/
│   └── appendices/
├── theme/
├── demo/
└── scripts/
```

## Working principle

Each main chapter has two layers:

1. **Presentation content**: brief and scannable.
2. **Speaker Notes**: explanations, examples, questions, and transitions.

The generated mdBook is also the handout. Material that would overload a live slide belongs in the notes or appendices.
