# Open Reserach Paths

## Contributions and Full Papers

Article 1. Asger Horn Brorholt, Peter Gjøl Jensen, Kim Guldstrand Larsen,
Florian Lorber, and Christian Schilling: Shielded Reinforcement Learn-
ing for Hybrid Systems [1].

Summary: This paper proposes the construction of a shield for hybrid systems
using the so-called barbaric method, where an approximate finite represen-
tation of an underlying partition-based two-player safety game is extracted
via systematically picked samples of the true transition function. While
hard safety guarantees are out of reach, the paper experimentally demon-
strates strong statistical safety guarantees with a prototype implementation
in Uppaal Stratego.

Article 2. Saddek Bensalem, Chih-Hong Cheng, Wei Huang, Xiaowei Huang,
Changshun Wu, and Xingyu Zhao: What, Indeed, is an Achievable Prov-
able Guarantee for Learning-Enabled Safety-Critical Systems [9].

Summary: First, this paper discusses the engineering and research challenges
associated with the design and verification of machine-learning systems. Then,
based on the observation that existing works cannot actually achieve prov-
able guarantees, the paper promotes a two-step verification method for the
ultimate achievement of provable statistical guarantees.

Article 3. Hamzah Al-Qadasi, Ylies Falcone, and Saddek Bensalem: DeepAb-
straction++: Enhancing Test Prioritization Performance via Com-
bined Parameterized Boxes [3].

Summary: The DeepAbstraction algorithm employs a box-abstraction con-
cept, the efficiency of which depends on the tau parameter, the clustering
parameter, that influences the size of these boxes. The selection of the tau
value is extremely crucial, given its decisive effect on box size and, subse-
quently, the stability and efficacy of the framework. Addressing this challenge,
the paper proposes a methodology called combined parameterized boxes. This
approach leverages the collective verdicts of monitors with various tau values
to evaluate network predictions. Furthermore, the paper proposes multiple
strategies for integrating the weighted verdicts of monitors into a conclusive
verdict, such as mean, max, product, and mode.

Article 4. Julius Adelt, Sebastian Bruch, Paula Herber, Mathis Niehage, and
Anne Remke: Shielded Learning for Resilience and Performance
based on Statistical Model Checking in Simulink [4].

Summary: This paper presents an approach to construct provably safe and
resilient systems that still achieve certain performance levels with a statis-
tical guarantee in the industrially widely used modeling language Simulink.
The key ideas of the proposed approach are threefold: First, failures and
repairs are modelled in Simulink. Second, hybrid contracts are used to non-
deterministically overapproximate the failure and repair model and to deduc-
tively verify safety properties in the presence of worst-case behavior. Third,
28 N. Jansen et al.
the approach learns optimal decisions using statistical model checking (SMC-
based learning), which uses the results from deductive verification as a shield
to ensure that only safe actions are chosen.

Article 5. Katrine Bjørner, Samuel Judson, Filip Cano, Drew Goldman,
Nick Shoemaker, Ruzica Piskac, and Bettina K¨onighofer : Formal XAI via
Syntax-Guided Synthesis [5].

Summary: This paper proposes a novel application of syntax-guided synthe-
sis to find symbolic representations of a model’s decision-making process,
designed for easy comprehension and validation by humans. The approach
takes input-output samples from complex machine learning models and auto-
matically derives interpretable mimic programs. A mimic program precisely
imitates the behavior of an opaque model over the provided data. The paper
discusses various types of grammars that are well-suited for computing mimic
programs for tabular and image input data.

Article 6. Martin Tappler, Bernhard K. Aichernig: Differential Safety Test-
ing of Deep RL Agents Enabled by Automata Learning [6].

Summary: A hurdle to the adoption of automata-learning-based verification
is that it is often difficult to provide guarantees on the accuracy of learned
automata. This paper shows that accuracy guarantees on learned models are
not strictly necessary. Through a combination of automata learning, testing,
and statistics, the proposed approach performs testing-based verification with
statistical guarantees in the absence of guarantees on the learned automata.

