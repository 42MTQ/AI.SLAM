# Map Based Representation of the Environment

Decisions are made based on a semantic model of the environment, which takes
into account the relevant geometric features and the presence of objects or agents therein.
Thus, an agent’s semantic model is an abstraction of the physical environment as perceived
by the sensing devices. It can be represented by a suitable map, enriched with observable state
attributes of objects or agents in the agent’s neighborhood.

## Problems

Nevertheless, relying exclusively on models built from local sensory information is often not
sufficient for effective autonomy. To manage medium and long-term goals and anticipate external
changes, a broader view of the environment is needed. For example, autonomous cars can use
maps stored in a repository enriched with online traffic information, which would be similar to,
but vastly richer than, the maps used in current car navigation systems. These maps are essential
to indicate long-term goals such as the route taken by the vehicle or to anticipate situations beyond
the agent’s visibility. For example, knowing the geometric characteristics of a nearby roundabout
allows for better preparation of the corresponding maneuver.

Consistent with the distinction between the three types of goals, the external environment maps
we need should themselves be designed at three different levels of abstraction.

### High-level Map

are used to represent long-term goals, such as the entire mission goals, and provide a description
of the area where the autonomous agent can operate, e.g., for autonomous vehicles, a map of the
road network where routes can be indicated.

#### Middle Level Map

The middle-level maps describe the environment at a scale that provides the details necessary
to implement the medium-term goals. These involve features of the environment that require a
specific agent control policy. For autonomous vehicle maneuvers, we need maps providing detailed
geometric descriptions of roads with their lanes and of intersections with their entrances and exits
and associated traffic rules.

##### Low Level Map

Finally, the low-level maps should provide a detailed description of the current external environ-
ment with all relevant information for efficient decision-making. This description can be obtained
by merging sensory information and existing detailed maps and must be updated in real time.
The coherent integration of the three modeling levels raises some non-trivial issues related
to the connection between the concrete map representations obtained by the fusion of sensory
information and the available symbolic and semantically rich pre-existing map representations.

For effective situational awareness, the perception function must be able to distinguish not only
simple objects, but also relevant object models, and for this, the use of pre-existing map models
may be required, too. For example, the autopilot of an autonomous vehicle must be able to unam-
biguously identify different types of intersections and their associated signaling equipment.
