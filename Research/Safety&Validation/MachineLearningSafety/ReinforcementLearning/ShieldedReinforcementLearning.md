# Shielded Reinforcement learniing for hybrid Systems

Safe and optimal controller synthesis for switched-controlled
hybrid systems, which combine differential equations and discrete
changes of the system’s state, is known to be intricately hard. Reinforce-
ment learning has been leveraged to construct near-optimal controllers,
but their behavior is not guaranteed to be safe, even when it is encour-
aged by reward engineering. One way of imposing safety to a learned
controller is to use a shield, which is correct by design. However, obtain-
ing a shield for non-linear and hybrid environments is itself intractable.

## Constructing Shields

the construction of a shield using the so-called
barbaric method, where an approximate finite representation of an under-
lying partition-based two-player safety game is extracted via systemat-
ically picked samples of the true transition function. While hard safety
guarantees are out of reach, we experimentally demonstrate strong sta-
tistical safety guarantees with a prototype implementation and Uppaal
Stratego.

### Pre and Post Shield Approaches

![Pre and Post Shielding Approaches](/Research/Safety&Validation/pic/PreAndPostShielding.png)

### Results

The results we here obtained provide theoretical underpinnings for the learn-
ing approach developed in [9]. Upper and lower bounds computed from induced
IMDPs can be used to check the accuracy of learned value functions. As we have
seen, data sparsity and sampling variance can make the learned cost functions
fall outside computed bounds. One can also use value iteration on IMDP approx-
imations directly as a tool for computing cost functions and strategies, which
then would come with stronger guarantees than what we obtain through learn-
ing. However, compared to the learning approach, this has important limitations:
first, we will usually only obtain a partial strategy that is uniquely defined only
where upper and lower bounds lead to the same actions. Second, we will require a
full model of the underlying EMDP, from which IMDP abstractions then can be
derived, and the optimization problem over adversaries that is part of the value
iteration process must be tractable. Reinforcement learning, on the other hand,
can also be applied to black box systems, and its computational complexity is
essentially independent of the complexities of the underlying dynamic system



### References

Shielded Reinforcement Learning
for Hybrid Systems
Asger Horn Brorholt(B), Peter Gjøl Jensen, Kim Guldstrand Larsen,
Florian Lorber, and Christian Schilling
Department of Computer Science, Aalborg University, Aalborg, Denmark
{asgerhb,pgj,kgl,florber,christianms}@cs.aau.dk
