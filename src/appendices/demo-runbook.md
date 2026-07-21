# Demo runbook

## Scenario

The demo project represents a small command-line application that reads a
crate-evaluation record from JSON. Its planned direct dependencies are:

- `clap` with its `derive` feature for the command-line interface;
- `serde` with its `derive` feature for the evaluation record;
- `serde_json` for reading the record.

This combination should produce a readable dependency graph containing shared
procedural-macro dependencies. It also supports a concrete feature discussion:
the application opts into derive macros for convenience, and those macros run
on the build host.

The demo is not ready while `demo/Cargo.toml` has no dependencies. In that
state, `cargo tree` displays only `supply-chain-demo`.

## Preparation

Run these commands from the repository root:

```bash
cargo fetch --manifest-path demo/Cargo.toml
cargo tree --manifest-path demo/Cargo.toml
cargo tree --manifest-path demo/Cargo.toml --edges all
cargo tree --manifest-path demo/Cargo.toml --invert syn
cargo tree --manifest-path demo/Cargo.toml --edges features
cargo audit --file demo/Cargo.lock
cargo deny --manifest-path demo/Cargo.toml check
```

Verify every command on the presentation machine before the event. Confirm
that `syn` is present before using it for the inverted-tree example; otherwise,
choose another recognizable transitive crate from the generated graph.

## Live sequence

1. Show the three direct dependencies in `demo/Cargo.toml` and explain what
   each contributes to the CLI.
2. Run `cargo tree --manifest-path demo/Cargo.toml` to distinguish direct and
   transitive dependencies.
3. Point out `clap_derive` or `serde_derive` and explain that procedural macros
   execute while the CLI is built.
4. Run `cargo tree --manifest-path demo/Cargo.toml --invert syn` to show why a
   shared transitive dependency is present.
5. Run `cargo tree --manifest-path demo/Cargo.toml --edges features` and trace
   one `derive` feature to the crate it enables.
6. Run `cargo audit --file demo/Cargo.lock`. An empty result means only that no
   matching known advisory was found.
7. Run one focused `cargo deny` check, such as `cargo deny --manifest-path
   demo/Cargo.toml check licenses sources`.
8. Return to the evaluation workflow and state what remains unknown: code
   quality, maintainer trust, suitability for this application, and unknown
   vulnerabilities.

## Fallback

Store dated text captures or screenshots for the tree, inverted tree, feature
tree, audit, and policy checks. The teaching point must survive unavailable
Wi-Fi, registry problems, or an empty advisory result.
