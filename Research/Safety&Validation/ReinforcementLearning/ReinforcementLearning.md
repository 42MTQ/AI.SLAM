# Reinforcement Learning

Reinforcement learning is about training an agent to interact with its environment in a way that max-
imizes long term performance.

## What and How?

The agent repeatedly receives inputs describing some aspects of its
environment, performs an action, and receives a reward (which may be negative—a form of pun-
ishment). This is performed in the context of some model for the environment, which is often a
Markov Decision Process (MDP)13: that is, a nondeterministic state machine where actions deter-
mine the transitions available from the current state, and each of those transitions has an associated
probability (summing to 1) and a reward. The states correspond to some partitioning of the input
data, and rewards represent performance (e.g., a measure of the “safety” of the resulting state). In
model-based reinforcement learning, the states and transitions are known or assumed a priori (but
not their probabilities and rewards), whereas these are not known in model-free learning.
The agent learns a policy that is a function from states to actions that maximizes long term rewards.
There is a tension while learning between selecting the best known action in the current state, and
exploring others for the purpose of gaining information (it may be that a sequence of low reward
transitions ultimately leads to a high payoff). Typically, the best known action is performed with
probability 1 −  and another is randomly chosen with probability . In some contexts, learning is
performed offline, prior to deployment, while in others it continues post deployment (online learning).
In the latter case, we generally need to be careful that exploration does not lead to unsafe states.

## Variations

There are several variations on reinforcement learning: inverse reinforcement learning observes ex-
pert performance and aims to learn the reward function, while data mining can use reinforcement
learning to reconstruct an agent’s behavior. For example, researchers at NASA AMES use this form of data mining to discover the precursors to over- and underspeed events in logs from event recorders
of commercial airplanes.

### Problems

Reinforcement learning raises most of the standard questions about machine learning: how do we
know if the training set was sufficiently large and representative, and how do we know that the learned
policy has generalized effectively from the training set? However, unlike most applications of super-
vised learning, it is often feasible to guard a reinforcement learned system with a safety monitor that
can block unsafe actions. This could be particularly useful with online learners, although the safety
guard may interfere with the optimization method [57, 135]. An alternative is to evaluate the safety
of actions during offline learning using formal verification or evaluations and to adjust the model or
data appropriately [60].

#### Reward Hacking

Reward hacking is a concern that is specific to reinforcement learning; it arises when high rewards
can be obtained in a way other than the developers intended. For example, a robot vacuum cleaner
that is required to clean until its sensors detect no further dirt might simply turn off its sensors.
Amodei and colleagues claim this is a common problem with complex systems and suggest some
countermeasures

##### References

Shalini Ghosh, Patrick Lincoln, Ashish Tiwari, and Xiaojin Zhu. Trusted machine learning for
probabilistic models. In Reliable Machine Learning in the Wild at ICML, New York, NY, June
2016. The 33rd International Conference on Machine Learning (ICML 2016).

Javier Garcıa and Fernando Fern´andez. A comprehensive survey on safe reinforcement learn-
ing. Journal of Machine Learning Research, 16(1):1437–1480, 2015.

Perry Van Wesel and Alwyn E. Goodloe. Challenges in the verification of reinforcement learn-
ing algorithms. Technical report, NASA, 2017
