# Cholesky Decomposition

## Based on Marco Taboga, PhD

## Definition

A square matrix $A \in \mathbb{C}^{K \times K}$ (or $\mathbb{R}^{K \times K}$) is said to have a **Cholesky decomposition** if there exists a **lower triangular matrix** $L$ with **strictly positive real entries on the main diagonal** such that:

$$
A = LL^*
$$

where $L^*$ denotes the **conjugate transpose** of $L$.  
If $L$ is a real matrix (i.e., has no complex parts), then the conjugate transpose is just the regular transpose:

$$
A = LL^\top
$$

---

## Existence

A matrix $A$ is **positive definite** if:

- For **complex matrices**: $x^* A x \in \mathbb{R}$ and $x^* A x > 0$ for all $x \ne 0$
- For **real matrices**: $A$ is **symmetric** and $x^\top A x > 0$ for all real $x \ne 0$

> **Proposition:** A matrix has a Cholesky decomposition **if and only if** it is **positive definite**.

---

## Uniqueness

> **Proposition:** If $A$ is a $K \times K$ **positive definite matrix**, then there exists a **unique** lower triangular matrix $L$ with strictly positive diagonal entries such that:

$$
A = LL^*
$$

---

## How to Compute the Cholesky Decomposition

To compute $L$, solve:

$$
A = LL^*
$$

We solve one **column at a time** (starting from $v = 1$ to $K$), and within each column:

1. Compute the **diagonal entry** $L_{vv}$
2. Then compute the **entries below** the diagonal: $L_{tv}$ for $t > v$

Since $L$ is lower triangular, $L_{vu} = 0$ when $u > v$.

The formulas are:

- **Diagonal entries:**

$$
L_{vv} = \sqrt{A_{vv} - \sum_{k=1}^{v-1} L_{vk}^2}
$$

- **Off-diagonal entries** (for $t > v$):

$$
L_{tv} = \frac{1}{L_{vv}} \left( A_{tv} - \sum_{k=1}^{v-1} L_{tk} L_{vk} \right)
$$

If the value under the square root is not strictly positive, the algorithm stops and $A$ is **not positive definite**.

---

## Example

Suppose we are given:

$$
A = \begin{bmatrix}
4 & 12 & -16 \\
12 & 37 & -43 \\
-16 & -43 & 98
\end{bmatrix}
$$

We want to find $L$ such that $A = LL^\top$.

We compute the entries step-by-step:

- $L_{11} = \sqrt{4} = 2$
- $L_{21} = \frac{12}{2} = 6$
- $L_{31} = \frac{-16}{2} = -8$
- $L_{22} = \sqrt{37 - 6^2} = \sqrt{1} = 1$
- $L_{32} = \frac{-43 - (-8)(6)}{1} = \frac{5}{1} = 5$
- $L_{33} = \sqrt{98 - (-8)^2 - 5^2} = \sqrt{9} = 3$

So the final $L$ is:

$$
L = \begin{bmatrix}
2 & 0 & 0 \\
6 & 1 & 0 \\
-8 & 5 & 3
\end{bmatrix}
$$

And:

$$
A = LL^\top
$$