Article 7. Natan Levy, Raz Yerushalmi, and Guy Katz : gRoMA: a Tool for
Measuring the Global Robustness of Deep Neural Networks [8].

Summary: This paper presents gRoMA (global Robustness Measurement and
Assessment), an innovative and scalable tool that implements a probabilistic
approach to measure the global categorial robustness of a DNN. Specifically,
gRoMA measures the probability of encountering adversarial inputs for a
specific output category. The tool operates on pre-trained, black-box classifi-
cation DNNs, and generates input samples belonging to an output category
of interest. It measures the DNN’s susceptibility to adversarial inputs around
these inputs, and aggregates the results to infer the overall global categorical
robustness up to some bounded statistical error.

Article 8. Maxime Parmentier, Axel Legay, Firmin Chenoy: Optimized
Smart Sampling [7].

Summary: This work revisits the principle of Smart Sampling which makes
it possible to apply Statistical Model Checking on stochastic and non-
deterministic systems. The paper points out difficulties in the design of the
initial algorithm and proposes effective solutions to solve them. The presented
contributions are implemented in the Plasma tool.

Article 9. Clemens Dubslaff, Jonas Schulz, Patrick Wienh¨oft, Christel Baier,
Frank H. P. Fitzek, Stefan J. Kiebel, and Johannes Lehmann: Towards a
Formal Account on Negative Latency [2].

Summary: Low latency communication is a major challenge when humans
have to be integrated into cyber physical systems with mixed realities. Neg-
ative latency is a technique to use anticipatory computing and performing
Welcome Remarks from AISoLA 2023/Track C2 Chairs 29
communication ahead of time. For this, behaviors of communication part-
ners are predicted and used to precompute actions and reactions. In this
paper, negative latency is approached as anticipatory networking with for-
mal guarantees. The paper first establishes a formal framework for modeling
predictions on goal-directed behaviors in Markov decision processes. Then,
it presents and characterize methods to synthesize predictions with formal
quality criteria that can be turned into negative latency.
Talks

Keynote 1. Roderick Bloem: Shielding in a Simplex Setting.

Summary: This talk presents a twist on the shielding approach, adapting it to
the simplex architecture for cyberphysical systems. In a simplex architecture
we have a base controller that is assumed to be correct, an advanced controller
that may be machine learned and a switching logic that switches to the base
controller whenever the advanced controller acts in an unexpected way. The
presented approach achieves guaranteed correctness by defining the switching
logic for given base and advanced controllers.

Keynote 2. Joost-Pieter Katoen: Safe Probabilistic Programming by
Inductive Synthesis.

Summary: Probabilistic programs steer AI robots, encode randomised algo-
rithms and are used to improve the training of neural networks. In this talk
we discuss a learning technique synthesising a class of loop invariants on
probabilistic programs enabling proving that a program is “safe” in a fully
automated manner. We will explain the underlying technology and presents
some promising results using a prototypical implementation. In particular, it
outperforms state-of-the-art probabilistic model checkers such as Storm on
some examples, is competitive to the expected runtime analyser AbSynth,
and outperforms data-driven ML techniques for obtaining lower bounds with
several orders of magnitude.

Talk 1. Jan Corazza, Ivan Gavran, Daniel Neider : Reinforcement Learning
with Stochastic Reward Machines.

Summary: This talk discusses recent work that is aimed at addressing the
issues of reward machine inference under the presence of noisy rewards. The
notion of stochastic reward machines will be introduced, together with a
novel algorithm for learning them, and discuss several motivating examples.
Stochastic reward machines (SRMs) generalize the notion of reward machines
and provide a suitable target for inference algorithms in noisy settings. The
SRM inference algorithm is an extension of the aforementioned constraint-
based formulation, and further enhances explainability by recovering infor-
mation about reward distributions together with the finite-state structure.

