# Mathematical Foundations of SLAM

Simultaneous Localization and Mapping (SLAM) is formulated as a probabilistic estimation problem. This document presents key mathematical concepts behind SLAM, including probability, motion models, observation models, and optimization.

## 1. Probability and Bayesian Filtering

SLAM relies on probabilistic estimation to track the robot’s position and build a map. Given measurements $z_{1:t}$ and control inputs $u_{1:t}$, the posterior over the robot state $x_t$ and map $m$ is:

$$
p(x_t, m | z_{1:t}, u_{1:t})
$$

Using Bayes’ theorem:

$$
p(x_t, m | z_{1:t}, u_{1:t}) = \frac{p(z_t | x_t, m) p(x_t, m | z_{1:t-1}, u_{1:t})}{p(z_t | z_{1:t-1}, u_{1:t})}
$$

### 1.1 Motion Model

The state transition model describes how the robot’s pose $x_t$ evolves given control $u_t$:

$$
p(x_t | x_{t-1}, u_t)
$$

A common model is:

$$
x_t = f(x_{t-1}, u_t) + w_t
$$

where $w_t$ is process noise.

### 1.2 Measurement Model

The observation model describes how sensor measurements $z_t$ relate to the state and map:

$$
p(z_t | x_t, m)
$$

A typical sensor model:

$$
z_t = h(x_t, m) + v_t
$$

where $v_t$ is measurement noise.

## 2. SLAM as an Optimization Problem

SLAM can be formulated as a maximum likelihood estimation (MLE) problem:

$$
\hat{x}, \hat{m} = \arg \max_{x, m} p(x, m | z, u)
$$

This is often solved using nonlinear least squares:

$$
\min_{x, m} \sum_i \| z_i - h(x_i, m) \|^2
$$

## 3. Graph-Based SLAM

In graph SLAM, the problem is formulated as a factor graph, where nodes represent poses and landmarks, and edges represent constraints. The optimization problem is:

$$
\min_{\mathbf{x}, \mathbf{l}} \sum_{i} \| f(x_i, u_i) - x_{i+1} \|^2 + \sum_{j} \| h(x_j, l_j) - z_j \|^2
$$

This is solved using techniques like:

- **Gauss-Newton**
- **Levenberg-Marquardt**
- **Pose Graph Optimization (PGO)**

## 4. Kalman Filter vs. Particle Filter

### 4.1 Extended Kalman Filter (EKF-SLAM)

The EKF approximates nonlinear functions via first-order Taylor expansion:

$$
x_t = f(x_{t-1}, u_t) + w_t
$$

The covariance update is:

$$
P_t = F_t P_{t-1} F_t^T + Q_t
$$

### 4.2 Particle Filter (FastSLAM)

FastSLAM maintains a set of particles $\{x_t^i\}$ representing possible states:

$$
p(x_t | z_{1:t}, u_{1:t}) \approx \sum_{i=1}^{N} w_t^i \delta(x_t - x_t^i)
$$

Each particle maintains an individual map estimate.

## 5. Loop Closure and Map Optimization

Loop closure detection is critical for correcting drift. The graph is optimized using:

$$
\min_{x} \sum_{(i,j) \in \mathcal{E}} \| x_j - x_i - z_{ij} \|^2
$$

Techniques used

- **ICP (Iterative Closest Point)**
- **RANSAC for feature matching**

## Conclusion

SLAM is a probabilistic inference problem solved via Bayesian filtering or optimization. It integrates motion models, sensor models, and estimation techniques like Kalman Filters, Particle Filters, and Graph SLAM to construct accurate maps.
