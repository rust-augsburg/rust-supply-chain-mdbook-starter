# 4. Dependencies and features

Inspect:

```bash
cargo tree
cargo tree --edges all
cargo tree --duplicates
```

Questions:

- Which features are enabled by default?
- Can unnecessary features be disabled?
- Are there multiple versions of important crates?
- Are build dependencies justified?
- Are sources restricted to expected registries or repositories?

The graph describes what is included. Evidence helps establish what is known
about it.

> [!IMPORTANT]
> Cargo features are additive, so check with `cargo tree --edges features`

