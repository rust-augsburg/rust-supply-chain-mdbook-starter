# Threats: What Can Go Wrong

Three things can go wrong with a dependency.

They can all exist simultaneously, and **each requires different evidence** to rule out.

- **Vulnerability:** the published code contains an exploitable defect or an intentionally vulnerable component.[^xz]
- **Compromise:** an attacker gains influence over the source, the publishing process, or the build pipeline.[^xz]
- **Abandonment:** the crate no longer receives the maintenance your production system needs.[^abandoned]

[^xz]: See e.g. <https://en.wikipedia.org/wiki/XZ_Utils_backdoor>
[^abandoned]: There is a ton of rust crates out there that are not maintained!

> [!NOTE]
> These map onto the rest of this book: vulnerabilities show up in **security advisories**, compromise is a question of **provenance and reproducibility**, and abandonment is read from **maintenance signals**.

## The Problem

So how do we review the code we actually get?

In 2024, [Adam Harvey](https://lawngno.me/blog/2024/06/10/divine-provenance.html) tried to verify the top 999 crates on crates.io against their public source repositories. Only **~83 %** could be confirmed to match exactly.\
For most of the rest he **could not match the published crate with any repository state at all**, e.g., due to rewritten git history, missing metadata, or no linked repository.

Fortunately, he found no malicious code.

> [!CAUTION]
> Almost nobody performs this check and the file that compiles into your binary is the **crates.io tarball**. Not the GitHub page you are reading.

So how should we know what we get?
