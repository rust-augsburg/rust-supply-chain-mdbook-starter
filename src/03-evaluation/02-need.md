# 1. Need and alternatives

Ask before researching popularity:

- Is this functionality required?
- Can the standard library provide it?
- Is an existing dependency already sufficient?
- Would a small local implementation be easier to audit?
- What maintenance burden would local code create?

Avoiding a crate is not automatically safer. The comparison is between two
real maintenance and security costs.

## Speaker Notes

Use a small example such as parsing a trivial fixed format versus adopting a
large general-purpose parser.

## Transition

When the dependency is justified, evaluate the people and process behind it.
