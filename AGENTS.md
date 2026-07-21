# AGENTS.md

## Project purpose

This repository contains an mdBook-based one-hour technical presentation and
an extended handout titled:

**Supply Chain Security in Rust: Evaluating Crates for Production**

The primary audience is Rust developers, technical leads, security engineers,
and maintainers who already understand basic Cargo usage.

## Source of truth

- `src/SUMMARY.md` defines the chapter order.
- `TALK_PLAN.md` defines timing and presentation intent.
- `TASKS.md` tracks unfinished work.
- `README.md` documents local usage.
- `book.toml` defines mdBook configuration.

Do not add a chapter without also adding it to `src/SUMMARY.md`.
Do not substantially change presentation timing without updating `TALK_PLAN.md`.

## Content model

Each main chapter should contain:

1. One clear title.
2. A brief visible presentation section.
3. At most one central claim.
4. A `## Speaker Notes` section.
5. A final `## Transition` section where useful.

The visible portion should normally fit on one screen and take two to four
minutes to present. Detailed explanations belong in Speaker Notes or an
appendix.

## Writing style

- Use clear, direct English.
- Prefer short paragraphs over long bullet lists.
- Define security terms when first introduced.
- Distinguish facts, heuristics, and opinions.
- Avoid fear-based language.
- Do not imply that a tool proves a crate is secure.
- Treat download counts, stars, and version numbers as signals, not proof.
- Prefer concrete Cargo commands and realistic examples.
- Do not fabricate incidents, advisories, statistics, or audit results.

## Technical rules

- Keep Markdown compatible with mdBook/CommonMark.
- Use relative links for repository content.
- Add Rust code fences with `rust`.
- Add shell code fences with `bash`.
- Commands must be safe to copy and run.
- Do not introduce an mdBook preprocessor unless it is necessary and documented.
- Avoid JavaScript dependencies unless the user explicitly requests them.
- Preserve the lightweight custom theme.
- Keep examples buildable where practical.
- Run checks after structural changes.

## Required checks

Run:

```bash
mdbook build
mdbook test
./scripts/check.sh
```

For changes under `demo/`, also run:

```bash
cargo fmt --manifest-path demo/Cargo.toml --check
cargo check --manifest-path demo/Cargo.toml
cargo clippy --manifest-path demo/Cargo.toml --all-targets -- -D warnings
```

If a required tool is unavailable, report that clearly instead of claiming the
check passed.

## Research and citations

Security tooling and ecosystem behavior can change. When adding claims about
current tools, crates.io features, RustSec, Cargo, OpenSSF, SLSA, Sigstore, or
recent incidents:

- verify against primary sources;
- record links in `src/appendices/resources.md`;
- include the date checked when the fact is time-sensitive;
- paraphrase sources rather than copying large passages.

## Editing workflow

For a normal content task:

1. Read the target chapter and adjacent chapters.
2. Read the matching section in `TALK_PLAN.md`.
3. State the intended change briefly.
4. Make the smallest coherent edit.
5. Update `TASKS.md` if a task is completed or discovered.
6. Run the relevant checks.
7. Summarize changed files and remaining uncertainties.

## Scope control

Do not rewrite the entire book when asked to improve one chapter.
Do not add decorative complexity before the narrative is stable.
Do not convert this project to Reveal.js, PowerPoint, or another framework
unless explicitly requested.

## Presentation quality checklist

Before considering a chapter complete, verify:

- Is the main claim obvious within ten seconds?
- Can it be explained without reading the page aloud?
- Is the audience told why the topic matters?
- Is there a practical action or decision rule?
- Does the transition prepare the next chapter?
- Are qualifications and limitations stated?
