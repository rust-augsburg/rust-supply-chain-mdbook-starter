# Three takeaways

1. **Minimize first.** Every dependency adds code, people, infrastructure, and
   future change to the trust boundary.
2. **Evaluate multiple dimensions.** Popularity and scanners are insufficient
   on their own.
3. **Make trust reviewable.** Record the decision and continuously check the
   assumptions in CI and operations.

> Every `cargo add` is a trust decision.

## Speaker Notes

End with a concrete action: inspect the dependency graph of one production
application this week and select one dependency for a documented review.
