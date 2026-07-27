# One dependency seldom comes alone

Instead of only the depenceny we wanted to add, e.g., by running `cargo add A`, we get `[0...N]` additional sub-dependencies (aka. **"transitive" dependencies**).

The dependency graph generally looks like this:
```text
Application
├── direct dependency A
│   ├── transitive dependency B
│   └── transitive dependency C
└── direct dependency D
    └── transitive dependency E
```
> [!NOTE]
> Reviewing only direct dependencies leaves most of the trust graph unexamined.


## Rust Peculiarities

In Rust, we must distinguish several types of dependencies:

- direct versus transitive
- normal, build, and development dependencies
- default versus optional features (and their dependencies)

> [!CAUTION]
>Build scripts (`build.rs`) are executed **at build time on the developer's machine** and can read from and write to the file system.
>
>You see how this could backfire...


## General Advice

Keep the number of dependencies and enabled features to a minimum.

Following this advice will give you:

- faster build time
- smaller binaries
- smaller `target` folders
- smaller attack surface
- less maintenance (updating dependencies, reviewing security advisories, ...)
- less trouble with licenses
- fewer bugs (not every crate is perfect!)

> [!NOTE]
> **(Not necessarily) fun fact:** we do still rely on the compiler as a "dependency".
> Which has been compiled by *some* other compiler.
