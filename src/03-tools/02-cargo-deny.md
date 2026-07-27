# `cargo deny`: enforce dependency policy

> **Documentation:** <https://embarkstudios.github.io/cargo-deny/>

```bash
cargo install cargo-deny --version 0.20.2 --locked
cargo deny init
cargo deny check
```

It can check policies concerning:

- advisories;
- licenses;
- banned or duplicate crates;
- dependency sources.

> [!NOTE]
> The generated configuration is a starting point. Production policy must be reviewed and tailored.

For example, see <https://github.com/onmcu/onmcu-rs/blob/main/deny.toml>

## Exceptions
Sometimes there is no fix available for a vulnerability. We can acknowledge that and make cargo deny pass by adding an exception.

The cool thing is: cargo deny will let us know when that is no longer necessary.

So once we update `tinyvec` to the latest (0.2.18) version, the advisory is fixed and our exception can be removed.

```bash
cargo deny check
warning[advisory-not-detected]: advisory was not encountered
   ┌─ /rust-supply-chain-mdbook-starter/demo/prepared_files/deny.toml:16:13
   │
16 │     { id = "RUSTSEC-2026-0103", reason = "No update available (2026-07-27)" },
   │             ━━━━━━━━━━━━━━━━━             ──────────────────────────────── ignore reason
   │             │
   │             no crate matched advisory criteria

advisories ok, bans ok, licenses ok, sources ok
```


## Note on `cargo audit`:
The `cargo audit` command is also able to check against vulnerability databases.
However, it currently lacks the additional features of `cargo deny` like allowing/blocking certain licenses, which is often desired for commercial use.
