# TEEV Goals

## Defining further TEEV development Goals to ensure validation testing and correctness of deployed applications

increasing the fidelity and correctness of autonomous
system requirements by developing methods and tools to enable the generation of requirements that are, where
possible, mathematically expressible, analyzable, and automatically traceable to different levels (or abstractions) of
autonomous system design

## Evidence-Based Design and Implementation

Assurance of appropriate decisions with traceable evidence at every level of design to reduce the current T&E burden
Methods and tools need to be developed at every level of design from architecture definition to modeling abstractions to
software generation / hardware fabrication, enabling the compositional verification of the progressive design process,
thereby increasing test and evaluation efficiency.

### Cumulative Evidence Through RDT & E, DT & OT

Methods must be developed to record, aggregate, leverage, and
reuse M&S and T&E results throughout the system’s engineering lifecycle; from requirements to model-based designs,
to live virtual construction experimentation, to open-range testing. This goal endeavors to research the development of
standardized data formats and Measures of Performance (MOPs) to encapsulate experimental results performed in early
research and development, ultimately reducing the factor space in final operational tests. Additionally, statistics-based
design of experiments methods currently lacks the mathematical constructs capable of designing affordable test matrices
for non-deterministic autonomous software. Software systems require a risk-mitigation methodology offering the same
spirit as Design of Experiments (DOE) while not relying entirely on statistical approaches.


### Runtime Behaviour Predeiction and Recovery

However, for highly complex autonomous systems, an alternate method
leveraging a run-time architecture must be developed that can provably constrain the system to a set of allowable,
predictable, and recoverable behaviors, shifting the analysis/test burden to a simpler, more deterministic run-time
assurance mechanism. On the surface, it may seem disconcerting to allow a system to function without exhaustive testing
/ analysis. However, this concern is born out of the misguided assumption that current software systems are exhaustively
tested and are without errors or defects. Rather, software is run through a series of quality steps, checklists, and
verification practices that increase the implicit confidence of safety-critical software. 17 This goal endeavors to provide a
structured argument, supported by evidence, justifying that a system is acceptably safe and secure not only through offline
tests, but also through reliance on real-time monitoring, prediction, and failsafe recovery. Within this paradigm, formal
design approaches such as, but not limited to, “assume-guarantee reasoning” generated from design methods outlined in
Goal 2, might provide the offline design considerations and formalisms necessary for articulating the allowable and
certifiable behaviors of an advanced, uncertified system and for validating the design of a run-time constraint, prediction,
and recovery methods.

### Assurance Cases need to be reuseable

eusable assurance case based on previous evidence “building blocks”
An assurance case can be defined as a structured argument, supported by evidence, intended to justify that a system is
acceptably safe and secure.

Therefore, not only do multiple new TEVV methods need to be employed to enable the fielding of
autonomous systems, a new research area needs to be investigated in formally articulating and verifying that the
assurance argument itself is valid.

 Research must be done to formalize assurance cases for the purposes of analysis and
reuse, providing a comprehensive argument that all requirements have been satisfied, including safety, security,
performance, etc. 

The assurance case provides a means to structure the reasoning that engineers implicitly use to gain confidence that
systems will work as expected. It also becomes a key element in the documentation of the system and provides a mapping
to more detailed information. The concept of an assurance case has been derived from the safety case, a construct that has
been used successfully in Europe for over a decade to document safety for nuclear power plants, transportation systems,
automotive systems, and avionics systems. Much like a legal case presented in a courtroom, an assurance case requires
arguments linking evidence with claims of conformance to dependability-related requirements. 22 Several certification
standards and guidelines in the defense, transportation (aviation, automotive, rail), and healthcare domains now
recommend and/or mandate the development of assurance cases for software-intensive systems.23

