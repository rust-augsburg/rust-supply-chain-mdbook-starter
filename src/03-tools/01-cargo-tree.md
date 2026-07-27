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

## Example for demo project

```bash
$ cargo tree
supply-chain-demo v0.1.0 (/rust-supply-chain-mdbook-starter/demo)
└── thin-vec v0.2.15
    └── serde v1.0.229
        └── serde_core v1.0.229
```

We can also see which feature enabled the `serde` dependency:
```bash
$ cargo tree --edges features --invert serde

serde v1.0.229
├── serde feature "default"
│   └── thin-vec v0.2.15
│       └── thin-vec feature "serde"
│           └── supply-chain-demo v0.1.0 (/rust-supply-chain-mdbook-starter/demo)
│               └── supply-chain-demo feature "default" (command-line)
└── serde feature "std"
    └── serde feature "default" (*)
```

Very common use case: finding out which dependency includes an old version of another shared/transitive dependency.
Enable the `serde` dependency for the `0.9` version and then run again.

```bash
$ cargo tree -i serde
error: specification `serde` is ambiguous
help: re-run this command with one of the following specifications
  serde@0.9.15
  serde@1.0.229
```

So we specify that we want to know which dependency pulls in serde v1:
```bash
$ cargo tree -i serde@1.0
serde v1.0.229
└── thin-vec v0.2.15
    └── supply-chain-demo v0.1.0 (/rust-supply-chain-mdbook-starter/demo)
```
