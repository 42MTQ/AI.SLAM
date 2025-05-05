# Autonomous Agents

An autonomous system consists of
components of predefined types, agents and objects, sharing a common environment and coordi-
nated so that their collective behavior meets given global objectives. The objects themselves are
usually dynamic physical systems, whose states can change either through the actions of agents
or internally.
An agent is a system (actually, a subsystem) that has the ability to monitor objects in its exter-
nal environment and act based on their states, either alone or in coordination with other agents.
The agent pursues a mission characterized by a set of specific goals that can change dynamically,
depending on the state of its environment.
The environment provides an infrastructure and mechanisms implementing coordination rules
that govern the interaction between the components, i.e., the agents and objects. In particular, these
rules determine the connectivity between agents, as well as the observability and controllability
of objects.

![Architecture of an autonomous agent for an autonomous vehicle](/Research/SystemDesign/pic/ArchitectureAutonomousAgentVehicle.png).

The agent’s operation is cyclically repetitive. The cycle begins with perception, followed by re-
flection that updates the environment model. Then, decision-making takes place, possibly with
the selection of new goals, and following up on the execution of tactics that were not completed
in the previous cycle. These “leftovers” from the previous cycle can occur because the cycle’s du-
ration must be short enough to achieve some short-term goals (for safe driving this might be on
the order of a tenth of a second), while achieving long-term goals may take hundreds of thou-
sands of cycles (e.g., to reach a destination). Obviously, when new goals are selected in a cycle,
they must be compatible with those that have already been selected, but which have not yet been
achieved.
