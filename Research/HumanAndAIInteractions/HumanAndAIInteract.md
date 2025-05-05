# Initial and Periodic Knowledge Checks

It must be considered that, in order to understand the IA’s capability as a “pilot”, the system must first
be ‘checked out’ similarly to the human pilot, in that it must be subjected to a variety of nominal and
off-nominal conditions which will test its rule-based knowledge as well as its aptitude for problem-
solving and decision making when the pilot manual alone is not enough to effectively respond to the
situation. In addition to this, we must test the capability of the system to engage in and apply machine
learning techniques in the same way or more efficiently than the human pilot applies experiential
knowledge to a situation.
Simulation and modeling are key approaches to assessing the capabilities of the system, understand-
ing the similarities and differences between human and machine training/learning, and mitigating
associated risks. We first need to define the properties of the simulation software to analyze various
system behaviors. The simulation must adequately (to X level of reliability) determine the IA per-
formed action(s) (within X time/aircraft performance constraints), to an X degree of accuracy, with an
X degree of proficiency, which produced desired result(s) and final outcome(s). For non-deterministic
systems, it is usually inappropriate to score all performance assessments as “pass” or “fail”. There
may be several gradations of “desired” results and outcomes, such that the scoring of IA performance
assessments is never binary, and not always linear. Examples of success factors may include:
• How quickly and accurately was the maneuver performed?
• Did the aircraft stay within its normal operating limits? Did it stay within its threshold limits?
• Was there any damage to the aircraft?
• Did the IA action directly contribute to aircraft damage and/or human injury?
• Could a different IA action have prevented aircraft damage and/or human injury?
The simulation results can also be compared to the simulator performance assessments of human
operators to check that the IA is performing at the same or better capacity, as well as to better under-
stand the similarities and differences in the human vs IA operators’ approaches to various situations.
This understanding will provide insight into different ways of information processing and decision
making; learned differences in behavior will give IA system developers more clarity into what infor-
mation, expectations and intentions need to be communicated between the crew.
104
7.5 Challenges and Approaches for Simulation of Human-IA Interactions
One example of a knowledge test procedure for the human pilot is programming the Flight Man-
agement System (FMS). The structure and interaction method for every FMS system (much like
every aircraft platform and configuration) may be different, and thus a human pilot may be subject
to knowledge testing on a specific system after training, when there is a system update or retrofit, or
periodically as part of a general flight review. Through the use of simulated knowledge tests, the IA
system can be evaluated in somewhat similar ways. The scoring for each actor, human or IA, should
be a hybrid of Pass/Fail and Scaled assessments. Example tasks, expected actions, and knowledge
assessment factors are described below:
Demonstration Task 1
The pilot must check that the current software version and navigation database is loaded immediately
upon start up.
• Human pilot – Navigate to Maintenance page and confirm software version. Navigate to Nav
Ident page and confirm the current Nav DB version. (Knowledge of current versions; knowl-
edge of where this information can be found; what to do if there is a newer version available)
• IA system – Perform automatic software checks at startup. (Knowledge of current versions;
successful initiation of checks; successful completion of checks; successful performance of
software updates).
Demonstration Task 2
Each operating mode has its own purpose. The pilot must demonstrate understanding of each mode.
• Human pilot – Describe the differences between Dual/Synchronous, Initiated Transfer, and
Independent modes. (Mode awareness; knowledge of expected display behavior)
• IA system – Perform a check that automatic mode select corresponds to desired display state.
(Successful initiation of checks; successful completion of checks; knowledge of when to reset
modes).
Demonstration Task 3
Perform a check for problems with sensors.
• Human pilot – Navigate to Maintenance or Status page to confirm sensors are operating nor-
mally. Check FMS status readout against other avionics display information. (Knowledge of
where this information can be found; how to troubleshoot problems)
• IA system – Continuously monitor sensor systems and connectivity to FMS. (Proper and con-
tinuous monitoring of sensors; how to alert crew and troubleshoot problems).
Demonstration Task 4
Perform a check for correct Heading and Position data.
• Human pilot - Toggle between MAG and TRUE settings and visually confirm the displays
change accordingly. Enter origin. Enumerate different methods of Pos Init. (Knowledge of
105
7 V&V ISSUES AND APPROACHES
how to set heading modes and where heading mode information can be found; knowledge of
where, how and when to enter and check position information).
• IA system – Perform a check of MAG and TRUE heading displays. Perform checks for GPS
against origin waypoints and internal navigation systems. (Successful initiation of checks;
successful completion of checks; knowledge of factors which would prompt inflight position
initialization and rechecks).
When designing a simulation to test the competency of an IA system, in addition to the level of train-
ing and “experience” the IA has acquired, the software must simulate a multitude of varying individual
and contextual factors across the same operational test scenario. At a minimum, the simulation should
define and proffer variants of the following variables:
• What is the starting system state? (Fuel levels, system status, weight and balance, aircraft
capabilities)
• What is the operational and physical environment (or perception of the environment)? (Pilot
heath/status, communications, weather, airspace congestion, temporal constraints)
• What are the goals of the pilot/IA?
• Which properties of the system are most salient at this time?
• How many/what other responses or actions are available to the pilot/IA?
• How experienced or well-trained is the pilot/IA on this system?
• What are the pilot’s/IA’s beliefs and expectations of the aircraft systems (beyond rule-based
training and system manual)?
• What level of trust does the pilot/IA have in the system?
• What level of SA does the pilot/IA have of the system’s state?
• What is the SOP/FAA/pilot manual guidance for this situation? How clear and/or stringent are
the rules?
• What are the pilot’s/IA’s beliefs and expectations about the crewmate?
Knowledge checks are excellent simulation methods for addressing individual pilot competency, but
the most crucial aspects of human-IA interaction must also be addressed using crew modeling and
simulation techniques.

## Reference

https://ntrs.nasa.gov/api/citations/20180006312/downloads/20180006312.pdf
