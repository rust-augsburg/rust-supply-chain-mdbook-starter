# `cargo audit`: find known advisories

```bash
cargo install cargo-audit --locked
cargo audit
```

It compares dependencies in `Cargo.lock` with the RustSec Advisory Database.

Useful for:

- local review;
- CI checks;
- identifying the dependency path to an affected crate.

It cannot detect unknown vulnerabilities or prove that an advisory is
exploitable in your application.

## Speaker Notes

Use current official documentation before the final presentation. Capture a
fallback output so the demo does not depend on a live database update.
