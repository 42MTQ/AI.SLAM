# Orthogonal System Design Aspects

The term "orthogonal aspects" in system design refers to independent yet intersecting concerns or dimensions of a system that can be considered separately but must work together during architecture instantiation.

## Simple terms

Think of orthogonal as "non-overlapping but related." Each aspect deals with a different domain of the system but contributes to the overall architecture.

### Common Orthogonal Aspects in System Design

    Functional Aspect

        What the system should do (features, behaviors, services).

        Example: Navigation, data logging, or user interface.

    Non-Functional Aspect

        How well the system performs (performance, safety, security, timing).

        Example: Real-time response, fault tolerance, low power consumption.

    Hardware Aspect

        Physical components (sensors, actuators, processors).

        Constraints like size, cost, power, thermal limits.

    Software Aspect

        Structure and logic (modules, threads, state machines).

        Communication protocols, OS, middleware.

    Platform Aspect

        Target environment (OS, hardware abstraction, cloud vs. edge).

        Example: ROS 2 on Linux vs. FreeRTOS on embedded MCU.

    Development/Deployment Aspect

        Build system, CI/CD, versioning, deployment strategy.

        Toolchains, testing environments.

### Why it matters

Each orthogonal aspect influences how you instantiate your architecture (turning abstract design into a concrete implementation), and ignoring one can cause conflicts or failures later.
