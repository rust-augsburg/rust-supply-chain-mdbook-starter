# 1. Need and alternatives

Ask before researching popularity:

- Is this functionality required?
- Can the standard library provide it?
- Is an existing dependency already sufficient?
- Would a small local implementation be easier to audit?
- What maintenance burden would local code create?

Avoiding a crate is not automatically safer. The comparison is between two
real maintenance and security costs.


## Transition

When the dependency is justified, evaluate the people and process behind it.
