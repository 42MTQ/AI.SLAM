# Requirements Training Environment

In order to evaluate an intelligent process control algorithm, a
training environment for autonomous systems needs to fulfill various
requirements. These requirements serve as a basis to compare our pro-
posed ASTE framework with existing simulation environments and use
cases and to determine the need for research and further development

## Functional Requirements

### RQ1

Consider faults and disturbances. A training environment for
autonomous systems shall consider faults and disturbances of actua-
tors, sensors, and processes in the plant. This shall be quantified by
probabilities and effects on actuators, sensors, and processes.

### RQ2

Represent operator knowledge. A training environment for au-
tonomous systems shall represent discrete operator interactions and
thus mimic an operator’s mental model in given, known situations. This
model shall be able to depict discrete states and transitions as well as
different operator types in handling failure situations. An initial model
can be automatically updated over time, the more users interact with
the training environment.

### RQ3

Create randomized events. A training environment for autonomous
systems shall create randomized events such as faults or operator
interactions, which serve as an input for the simulation model of the
process. Either happening at random times or taking random times to
transition to another state. This shall represent unpredictable behavior
of such systems and be able to generate varying data sets. This can be
extended by generating new types of faults by a combination of other
faults.

### RQ4

Provide autonomy levels. A training environment for autonomous
systems shall provide different autonomy levels, horizontally and ver-
tically in the automation pyramid. Parts of the training environment
can be switched from automatic to manual mode. This shall be accom-
panied by a modularized structure of the training environment, where
either parts can be included or excluded as well as several simulation
models connected (with different settings to autonomy levels).

### RQ5

Quantify KPIs. A training environment for autonomous systems
shall quantify the influence of discrete and continuous control actions
on specific targets (e.g., profit, energy consumption, plant availability).
This shall be used as a reward for external process control algorithms.

### RQ6

Provide interface. A training environment for autonomous sys-
tems shall provide an interface for interaction, where external process
control algorithms from autonomous agents induce control actions and
receive feedback and rewards.

## Non-functional requirements

### RQ7

Easily accessible. A training environment for autonomous sys-
tems shall be easily and openly accessible by researchers conducting
research.

#### RQ8

Easily set up. A training environment for autonomous systems
shall be easily set up and simulations can run in reasonable time.

### RQ9

Interaction-friendly CLI. A training environment for autonomous
systems shall provide an interaction-friendly CLI to manipulate, start,
and stop simulation runs as well as analyze outputs.

### State Of The Art / Existing Implementations

![Existing Implementation Comparison](/Research/Autonomy/pic/ComparingDifferentEnvironmnetsAndUseCases.png)

### Illustrating State Of the Art

![Logical Architecture of the Autonomous Systems](/Research/Autonomy/pic/LogicalArchitectureAutonomousTraining.png)