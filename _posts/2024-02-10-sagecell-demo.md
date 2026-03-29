---
layout: post
title: "SageCell Interactive Example"
date: 2024-02-10
categories: Mathematics
tags: sagecell linear-algebra
features:
  - sagecell
---

## Interactive SageCell Example

Below is a live SageCell that computes eigenvalues of a matrix. You can modify and run the code:

<div class="sagecell">
sage: M = matrix([[1,2],[3,4]])
sage: M.eigenvalues()
</div>

## Try It Yourself

The SageCell below allows you to enter any matrix and compute its eigenvalues:

<div class="sagecell">
sage: # Enter your matrix here
sage: A = matrix([[0,1],[-1,0]])  # Rotation matrix
sage: show("Matrix A:", A)
sage: show("Eigenvalues:", A.eigenvalues())
</div>
