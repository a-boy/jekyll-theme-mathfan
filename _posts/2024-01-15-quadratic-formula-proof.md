---
layout: post
title: "Quadratic Formula Proof"
date: 2024-01-15
categories: 
  - algebra
tags: algebra equations proof
features:
  - katex
---

## The Quadratic Formula

For a quadratic equation $ax^2 + bx + c = 0$ where $a \neq 0$, the solutions are given by:

$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$

## Proof

Starting from $ax^2 + bx + c = 0$:

1. Divide by $a$:
$$x^2 + \frac{b}{a}x + \frac{c}{a} = 0$$

2. Complete the square:
$$x^2 + \frac{b}{a}x + \frac{b^2}{4a^2} = \frac{b^2}{4a^2} - \frac{c}{a}$$

3. Factor:
$$\left(x + \frac{b}{2a}\right)^2 = \frac{b^2 - 4ac}{4a^2}$$

4. Take square root:
$$x + \frac{b}{2a} = \pm\frac{\sqrt{b^2 - 4ac}}{2a}$$

5. Solve for $x$:
$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

$\blacksquare$
