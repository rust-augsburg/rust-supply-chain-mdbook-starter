# Other useful tools

Depending on the threat model:

- [`cargo geiger`](https://github.com/geiger-rs/cargo-geiger) for locating unsafe usage
- [`cargo auditable`](https://github.com/rust-secure-code/cargo-auditable) for embedding dependency information in binaries
- update automation for timely dependency changes (e.g., dependabot)
- SBOM generation for inventory and incident response (-> CRA!)

> [!TIP]
> Tools provide evidence and enforcement. They do not replace engineering judgment.
