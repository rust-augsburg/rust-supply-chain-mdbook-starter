# The dependency graph is the product

```text
Application
├── direct dependency A
│   ├── transitive dependency B
│   └── transitive dependency C
└── direct dependency D
    └── transitive dependency E
```

Reviewing only direct dependencies leaves most of the trust graph unexamined.

Key distinctions:

- direct versus transitive;
- normal, build, and development dependencies;
- default versus optional features;
- host code versus target code.

## Speaker Notes

Explain why build dependencies matter: build scripts and procedural macros run
on the build host.

Use `cargo tree --edges all` during the demo if the output remains readable.

## Transition

Once the full graph is visible, we can define what kinds of failure we are
trying to prevent or contain.
