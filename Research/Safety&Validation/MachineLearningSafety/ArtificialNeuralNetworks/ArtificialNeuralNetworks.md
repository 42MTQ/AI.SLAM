# Artificial Neural Networks

Artificial Neural Nets” (ANNs) are widely employed in machine learning, and so their properties and
V&V issues are worthy of separate study.

## is a runtime methodology

It is worth noting that most of the assurance and V&V methods suggested here are runtime methods.
This is a natural consequence of the general absence of design-time documentation for learning-based
systems. However, the runtime methods we suggest for individual functions focus on aspects of their
execution behavior (e.g., erratic classifications), and this is different to the safety-based pervasive
monitoring that we advocate for overall system assurance.

## What ?

A generic ANN is portrayed in Figure 22. In general, the
net consists of input and output layers, and some number of intermediate (aka. hidden) layers. Until
recently there were few (typically 1) intermediate layers, but modern, so-called “deep”, ANNs may
have hundreds. Each layer consist of many individual “Artificial Neurons” (ANs), each receiving
inputs from (all) the neurons in the previous layer and feeding its (single) output value to (all) the
neurons of the succeeding layer.
All inputs and outputs are real-valued numbers; each AN has a real-valued weight associated with
each of its inputs (there are variants where inputs also have biases) and computes its output as the
application of some activation function to the weighted sum of its inputs. The values of the weights
are determined by some learning procedure applied to a set of training data; If an AN has n inputs
i1, . . . in with weights w1, . . . wn, then its output is f (Σn
j=1wj × ij), where f is the activation function.
The purpose of the activation function is to enable switching behavior, so it is usually some strongly
nonlinear function such as arctangent, or (more usually) the Rectified Linear Unit (ReLU), which
simply replaces all negative values by 0.

The relation between inputs and outputs of a full ANN is the composition of many AN calculations of
the kind described. If we have a specification of properties required of this relation, then its verifica-
tion is a problem in linear real arithmetic and can, in principle be solved by a modern SMT solver. A
difficulty in practice is that each ReLU function invokes a case split and there are exponentially many
of them, leading to infeasible solution times. However, there are now several optimized methods for
dealing with this class of problems, so that verification of properties of large ANNs is quite practical.

## Problems

The existence of adversarial examples raises a more general concern: it indicates that the ANN might
be responding to completely different input features than do humans, and that rather than constructing
human-like generalizations from the training data, it has merely memorized exactly what it has seen
(or inscrutable aspects of this, such as the colors of certain pixels) [142]. There is much current work
that seeks to understand and characterize how generalization and learning are actually accomplished
in deep ANNs [82, 124], but there is no consensus as yet.

It is not uncommon for the evaluation to indicate extremely high accuracy, but we have to ask whether
this really does provides adequate assurance. One immediate concern is whether the training and
evaluation data are really representative of the examples encountered in real life. One promising idea
is separately to learn a compact representation of the inputs to the training set. This is “envelope
construction”, which was discussed as an application of unsupervised learning (recall Section 7.1.1).
An envelope would allow runtime determination whether the current inputs are “inside” or “outside”
the space of examples encountered in training. There is necessarily some error with edge cases and
this can be tuned to err on whichever side is preferred. As noted earlier, use of “modes” can tighten
the envelope.
![Artifical Nerual Networks](/Research/Safety&Validation/pic/ArtificialNeuralNetworks.png).

### Approach

One approach is a form of anomaly detection, which uses a separate unsupervised learning procedure
to detect inputs that might be adversarial [96]—it is not known whether this might work also for
“natural but difficult” examples but it seems plausible. The intuition behind this and related emerging
methods is that one expects a reasonably smooth “geometry” in the input space and these methods
try to construct or detect such smooth “manifolds” [103]. Observe there is some similarity to the
“inside-outside” detector based on envelopes mentioned earlier. A variant is to use SMT solving to
guarantee that no adversarial examples exist within some small distance of training examples or other
selected regions [71]

### References

Chih-Hong Cheng, Georg N¨uhrenberg, and Harald Ruess. Maximum resilience of artificial
neural networks. arXiv preprint arxiv:1705.01040, April 2017

ouradeep Dutta, Susmit Jha, Sriram Sankaranarayanan, and Ashish Tiwari. Output range
analysis for deep feedforward neural networks. In NASA Formal Methods Symposium, pages
121–138. Springer, 2018.

Guy Katz, Clark Barrett, David Dill, Kyle Julian, and Mykel Kochenderfer. Reluplex: An
efficient SMT solver for verifying deep neural networks. arXiv preprint arXiv:1702.01135,
2017.
