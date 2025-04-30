# Challenges to Autonomy

ATEVV Challenge 1 - State-Space Explosion:
Autonomous systems are characteristically adaptive, intelligent, and/or may incorporate learning. For this reason, the
algorithmic decision space is either non-deterministic, i.e. the output cannot be predicted due to multiple possible
outcomes for each input, or is intractably complex. Because of its size, this space cannot be exhaustively searched,
examined, or tested; it grows exponentially as all known conditions, factors, and interactions expand. Therefore there
are currently no established metrics to determine various aspects of success or comparison to a baseline state
enumerated.
 ATEVV Challenge 2 - Unpredictable Environments:
The power of autonomous agents is the ability to perform in unknown, untested environmental conditions. Examples
of environmental “stimuli” include actors capable of making their own decisions in response to autonomous system
actions; producing a cognitive feedback loop that explodes the state space. Additionally, autonomous decisions are
not necessarily memoryless and the state space is not just the intractably complex in the current situation, but also in
the multiplicity of situations over time. Currently fielded systems have very limited robustness to dynamic / changing
environmental conditions. Adaptive autonomous algorithms have the potential to overcome current automated system
brittleness in future dynamic, complex, and/or contested environments. However, this performance increase comes
with the price of assuring correct behavior in a countless number of environmental conditions. This exacerbates the
state-space explosion problem.
 ATEVV Challenge 3 - Emergent Behavior:
Interactions between systems and system factors may induce unintended consequences. With complex, adaptive
systems, how can all interactions between systems are captured sufficiently to understand all intended and unintended
consequences? How can autonomous design approaches identify or constrain potentially harmful emergent behavior
both at design time and at run time? What limitations are there with the current Design of Experiments approach to
test vector generation when considering adaptive decision-making in both discrete decision logic and continuous
variables in an unpredictable environment? Since emergent behavior can be produced by interactions between small,
seemingly insignificant factors how can we provide test environments or test oracles that are of sufficient fidelity to
examine and capture emergent behavior (in M&S, T&E, and continuous operations or run time testing)?
 ATEVV Challenge 4 - Human-Machine Communication:
Handoff, communication, and interplay between operator and autonomy become a critical component to the trust and
effectiveness of an autonomous system. Current certification processes eliminate the need for “trust” through
exhaustive Modeling and Simulation (M&S) and T&E to exercise all possible operational vignettes. When this is not
possible at design time, how can trust in the system be ensured, what factors need to be addressed, and how can
transparency and human-machine system requirements for the autonomy be defined