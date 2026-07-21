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

## Speaker Notes

Demonstrate how feature selection changes the graph. Keep the terminal output
small enough that the audience can identify one concrete finding.

## Transition

The graph describes what is included. Evidence helps establish what is known
about it.
