---
layout: post
title: "SageCell Interactive Example"
date: 2024-02-10
categories: sagemath
tags: sagecell linear-algebra
features:
  - sagecell
---

## Interactive SageCell Example

Below is a live SageCell that computes eigenvalues of a matrix. You can modify and run the code:

<div class="sage">
M = matrix([[1,2],[3,4]])
M.eigenvalues()
</div>

## Try It Yourself

The SageCell below allows you to enter any matrix and compute its eigenvalues:

<div class="sage">
# Enter your matrix here
A = matrix([[0,1],[-1,0]])  # Rotation matrix
show("Matrix A:", A)
show("Eigenvalues:", A.eigenvalues())
</div>

## sage in markdown code block

```sage
@interact
def f(n=(0,10)):
    print(2^n)
```