# Autonomous System Development

Autonomous systems emerge from the need to progressively replace human operators by autonomous agents
in a wide variety of application areas. We offer an analysis of the state of the art in developing autonomous
systems, focusing on design and validation and showing that the multi-faceted challenges involved go well
beyond the limits of weak AI.

## Trustworthiness

The design of autonomous agents should not be limited to logical aspects. It must also address risk
analysis, mitigation, and evaluation, focusing on the dangerous situations that can result from the
interaction of the agent with its environment. We point out that existing techniques are not up to
the task, because they assume an exhaustive analysis of the causes of the risk and the deployment
of mitigation mechanisms at the design stage. This does not seem realistic due to the inherent
complexity of the environment of an autonomous system. One trend in the quest to overcome
these difficulties is to break away from the idea of correction at design time, and indeed new ideas
are emerging that rely on runtime assurance techniques replacing static mitigation mechanisms.
The global validation of autonomous systems, regarded as ensembles of autonomous agents
interacting to achieve collective goals, challenges rigorous validation techniques not only due to
complexity issues but also by the lack of adequate modeling frameworks. Moreover, complexity
arises not only from obvious metrics like the number of lines of code or the number of com-
ponents but also from the temporal and spatial dynamism of the agents’ interactions with the
cyber-physical and human environments.

### Solution

We provide a technical characterization of autonomous agents as the composition of charac-
teristic functions, allowing, among other things, a clear distinction between automation and au-
tonomy. This characterization shows that there is a big gap between automated systems and fully
autonomous ones, which cannot be bridged by mere incremental improvement of existing solu-
tions. For example, the inevitable integration into autonomous systems of modules that employ
artificial intelligence makes current non-AI systems engineering techniques and standards vastly
inadequate. Moreover, we argue that the vision of autonomous systems also raises difficult systems
engineering issues that are not directly related to achieving intelligence.
One of the promising avenues to explore further is “hybrid design,” which attempts to use the
best parts of the two approaches, ML based and model based, and to find tradeoffs between trust-
worthiness and performance. A crucial issue is the need for a coherent integration of heteroge-
neous data and model-based components into a rigorous design flow

#### Hybrid Design

One of the promising avenues to explore further is “hybrid design,” which attempts to use the
best parts of the two approaches, ML based and model based, and to find tradeoffs between trust-
worthiness and performance. A crucial issue is the need for a coherent integration of heteroge-
neous data and model-based components into a rigorous design flow

### Reference

Trustworthy Autonomous System Development
JOSEPH SIFAKIS, Verimag Laboratory
DAVID HAREL, Weizmann Institute