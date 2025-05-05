# Glimbal

A gimbal is a pivoted support that permits rotation of an object about an axis. A set of three gimbals, one mounted on the other with orthogonal pivot axes, may be used to allow an object mounted on the innermost gimbal to remain independent of the rotation of its support (e.g. vertical in the first animation). For example, on a ship, the gyroscopes, shipboard compasses, stoves, and even drink holders typically use gimbals to keep them upright with respect to the horizon despite the ship's pitching and rolling.

The gimbal suspension used for mounting compasses and the like is sometimes called a Cardan suspension after Italian mathematician and physicist Gerolamo Cardano (1501–1576) who described it in detail. However, Cardano did not invent the gimbal, nor did he claim to. The device has been known since antiquity, first described in the 3rd c. BC by Philo of Byzantium, although some modern authors support the view that it may not have a single identifiable inventor.

## Glimbal Lock

Gimbal lock is the loss of one degree of freedom in a multi-dimensional mechanism at certain alignments of the axes. In a three-dimensional three-gimbal mechanism, gimbal lock occurs when the axes of two of the gimbals are driven into a parallel configuration, "locking" the system into rotation in a degenerate two-dimensional space.

The term can be misleading in the sense that none of the individual gimbals is actually restrained. All three gimbals can still rotate freely about their respective axes of suspension. Nevertheless, because of the parallel orientation of two of the gimbals' axes, there is no gimbal available to accommodate rotation about one axis, leaving the suspended object effectively locked (i.e. unable to rotate) around that axis.

The problem can be generalized to other contexts, where a coordinate system loses definition of one of its variables at certain values of the other variables.

## In three dimensions

Gimbal with 3 axes of rotation. A set of three gimbals mounted together to allow three degrees of freedom: roll, pitch and yaw. When two gimbals rotate around the same axis, the system loses one degree of freedom.
Normal situation: the three gimbals are independent
Gimbal lock: two out of the three gimbals are in the same plane, one degree of freedom is lost

Consider a case of a level-sensing platform on an aircraft flying due north with its three gimbal axes mutually perpendicular (i.e., roll, pitch and yaw angles each zero). If the aircraft pitches up 90 degrees, the aircraft and platform's yaw axis gimbal becomes parallel to the roll axis gimbal, and changes about yaw can no longer be compensated for.
Solutions

This problem may be overcome by use of a fourth gimbal, actively driven by a motor so as to maintain a large angle between roll and yaw gimbal axes. Another solution is to rotate one or more of the gimbals to an arbitrary position when gimbal lock is detected and thus reset the device.

Modern practice is to avoid the use of gimbals entirely. In the context of inertial navigation systems, that can be done by mounting the inertial sensors directly to the body of the vehicle (this is called a strapdown system)[3] and integrating sensed rotation and acceleration digitally using quaternion methods to derive vehicle orientation and velocity. Another way to replace gimbals is to use fluid bearings or a flotation chamber.[4]

## On Apollo 11

A well-known gimbal lock incident happened in the Apollo 11 Moon mission. On this spacecraft, a set of gimbals was used on an inertial measurement unit (IMU). The engineers were aware of the gimbal lock problem but had declined to use a fourth gimbal.[5] Some of the reasoning behind this decision is apparent from the following quote:

    The advantages of the redundant gimbal seem to be outweighed by the equipment simplicity, size advantages, and corresponding implied reliability of the direct three degree of freedom unit.
    — David Hoag, Apollo Lunar Surface Journal

They preferred an alternate solution using an indicator that would be triggered when near to 85 degrees pitch.

    Near that point, in a closed stabilization loop, the torque motors could theoretically be commanded to flip the gimbal 180 degrees instantaneously. Instead, in the LM, the computer flashed a "gimbal lock" warning at 70 degrees and froze the IMU at 85 degrees
    — Paul Fjeld, Apollo Lunar Surface Journal

Rather than try to drive the gimbals faster than they could go, the system simply gave up and froze the platform. From this point, the spacecraft would have to be manually moved away from the gimbal lock position, and the platform would have to be manually realigned using the stars as a reference.[6]

After the Lunar Module had landed, Mike Collins aboard the Command Module joked "How about sending me a fourth gimbal for Christmas?"
Robotics
Industrial robot operating in a foundry.

