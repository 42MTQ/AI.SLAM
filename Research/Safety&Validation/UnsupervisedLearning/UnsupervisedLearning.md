# Unsupervised Learning

Unsupervised learning is used to look for patterns or groupings in data. The learning algorithm is
typically specialized to the kind of pattern that is expected. Applications of unsupervised learning
include clustering and anomaly detection, as portrayed, rather impressionistically.
As can be seen in the next figure.

![Unsupervised Learning Example Clustering](/Research/Safety&Validation/pic/UnsupervisedLearningForClusteringandAnomalyDetection.png)

## Explanation

A correctness specification for unsupervised learning could comprise a “ground truth” assignment
for each input, i.e., the cluster or group it should belong to—although this is somewhat contrary to
the purpose of unsupervised learning, which is to discover such groupings. Consequently, “ground
truth” assignments are seldom available for real applications, so we may need to infer performance
of the chosen learning algorithm from controlled experiments on data for similar applications. There
are, however, some weak measures that do not require ground truth, such as the silhouette coefficient,
which indicates the “coherence” of each cluster.
There is an interesting application for unsupervised learning where we do have a “ground truth”
(although we will weaken this later) and this is a form of anomaly detection where we wish to compare
an input encountered at runtime against a training set that consists entirely of “normal” inputs. The
intent is to determine whether new inputs are normal or anomalous.
