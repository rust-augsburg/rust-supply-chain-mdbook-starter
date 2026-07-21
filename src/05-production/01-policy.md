# From one review to production policy

A lightweight production baseline:

1. Commit `Cargo.lock` for applications.
2. Review new direct dependencies and feature changes.
3. Run advisory and policy checks in CI.
4. Restrict unexpected dependency sources.
5. Assign owners for exceptions.
6. Reassess high-impact dependencies periodically.
7. Preserve enough inventory to respond to incidents.

Policy should make the safe path easy, not make every dependency update
impossible.

## Speaker Notes

Distinguish libraries from deployable applications when discussing lockfiles.
Tailor the policy to organization size and system criticality.

## Transition

Apply the workflow to one real crate and make a defensible decision.