## In robotics

 gimbal lock is commonly referred to as "wrist flip", due to the use of a "triple-roll wrist" in robotic arms, where three axes of the wrist, controlling yaw, pitch, and roll, all pass through a common point.

An example of a wrist flip, also called a wrist singularity, is when the path through which the robot is traveling causes the first and third axes of the robot's wrist to line up. The second wrist axis then attempts to spin 180° in zero time to maintain the orientation of the end effector. The result of a singularity can be quite dramatic and can have adverse effects on the robot arm, the end effector, and the process.

The importance of avoiding singularities in robotics has led the American National Standard for Industrial Robots and Robot Systems – Safety Requirements to define it as "a condition caused by the collinear alignment of two or more robot axes resulting in unpredictable robot motion and velocities"

## Problem Arrival

The problem of gimbal lock appears when one uses Euler angles in applied mathematics; developers of 3D computer programs, such as 3D modeling, embedded navigation systems, and video games must take care to avoid it.

In formal language, gimbal lock occurs because the map from Euler angles to rotations (topologically, from the 3-torus T3 to the real projective space RP3, which is the same as the space of rotations for three-dimensional rigid bodies, formally named SO(3)) is not a local homeomorphism at every point, and thus at some points the rank (degrees of freedom) must drop below 3, at which point gimbal lock occurs. Euler angles provide a means for giving a numerical description of any rotation in three-dimensional space using three numbers, but not only is this description not unique, but there are some points where not every change in the target space (rotations) can be realized by a change in the source space (Euler angles). This is a topological constraint – there is no covering map from the 3-torus to the 3-dimensional real projective space; the only (non-trivial) covering map is from the 3-sphere, as in the use of quaternions.

To make a comparison, all the translations can be described using three numbers x {\displaystyle x}, y {\displaystyle y}, and z {\displaystyle z}, as the succession of three consecutive linear movements along three perpendicular axes X {\displaystyle X}, Y {\displaystyle Y} and Z {\displaystyle Z} axes. The same holds true for rotations: all the rotations can be described using three numbers α {\displaystyle \alpha }, β {\displaystyle \beta }, and γ {\displaystyle \gamma }, as the succession of three rotational movements around three axes that are perpendicular one to the next. This similarity between linear coordinates and angular coordinates makes Euler angles very intuitive, but unfortunately they suffer from the gimbal lock problem.

## Euclidean Space Reference

https://www.euclideanspace.com/maths/geometry/rotations/conversions/quaternionToEuler/

## Furthermore

🧭 Euler Angles Recap

Euler angles are a way to represent a 3D rotation using three angles, usually referred to as:

    Roll (ϕ) – rotation about the x-axis

    Pitch (θ) – rotation about the y-axis

    Yaw (ψ) – rotation about the z-axis

They are commonly used because they are easy to understand and work well for many practical applications.
🤯 What Are Singularities?

In this context, a singularity is a situation where the mathematical representation becomes ambiguous or breaks down. It's often referred to as gimbal lock in aerospace and robotics.
🎯 What Happens at Pitch = ±90°?

When the pitch (θ) angle approaches +90° or -90°, the system loses one degree of freedom. That’s the singularity.
Here's why:

At pitch = ±90°, two of the rotation axes align, meaning you can’t distinguish between rotations around them anymore.

For example:

    Suppose you do a yaw (ψ) rotation (around the z-axis), followed by a pitch (θ = 90°), and then a roll (ϕ).

    Once θ = 90°, the z-axis and x-axis end up pointing in the same direction due to rotation. So yaw and roll both affect the same axis — you lose the ability to rotate independently in all directions.

This means:

    You can't uniquely determine the orientation from the angles.

    Small changes in the input can cause large changes in the resulting angles.

    Numerical instability and undefined behavior may occur in simulations or calculations.

📉 Consequences

    Rotations become ambiguous near the singularity.

    Algorithms that depend on Euler angles can fail (e.g., inverse kinematics, camera control).

    This is why quaternions or rotation matrices are often used instead — they don’t suffer from this issue.

🛠️ Visualizing It

Imagine you’re holding a camera mounted on a gimbal (a 3-axis rotational rig). As you tilt the camera straight up (pitch = 90°), the yaw and roll controls now spin it around the same axis. The result? Loss of independent control.