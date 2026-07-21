# Why supply-chain security?

Most applications execute far more third-party code than code written by the
application team.

A dependency can affect:

- runtime behavior;
- build scripts and developer machines;
- release reproducibility;
- legal obligations;
- the ability to respond to future vulnerabilities.

> A crate can be technically excellent and still be unsuitable for a specific
> production environment.

## Speaker Notes

Avoid unsupported statistics. Show a dependency count from the demo project or
a familiar internal application instead.

Emphasize that this is normal software engineering, not evidence that the Rust
ecosystem is uniquely unsafe.

## Transition

The first surprise is that one dependency rarely means one crate.
