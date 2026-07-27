# Talk plan

## Title

Supply Chain Security in Rust: Evaluating Crates for Production

## Audience promise

After the talk, participants should be able to evaluate a Rust crate using a
repeatable workflow, document the remaining risks, and establish lightweight
dependency controls in CI.

## Central thesis

Adding a crate is not merely a technical convenience. It is a production trust
decision involving code, maintainers, infrastructure, licenses, and future
updates.

## Timing

| Section | Time | Purpose |
|---|---:|---|
| Opening and motivation | 5 min | Establish relevance and central thesis |
| Dependency model | 5 min | Explain direct and transitive trust |
| Threat model | 9 min | Identify realistic failure modes |
| Evaluation workflow | 17 min | Teach the main decision process |
| Tool-assisted checks | 10 min | Demonstrate what tools can and cannot prove |
| Production policy | 7 min | Turn evaluation into repeatable controls |
| Worked example | 5 min | Apply the workflow to one crate |
| Conclusion | 2 min | Reinforce three takeaways |
| Total | 60 min | |

## Narrative arc

1. We depend on more code than we write.
2. Dependency risk has several independent dimensions.
3. No single metric or scanner answers “Is this crate safe?”
4. A structured review makes the decision explicit and repeatable.
5. Automation maintains policy, but humans still own the trust decision.

## Three takeaways

1. Minimize dependencies before trying to secure them.
2. Evaluate maintenance, code, dependency graph, provenance, and legal fit
   together.
3. Record the decision and continuously verify the assumptions.

## Planned audience interactions

- Ask who has inspected `cargo tree` before shipping.
- Ask which signal feels more trustworthy: downloads, recent commits, or known
  production users.
- During the worked example, ask for a preliminary “adopt / investigate /
  reject” vote.

## Demo rule

The live demo must have a rehearsed fallback consisting of captured command
output in `src/03-tools/`. Never make the core learning outcome depend on
network access.
