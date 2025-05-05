# Dependability Design

Design for dependability involves a three-step flow: risk analysis, risk mitigation, and risk
assessment.

## Risk Analysis

Risk analysis aims at providing answers to the following questions: What are the consequences
of system hazards, what can go wrong, and how likely are these to occur [27]. Briefly, there is a
large number of risk analysis techniques available to study the links between the different causes
of risk and their potential effects. They cover a wide range of methods and practices, from the
simplest, such as fault tree analysis [28], to the most sophisticated, involving architecture analysis,
such as STPA [29] or dataflow analysis, such as FPTC [30]. The causes of risk can be “internal,”
such as design errors or software bugs, or external, due to human misbehavior (malicious or not)
or natural causes, like failures or disasters. Their effects can be hazards compromising the safety,
the security, or the performance of the system.
Risk analysis cannot be fully automated, and it requires common-sense engineering skills and a
thorough understanding of the system’s behavior and its interaction with the environment. It re-
quires good systems engineering expertise, and obviously it can be tedious, as it requires thorough
case-by-case analysis.
Risk analysis techniques, successfully applied to automated systems operating in aircraft or
factories, are difficult to apply to autonomous systems due to the complexity and unpredictability
of that latter’s physical and human environment. For example, a failure typology for light vehicles
published in a DOT document [31], lists 37 cases, many of which are difficult to analyze, because
they are the results of imponderable events or human and animal actions

### Risk Mitigation

Existing risk mitigation methods suffer from similar limitations. They involve the systematic
design of mechanisms to address the hazards/threats identified in the risk analysis by implement-
ing the so-called detection-isolation-recovery mechanisms designed to ensure resilience [32]. For
each type of hazard, a detection mechanism is implemented with associated isolation techniques
to contain its effect until a mitigation mechanism can take over

#### Risk

##### Architectural Design

![Architectural Design for simulation and testing autonomous Systems](/Research/SystemDesign/pic/SimulationAndTestArchitectureforValidation.png)

##### Automation Space

![Automation Space](/Research/SystemDesign/pic/AutomationSpaceDiagram.png)
Trustworthy Autonomous System Development 
 The automation/autonomy space.
Furthermore, for such environments, extensive instrumentation can be used to improve the
quality of perception. For example, platooning of trucks on highways seems to be feasible in the
near future.
Which is consistent with, and in fact reflects, our characterization of autonomy, shows
how varying degrees of autonomy can be achieved through the interplay of four parameters:
(1) complexity of situation awareness, (2) complexity of decision-making, (3) absence of human
intervention in operating the system, and (4) complexity of knowledge management. The grey
intervals delimit pure automation: the environmental stimuli are digital data and the operation of
the system under human control, possibly assisted by automated systems.
The degree of autonomy increases as one moves from the automation zone away from the
origin, as when, for example, one moves from digital sensory data to quality data, and then to
general data that may be ambiguous and/or vague. Autonomy also increases as one moves from
human to machine control, with the human remaining in the loop, with or without the possibility
of intervention.
When the operation of the system is controlled by the machine, decision-making concerns
management at the level of goals or even the entire mission. Finally, autonomy is reinforced by
the ability to manage knowledge, as we move from fixed knowledge to the case where the system
generates knowledge, creating in the process new concepts and objectives.
In conclusion, although there is a clear distinction between automation and autonomy, there
are different ways to increase the autonomy of a system. We note that similar ideas have been
presented in References [57, 58] to study the degrees of autonomy of assistants.

##### References

George Apostolakis. 2004. How useful is quantitative risk assessment? Risk Anal. 24, 3 (2004).

W. S. Lee, D. L. Grosh, F. A. Tillman, and C. H. Lie. 1985. Fault tree analysis, methods, and applications a review. IEEE
Trans. Reliabil. R-34, 3 (1985)

Asim Abdulkhaleq, Stefan Wagner, and Nancy Leveson. 2015. A comprehensive safety engineering approach for
software-intensive systems based on STPA. arXiv:1612.03109 [cs.SE]. https://doi.org/10.48550/arXiv.1612.03109.

NHTSA. 2007. Pre-crash scenario typology for crash avoidance research, DOT HS 810 767
