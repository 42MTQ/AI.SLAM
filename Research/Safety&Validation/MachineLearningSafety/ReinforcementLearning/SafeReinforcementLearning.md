# Safe Reinforcement Learning

Although successfully used in various applications, traditional RL is not applicable to problems where
the policies synthesised by the agent must satisfy strict constraints associated with the safety, relia-
bility, performance and other critical aspects of the problem. Given its relevance in industrial appli-
cations, there has been a growing interest in safe learning methods in the recent years.

## What makes it safe ?

Safe RL can be defined as the process of learning policies that maximize the expectation of the return
in problems in which it is important to ensure reasonable system performance and/or respect safety
constraints during the learning and/or deployment processes. An exploration process is considered
safe if no undesirable states are ever visited, which can only be achieved through the incorporation of
external knowledge.

### How does it work?

The most straightforward way of guiding a “safe” exploration is to provide supervision or teacher.
For example, in a Q-learning setting, given a teacher (usually a human) to provide advice, the agent
acts on the teacher’s advice that is provided whenever the teacher considers it to be necessary to
prevent catastrophic situations. Otherwise, the agent chooses randomly between the set of actions
with the highest Q-values. At each time step, the teacher can tune the reward signal before sending it
to the agent. While this is considered the “safest” learning approach, having a human teacher direct
the agent in thousands of learning episodes is nearly impossible. Extensions of existing RL methods
are being explored by various researchers and practitioners to enable Safe Reinforcement Learning.
While a comprehensive survey of safe RL approaches are detailed in Garcia et.al [57], we discuss
some of the most relevant ones here.

#### Shielding the RL

To that end, Alshiekh et.al [6] introduced a shield into the traditional RL setting. The shield is com-
puted upfront from a given set of safety specifications and an abstraction of the agent’s environment
dynamics. The shield restricts the agent as little as possible and forbids actions only if they could
endanger safe system behavior. This approach modifies the loop between the learning agent and its
environment in two alternative ways, depending on the location at which the shield is implemented.
In the first one, the shield is implemented before the learning agent and acts each time the learning
agent is to make a decision and provides a list of safe actions. This list restricts the choices for the
learner. The shield allows the agent to follow any policy as long as it is safe. In the alternative im-
plementation of the shield, it monitors the actions selected by the learning agent and corrects them if
and only if the chosen action is unsafe. In both ways the shield acts like the “teacher” who directs
and corrects the learning as per the safety specifications.
Further, Mason et.al [90] proposed an assured RL approach that restricts the exploration of the RL
agent that are guaranteed to yield solutions compliant with the required constraints. In the approach
the uncertain environment is modeled as a high-level, abstract Markov decision process (AMDP), and
use probabilistic model checking to establish AMDP policies that satisfy a set of constraints defined
in probabilistic temporal logic. These formally verified abstract policies are then used to restrict the
RL agent’s exploration of the solution space so as to avoid constraint violations.
A recent work by Fulton et.al [56], formal verification combined with verified runtime monitoring
was employed to ensure the safety of a learning agent. Verification results are preserved whenever
learning agents limit exploration within the confounds of verified control choices as long as observed
reality comports with the model used for off-line verification. When a model violation is detected,
the agent abandons efficiency and instead attempts to learn a control strategy that guides the agent to
a modeled portion of the state space.
Alternatively, some form of risk measure is used to quantify the safety value of an action. This risk
measure is combined with the action value to form the risk-adjusted utility of the action [84]. For
instance, Gehring et.al [58] define a risk metric based on controllability, where a controllable state
is defined as a state where the effects of an action are easy to predict. Further, Moldovan et.al [97],
introduce a criteria to avoid irreversible actions by entering only states from which the agent can
return to the initial state. Risk direct exploration introduces a safety bias in the exploration process
but does not satisfy hard constraints.

##### Challenges

Despite tremorous work in this area, some challenges still remain. One of the basic questions is how to
avoid the agent making unsafe decisions when given inputs that are potentially very different than the
data previously seen in the training thus far. There is currently lack of techniques to determine training
data adequacy and measure its coverage with respect to the real environment the agent is going to
operate. Broadly speaking, any agent that is not trained on a given situation may misunderstand it
and potentially commit harmful actions. Furthermore, the agent might not even be able to recognize
such actions as harmful. In the reduced crew operational scenario, though one can generally assume
that the human pilot could guide the IA system if it encounters an unexplored scenario in most cases,
100
7.3 Compositional Verification Challenges
when the pilot is incapacitated or emergency situations. As such, a key skill for a safer agent is to
be able to recognise its own ignorance, trying to avoid silent failures. While work such as anomaly
detection [87] can contribute to detection of such scenarios, this is an open research area.

Further, there is a lack of techniques to access correctness and adequacy of the notion of safety in
agents. While techniques to formally guarantees safety properties are being explored, they are still in
their inception phase. They need to be matured for scalability to handle real world scenarios. Further,
the reward hypothesis and Objective functions, being the premise for the optimal performance, should
the they be ill-posed, the policy devised could have hazardous results. There needs to be safety bounds
to prevent such situations.

###### References

Mohammed Alshiekh, Roderick Bloem, Ruediger Ehlers, Bettina K¨onighofer, Scott Niekum,
and Ufuk Topcu. Safe reinforcement learning via shielding. arXiv preprint arXiv:1708.08611,
2017.

George Rupert Mason, Radu Constantin Calinescu, Daniel Kudenko, and Alec Banks. Assured
reinforcement learning with formally verified abstract policies. In 9th International Conference
on Agents and Artificial Intelligence (ICAART). York, 2017

Nathan Fulton and Andr´e Platzer. Safe reinforcement learning via formal methods. AAAI 2018,
2018.

Clement Gehring and Doina Precup. Smart exploration in reinforcement learning using ab-
solute temporal difference errors. In Proceedings of the 2013 international conference on
Autonomous agents and multi-agent systems, pages 1037–1044. International Foundation for
Autonomous Agents and Multiagent Systems, 2013.
