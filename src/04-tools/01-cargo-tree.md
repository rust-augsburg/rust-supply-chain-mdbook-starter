# `cargo tree`: understand the graph

```bash
cargo tree
cargo tree --edges all
cargo tree --duplicates
cargo tree --invert crate_name
```

Use it to answer:

- Why is this crate present?
- Which feature enabled it?
- Is more than one version included?
- Does it run only during development or build time?

It reveals structure, not trustworthiness.

## Speaker Notes

Prepare one output where `--invert` clearly explains an unexpected transitive
dependency.
