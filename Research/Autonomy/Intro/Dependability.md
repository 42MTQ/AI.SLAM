# Dependability

Dependability is defined as the trustworthiness of a computer system such
that reliance can justifiably be placed on the service it delivers. The service
delivered by a system is its behavior as it is perceived by its user(s); a user is
another system (human or physical) which interacts with the former

With this in mind, we define a dependability case to be
a structured argument providing evidence that a system meets its specified
dependability requirements.

The dependability requirements of a system include the dependability attributes of interest in
the particular system (e.g., security, real-time performance), and the anticipated usage (how
and where) of the system. An argument for a system that’s being used in a computer on a
desktop in an office probably won’t suffice if that same system is embedded in a spacecraft in
transit to Mars

## Evidence to the Dependability

The evidence surrounding an argument and the ability to reason from it are key to making a
credible dependability case. Without evidence of a dependability claim’s correctness, there is
no way to substantiate the claim. Unfortunately, evidence comes in many different forms, so
it is impossible to dictate what kind of evidence or argument is appropriate for every
situation.

### Figure 2 Explanation Portion of Dependability Case

The dependability case begins with a claim about the property we are trying to show. The
USCCS algorithms are said to keep the SC clock synchronized to within five microseconds
of Universal Coordinated Time as measured on the Naval Observatory’s atomic clock. So the
initial claim is just that: The computed spacecraft clock time is accurate to the actual time to
within some number, X, microseconds. As shown, claims are represented in GSN as
rectangles.
TODO: Figure Missing

### Dependability Use cases

Hierarichal Tree Based roadmap can rely on anways needed documentation and be used to give a road to success.
Note, also, that most dependability cases will refer to a plethora of documents that support
the case. Thus, the complete corpus of the dependability case and its supporting evidence is
likely to be very large. The only saving grace here is that the documents referred to are
CMU/SEI-2004-TN-016 11
needed anyway when designing, implementing, or maintaining the system. The dependability
case acts as a roadmap so that this documentation is actually useful for those purposes.

### Resource

Dependability Cases
Charles B. Weinstock
John B. Goodenough
John J. Hudak
May 2004
Performance-Critical Systems
