# Demo project

This deliberately minimal Cargo application is the base for the live
dependency evaluation.

Do not add random dependencies merely to make the graph larger. Each selected
crate should support a specific teaching point documented in the worked example
and demo runbook.

After choosing the demo:

```bash
cargo generate-lockfile
cargo tree
cargo tree --edges all
cargo tree --duplicates
cargo audit
cargo deny init
cargo deny check
```
