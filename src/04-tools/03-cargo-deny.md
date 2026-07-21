# `cargo deny`: enforce dependency policy

```bash
cargo install cargo-deny --locked
cargo deny init
cargo deny check
```

It can check policies concerning:

- advisories;
- licenses;
- banned or duplicate crates;
- dependency sources.

The generated configuration is a starting point. Production policy must be
reviewed and tailored.

## Speaker Notes

Show one understandable rule rather than the full configuration.

A useful example is denying an unexpected Git source or enforcing a small
license allow-list.
