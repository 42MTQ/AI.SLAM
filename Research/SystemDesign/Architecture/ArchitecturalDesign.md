# Architectural Design

## Architecture Refinement using STPA – Brief Explanation

STPA (System-Theoretic Process Analysis) is a hazard analysis technique developed to identify unsafe control actions in complex systems, especially those involving software and hardware interactions.

### How does it work?

Initial Architecture Design
Start with a draft architecture (components, controllers, sensors, actuators, software modules, etc.).

Apply STPA

    Identify potential hazards.

    Determine unsafe control actions (UCAs).

    Identify causal scenarios (why those UCAs might occur).

Refine Architecture Based on STPA Findings

    Add safety constraints or controllers (e.g. watchdog, limiters).

    Restructure modules to separate safety-critical logic.

    Modify data flow or add redundancy.

    Ensure feedback loops and sensor validation are in place.

Iterate
Repeat the process until hazards are sufficiently mitigated in the architecture.

#### ✅ Goal

Design an architecture that prevents unsafe behavior, not just from component failure, but also from flawed interactions, software bugs, or incorrect human input.
