.PHONY: serve build test check clean demo-check

serve:
	mdbook serve --open

build:
	mdbook build

test:
	mdbook test

check:
	./scripts/check.sh

demo-check:
	cargo fmt --manifest-path demo/Cargo.toml --check
	cargo check --manifest-path demo/Cargo.toml
	cargo clippy --manifest-path demo/Cargo.toml --all-targets -- -D warnings

clean:
	mdbook clean
	cargo clean --manifest-path demo/Cargo.toml
