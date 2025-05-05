# ML Safety

What is ML?
Machine learning is a general term that encompasses a broad class of algorithms that learn from data
and adapt to new situations while in operation based on the learning so that machine can perform
the “cognitive” functions like a human.

Three Main Topics for ML Safety:
Unsupervised Training, Supervised Training and reinforcement learning

## Unsupervised learning

applied to
tasks such as clustering and anomaly detection; it is based on discerning structure or patterns within
the training data. Unsupervised learning may not find much application to control tasks in IA aircraft,
but we think it can be useful in adjuncts that perform monitoring and runtime assurance for these
tasks.

### Supervised Learning

each input has a numerical value or discrete label associated with it and
the task is to predict these, given a training set of correctly labeled examples. Supervised learning
is often used for image classification (e.g., to recognize road signs in automated driving). Aircraft
applications might include failure diagnosis and prognosis (e.g., early warning of engine failure by
integrated analysis of multiple sensor inputs).

#### Reinforcment Learning

Reinforcement learning is somewhat similar to adaptive
control: the learning agent perceives the state of its environment (e.g., a plant it is intended to control),
takes actions accordingly, and receives a reward following each action; the task is to learn a strategy
for actions that maximizes rewards over the long term.
