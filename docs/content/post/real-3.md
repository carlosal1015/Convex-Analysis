---
title: "Principio de Buen Orden"
description: "Una introducción."
author:
  name: "Oromion"
  desc: " "
date: 2020-03-22
draft: false
tags:
- go
categories:
- development
markup: "mmark"
katex: true
draft: false
---

La clase anterior se probó que el _Principio de Inducción Matemática_
implica el _Principio de buen orden_.

Si $X\subset\mathbb{N}$ tal que

1. $1\in X$.
2. Si $x\in X$, entonces $S\left(x\right)\in X$, entonces
   $X=\mathbb{N}$.

Si $\emptyset=B\subset\mathbb{Z}_{\geq 1}=\mathbb{N}$, entonces
$\exists\,b_0\in B$ tal que $\forall b\in B: b_0\leq b$.

## Observación

$$
  \forall n\geq6\colon
  2^{n}\geq
  {\left(n+1\right)}^{2}
$$

$$
\begin{aligned}
  n&=1\colon 2\geq 2^{2}&\\
  n&=2\colon 4\geq 3^{2}&\\
  n&=3\colon 8\geq 4^{2}&\\
  n&=4\colon 16\geq 5^{2}&\\
  n&=5\colon 32\geq 6^{2}&\\
  n&=6\colon 64\geq 7^{2}\checkmark&\\
  n&=7\colon 128\geq 8^{2}\checkmark&\\
\end{aligned}
$$

## Principio de inducción "corrido"

Sea $p\left(n\right)$ una función proposicional predicable sobre
$\mathbb{N}$ y sea $n_{0}\in\mathbb{N}$.

Si

1. $p\left(n_{0}\right)$ es verdad.
2. $p\left(k+1\right)$ es verdad, siempre que $p\left(k\right)$ lo
   sea para $k\geq n_{0}$.

Entonces, $p\left(n\right)$ es verdad $\forall n\geq n_{0}$.

## Prueba

Basta aplicar el Principio de Inducción Matemática para

{{% thm definition "Producto cartesiano" %}}
Si ${\left\{A_{\lambda}\right\}}_{\lambda\in\Lambda}$
{{% /thm %}}
