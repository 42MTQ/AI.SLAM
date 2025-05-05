# Pervasive Monitoring

A large component of architectural assurance will be pervasive monitoring. A pervasive monitor is an
independent system which may utilize the same sensors as the IA, but have different interpreters. The
monitor checks the actual behavior of the controlled plant (self-driving car, IA plane etc.) against top-
level (hence “pervasive”) constraints. Section 6.3 provides an overview of the pervasive monitoring
concept and challenges.

The monitor needs to know what the bounds of acceptable behavior are for the current situation.
Obviously, the monitor must be able to determine all of the important features of the current situation
and do it independently of the IA. Once the monitor obtains this required situation information, it
must determine if the current IA behavior is acceptable and intervene if it isn’t. This intervention
would compute “reversionary” commands, restricting behavior and plant performance to a much more
constrained envelope.

Such a monitor would need to be dependable as discussed in section 6.3. Designing a monitor with the
complexity needed to cope with all critical situations and still be simple enough to verify is a daunting
challenge. It would be advisable to start out with baby steps, i.e. build a small pervasive monitor with
an initial set of rules that are achievable in the near term. The rules could be derived from legal or
policy documents (e.g., the California vehicle code or FAA “rules of the air”).
Designing this simple monitor includes how to code these rules into it, which would be a research project in its own right.
Answer-set programming is one approach that looks promising [28].cardiac care example).

## Reference

https://ntrs.nasa.gov/api/citations/20180006312/downloads/20180006312.pdf