Talk 2. Marnix Suilen: Extending the Scope of Reliable Offline Rein-
forcement Learning

Summary: Safe policy improvement (SPI) is an offline reinforcement learn-
ing (RL) problem. Specifically, given only a finite data set and the behavior
30 N. Jansen et al.
policy that collected data, the SPI problem is to find a new policy that out-
performs the behavior policy with a formal guarantee. We extend the scope
of SPI in two fundamental ways: 1) We present the first approach to SPI in
partially observable environments (POMDPs), and 2) We significantly reduce
the amount of data needed to derive said formal guarantee.

Talk 3. Jan Kˇret´ınsk´y: Some Recent Perspectives on Ensuring Neural
Networks Safety.

Summary: This talk advocates several underdeveloped research directions for
safety verification of neural networks. The talk focuses at several classical
tools of software verification, which have proven crucial for its practical suc-
cess, yet remain largely unexplored in the context of neural networks. In
particular, we firstly discuss the role of abstraction as a separate instrument.
Secondly, we discuss runtime verification and monitoring as a more practical
compromise for ensuring safety. In the talk, we sketch some of the issues and
difficulties as well as suggestions and arguments for examining the directions
in more detail.

Talk 4. Timo P. Gros, Nicola J. M¨uller, and Verena Wolf : Regret and
Restore - Enhancing Safety-critical Deep Reinforcement Learning
Through Evaluation Stages.

Summary: Reward structures of safety-critical applications are not well suited
for standard deep reinforcement learning (DRL) training because they are
typically very sparse and undiscounted. Current exploration strategies do not
take information about the current safety performance into account. This
talk discusses the algorithm regret and state restoration in evaluation-based
DRL (RARE), an algorithm that introduces two innovations: (i) it combines
deep statistical model checking evaluation stages with state restorations, i.e.,
restarting episodes in formerly visited states, and (ii) it exploits estimations of
the regret, i.e., the gap between the policies’ current and optimal performance.

Talk 5. Timo P. Gros, Nicola J. M¨uller, and Verena Wolf : About the Prob-
lems When Training Reinforcement Learning Agents for Verifica-
tion Tasks.

Summary: Training RL agents for benchmarks commonly used in the Ver-
ification community comes with specific challenges that must be solved in
order to use RL to reliably resolve nondeterminism. In this talk, we ana-
lyze the effects of the following three stated challenges: terminal-only reward,
undiscounted Objectives, and large action spaces. We discuss how these issues
are commonly handled and further present several attempts to tackle these
challenges.

Talk 6.Christian Schilling: Safety Verification of Decision-Tree Policies
in Continuous Time.

Summary: Decision trees have gained popularity as interpretable surrogate
models for learning-based control policies. However, providing safety guar-
antees for systems controlled by decision trees is an open challenge. This
talk discusses the first dedicated algorithm to verify decision-tree controlled
systems in continuous time. The key aspect of our method is exploiting the
Welcome Remarks from AISoLA 2023/Track C2 Chairs 31
decision-tree structure to propagate a set-based approximation through the
decision nodes.

Talk 7. Maria Thurow, Ina Dormuth, Christina Sauer, Anne-Laure Boulesteix,
Marc Ditzhaus, Markus Pauly: How to Simulate Realistic Survival
Data? A Simulation Study to Compare Realistic Simulation Mod-
els.

Summary: There are several possibilities to simulate realistic data from
benchmark data sets. Using the example of comparing two-sample proce-
dures for lung cancer studies, the talk discusses a way to simulate realistic
survival data in two steps: In a first step, we provide reconstructed bench-
mark data sets from recent studies on lung cancer patients. In a second step,
we build upon the reconstructed benchmark data sets to propose different
realistic simulation models for model comparison. The results demonstrate
that it is possible to simulate realistic survival data when benchmark data
sets from real-world studies are available