# Compositional Verification

Compositional verification (CV) is a well known technique to formally verifying large systems by
decomposing the verification task into smaller components. However, this technique relies on com-
posable contracts or component-level specifications that can be composed to prove system-level spec-
ification. Assume-guarantee reasoning [78] provide approaches to perform compositional verification
in a principled manner. This has been extensively used in several safety critical application develop-
ment that use formal methods for verification. However, machine learning and AI based systems pose
unique challenges for compositional specification and verification.

## Challenges

Following challenging fields in Compositional Verification

### Behaviorial Specification

While CV heavily relies on having a precise, mathematical description
of the component and system behavior, specifying them for autonomous vehicles is not straight-
forward. The current techniques to used to specify functional properties are not adequate to
capture the behavior of the dynamic, non-linear components with stochastic behavior based on
thousands of parameters. Further, as learning becomes sophisticated, there will be more and
more emergent behaviors that arising as a result of complex interactions among components.
Even further, as the system learns, the behaviors evolve and there will be stochasticity in the be-
havior. Hence, there needs to be effective methods to identify and quantitatively specify desired
and undesired properties of such components and systems in a way that can be incrementally
updated. Work on parameterizing contracts [20] and devising abstractions to specify properties,
though preliminary, are promising directions in this area [120].

#### Verification Engine

Tooling (hardware and software) is an essential part of employing formal
verification. While there are advances in the solver technology such as SAT and SMT, as well
as model checking tools such as PRISM [90] have been shown to verify learning systems,
their scalability and capability to verify the adaptive behavior of AI-based systems is still at its
infancy. Rather than verifying the entire state space of systems, newer, scalable techniques that
analyze by pruning and/or abstracting the state space are much needed.

##### Environment Determination

Precise determination of the system-environment interface is crucial
for verification. However to verify learning based systems one needs to first define all possible
features (variables) in a non-deterministic, stochastic environment, that turns out to be a
combinatorial explosion problem. Also, being able to filter out infeasible scenarios in the en-
vironment while performing verification is important; otherwise, the verification will endlessly
report spurious violations (counter-examples that show the scenario that lead to the violation).
In system involving joint human-machine control, such as reduced crew operations, being able
to specify behaviors of human are a key part of the environment specification. However, the
variability and uncertainty in human behavior makes this task arduous. However, recent work
on automatically deriving the weakest required environment [32,50] from system properties, as
well as work on capturing mental model of humans [54] are directed towards addressing these
challenges.

#### References

Samik Basu and CR Ramakrishnan. Compositional analysis for verification of parameterized
systems. Theoretical Computer Science, 354(2):211–229, 2006.

Sanjit A. Seshia, Dorsa Sadigh, and S. Shankar Sastry. Towards verified artificial intelligence.
arXiv preprint arXiv:1606.08514, 2016.

amieson M Cobleigh, Dimitra Giannakopoulou, and Corina S P˘as˘areanu. Learning assump-
tions for compositional verification. In International Conference on Tools and Algorithms for
the Construction and Analysis of Systems, pages 331–346. Springer, 2003

u Feng, Marta Kwiatkowska, and David Parker. Automated learning of probabilistic assump-
tions for compositional reasoning. In International Conference on Fundamental Approaches
to Software Engineering, pages 2–17. Springer, 2011
