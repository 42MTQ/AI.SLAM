# Supervised learning

## What ?

Supervised learning differs from unsupervised in that every input in the training set has a numerical
value (“regression learning”) or a discrete label (“classification learning”) associated with it. The task
is to learn and generalize from a correctly labeled training set in order to predict the values or labels
of inputs presented at runtime.

### How ?

Supervised learning methods first select a feature set (i.e., some attributes derived from the raw in-
puts)11 and a set of candidate functions (e.g., those that can be represented by a 10 layer neural net) to
encode the learned behavior,12 and then iteratively optimize the function (e.g., by adjusting weights in
the neural net) as training inputs are consumed. Topics of concern include the size and representative-
ness of the training set, the choice of feature set and class of candidate functions, and the optimization
strategy. For example, if we wish to recognize pictures of cats, we might first preprocess the images
(e.g., using edge detection) in a way that highlights features such as pointed ears and whiskers. One
of the advantages claimed for deep neural nets (i.e., those with hundreds of layers) is that they are less
dependent on (human guided) feature selection as they do it themselves; this is controversial and there
is much current debate on understanding and explaining deep neural nets (see later for references).

### Pitfalls

The optimization strategy must steer a course between overfitting (i.e., adapting so closely to the train-
ing set that it fails to generalize and therefore performs poorly on new examples) and underfitting,
which leads to poor performance for the opposite reasons. One criticism of machine learning meth-
ods for safety critical systems is that optimization procedures generally consider just the “distance”
between predicted and actual values, where some measure of the (safety) cost of misclassification
might be more suitable [48, 136].
The size and representativeness of the training set is a concern for all forms of machine learning.
Superficially similar training sets can lead to widely different performance (e.g., 58% vs 92% accuracy
[38]) and there are no strong guarantees on when a training set is “big enough”. Commercial airplanes
are certified for, and achieve, extraordinary levels of safety, which means that very rare “1 in a billion”
circumstances must be considered seriously [42] and it is difficult to imagine that feasible training sets
will contain examples of this rarity. Recent accidents involving self-driving cars suggest they were
not trained on, and did not recognize, moderately rare scenarios.

#### References

Jos´e M. Faria. Machine learning safety: An overview. In Proceedings of the 26th Safety-
Critical Systems Symposium, York, UK, February 2018.

Hal Daume III and Daniel Marcu. Domain adaptation for statistical classifiers. Journal of
Artificial Intelligence Research, 26:101–126, 2006

Kevin Driscoll. Real system failures. NASA Dashlink, November 2012. https://c3.nasa.
gov/dashlink/resources/624/

ush R. Varshney and Homa Alemzadeh. On the safety of machine learning: Cyber-physical
systems, decision sciences, and data products. Big Data, 5(3):246–255, 2017.
