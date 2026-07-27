# From one review to production policy

A lightweight production baseline:

1. Commit `Cargo.lock` for applications.
2. Review new direct dependencies and feature changes.
3. Run advisory and policy checks in CI (e.g., `cargo deny` or `pnpm audit`)
4. Restrict unexpected dependency sources (e.g., using `cargo deny`)
5. Assign owners for exceptions.
6. Reassess high-impact dependencies periodically.

Policy should make the safe path easy, not make every dependency update impossible.
