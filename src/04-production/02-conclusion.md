# Three takeaways

1. **Minimize first.** Every dependency adds code, people, infrastructure, and
    future change to the trust boundary. Dependency updates with breaking changes
    can be very time-consuming to implement!
2. **Evaluate multiple dimensions.** Popularity and scanners are insufficient
    on their own.
3. **Make trust reviewable.** Record the decision and continuously check the
   assumptions in CI and operations.

> [!IMPORTANT]
> Every `cargo add` is a trust decision.
