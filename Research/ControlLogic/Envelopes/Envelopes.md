# Envelopes

## Envelope

An Envelope that surrounds an established set of data and then compare new inputs to see
if they are inside or outside the envelope. An example of such an envelope might be one for sensor
data encountered during testing; then, at runtime, we can tell whether or not we are within the tested
space. Of course, the distribution of inputs within the envelope could be sparse, so being inside the
envelope might not guarantee we are “close” to a tested input, but it suggests a promising approach
that can be tuned and improved.

## Improvements through custimization

One way to tighten the envelope is introduce “modes”: we might expect there is a subenvelope of
inputs where the airplane is in level flight that is different from that where it is climbing or descending
and different again from that where it is turning. Figure 21 portrays such a “moded” envelope (solid
line), which may be compared with a conventional one (dotted line) that misclassifies the lone point.
Tiwari and colleagues [134] present an algorithm for learning envelopes with modes that is simple
and effective; note that we do not have “ground truth” for modes: for each input in the training set that
is outside the current envelope, the algorithm must decide whether to extend some existing mode, or
to create a new one. The algorithm is always correct, in that the envelope truly encloses the training
set, but there are no guarantees how tight it is, nor whether the training set was sufficiently large and
representative to cover all intended behaviors, nor whether the discovered modes truly correspond.

to those in the system whose behavior is observed; empirical results are very encouraging, however.
Observe that in computer science terms, an envelope is an invariant, and a moded envelope is a
disjunctive invariant [106].
The motivation for envelope construction was detection of spoofing attacks on sensors [123, 134], a
classical application of anomaly detection. However, we will later suggest its application to runtime
verification for machine learning.

![Envelope with Modes](/Research/ControlLogic/pic/EnvelopeWithModes.png)

### References

Ashish Tiwari, Bruno Dutertre, Dejan Jovanovi´c, Thomas de Candia, Patrick D. Lincoln, John
Rushby, Dorsa Sadigh, and Sanjit Seshia. Safety envelope for security. In Proceedings of the
3rd International Conference on High Confidence Networked Systems (HiCoNS), pages 85–94,
Berlin, Germany, April 2014. ACM.

John Rushby. Verification diagrams revisited: Disjunctive invariants for easy verification. In
International Conference on Computer Aided Verification, pages 508–520. Springer, 2000.
