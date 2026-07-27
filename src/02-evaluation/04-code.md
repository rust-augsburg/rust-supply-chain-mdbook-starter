# 3. Code, unsafe, and build behavior

Review the parts with disproportionate trust:

- `unsafe` blocks and their invariants;
- build scripts;
- procedural macros;
- native libraries and FFI;
- network or filesystem access;
- cryptographic and parsing code;
- generated code.

`unsafe` is not automatically a defect. Unclear or unreviewed invariants are
the concern.

## Notes

Distinguish counting unsafe usage from understanding it. A tool can identify
where unsafe exists; it cannot establish that every invariant is correct.

> [!IMPORTANT]
> A small crate can still import a large and unexpected dependency graph.
