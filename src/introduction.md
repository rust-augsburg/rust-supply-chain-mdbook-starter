# Supply Chain Security in Rust

## Evaluating Crates for Production

A one-hour practical presentation.

> Every dependency is a decision about whose code, process, and future updates
> your production system will trust.

**Presenter:** Julian Dickert & Michael Schury
**Event:** Rust Augsburg Meetup
**Date:** 2026-07-27

## Speaker Notes

Open with the practical decision developers make every week: adding one line to
`Cargo.toml`. Explain that the talk is not about declaring crates “safe” or
“unsafe.” It is about making a better, reviewable production decision.

## Transition

Before evaluating individual crates, establish why dependencies deserve
security attention.
