# Demo project

This deliberately minimal Cargo application is the base for the live
dependency evaluation.


```bash
cargo tree
cargo tree --edges all
cargo tree --duplicates
cargo audit
cargo deny init
cargo deny check
```

## Cargo Vet Example

```bash
cargo vet init
cargo vet diff proc-macro2 1.0.106 1.0.107 --mode=local
cargo vet certify proc-macro2 1.0.106 1.0.107
```
