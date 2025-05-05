# Testing Complex Applications

Challenges encountered for complex application testing. Unsolved area of testing autonomous behaviour and applications.

## Why is it hard?

Traditional scenario based
testing methods fall short of providing the desired confidence level, mainly due to the combinatorial
explosion of possible situations to be tested in autonomous systems. The non-determinism and com-
plexity of the input space and the context in which the autonomous system will operate makes it hard
to even determine the adequacy of test cases. Further, the complexity of the program logic, which
is caused by characteristics that are inherent in autonomous systems such as assembling their own
course of actions for a given goal, adapting to different environments, learning, diagnosing them-
selves and reconfiguring themselves to maintain their functionality makes it methodologically and
conceptually challenging to assess the coverage of testing on such systems. In fact, a major concern
on testing autonomous systems is that the methods are built on the assumption that if a system passes
all tests then it will work flawlessly during operation. However, since the behavior of autonomous
systems can change over time, it casts doubt on reliability of test results.

### Current Research State

Following Current Research States of solutions proposed to deal with challenges discussed above.

#### Stakeholde Requirements transformed into quality functions

The approach is to transform the stakeholder requirements into quality functions that are in-turn used as evolutionary optimization criteria to generate
demanding test cases. This enables to test the agent in a range of contexts, including those in which
it is most vulnerable to poor performance.

Reference: Cu D. Nguyen, Simon Miles, Anna Perini, Paolo Tonella, Mark Harman, and Michael Luck.
Evolutionary testing of autonomous software agents. Autonomous Agents and Multi-Agent
Systems, 25(2):260–283, 2012.

##### Adaptive Testing

Subjecting the autonomous
control system to an adaptively chosen set of fault scenarios within a high-fidelity vehicle simulator,
and automating the search for combinations of faults over time that drive the autonomous control (and
consequently the autonomous vehicle or system) to unsafe or failed behavior. Since this method is
simulation based, safety and trust in the autonomous system may be gained by allowing the system
to be stressed prior to live environmental testing; Because it is simulation based, many iterations of
missions may be tested for failure conditions and mission effectiveness in less time.

Reference:
Alan C. Schultz, John J. Grefenstette, and Kenneth A. De Jong. Test and evaluation by genetic
algorithms. IEEE expert, 8(5):9–14, 1993

###### Simulated Environment and Synthetic Sensor Data

Further, Berger et.al [24] demonstrate a complete virtual test environment that could supply the con-
trol software with virtual raw sensor inputs to enable automatic testing in the virtual test environment
before they are conducted in the real world. While similar approaches have also proposed by [66],
the scope of virtual testing is limited given the randomness in the environment and system behavior.
Hence, virtual test environments need to represent the intended operating environment in a more sys-
tematic fashion. In sum, testing autonomous systems is an area of research that needs lots of work
before it can mature.

Reference:
Christian Berger and Bernhard Rumpe. Engineering autonomous driving software. arXiv
preprint arXiv:1409.6579, 2014.

TODO:Cleanup
