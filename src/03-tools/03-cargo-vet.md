# `cargo vet`: auditing your supply chain

> **Documentation:** <https://mozilla.github.io/cargo-vet/index.html>

```bash
# Initialize cargo vet
cargo vet init
```

In the `supply-chain` folder, check the config.toml.
All dependencies are listed as "exemptions" there, so the next run of `cargo vet` will pass.

## Importing External Audits
To reduce the number of necessary exemptions, import the reviews of trusted sources like Mozilla, Google and ariel-os.
Add the following to the `config.toml` file:

```toml
[imports.ariel-os]
url = "https://raw.githubusercontent.com/ariel-os/ariel-os/main/supply-chain/audits.toml"

[imports.google]
url = "https://raw.githubusercontent.com/google/supply-chain/main/audits.toml"

[imports.mozilla]
url = "https://raw.githubusercontent.com/mozilla/supply-chain/main/audits.toml"
```

## Performing Reviews

Chances are, we still have some unreviewed changes (e.g. patch changes) compared to the imported reviews.

Let's let cargo vet suggest something to review:
```bash
cargo vet suggest
```

We find that currently (2026-07-23) the proc-macro2 crate's changes from version 1.0.106 to 1.0.107 need a review.

To perform a review, get the diff of these versions as suggested by the previous command's output:

```bash
cargo vet diff proc-macro2 1.0.106 1.0.107 --mode=local
```

After a careful review, we can certify that these changes do not introduce any new vulnerabilities:

```bash
cargo vet certify proc-macro2 1.0.106 1.0.107
```
