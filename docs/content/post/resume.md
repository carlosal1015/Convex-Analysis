---
title: "Práctica dirigida 1"
description: "Una introducción."
author:
  name: "Oromion"
  desc: " "
date: 2020-03-25
draft: false
tags:
  - go
categories:
  - development
markup: "mmark"
katex: true
---

{{% thm definition "Semiespacio" %}}
Sea el conjunto

$$
  \mathcal{H}\coloneqq
  \left\{
  \left(x_{1},\ldots,x_{n}\right)
  \in\mathbb{R}^{n}\colon
  a_{1}x_{1}+
  \cdots+
  a_{n}x_{n}\geq
  b
  \right\}
$$

donde $a=\left(a_{1},\ldots,a_{n}\right)\in\mathbb{R}^{n}$ y
$b\in\mathbb{R}$ son fijos, es llamado semiespacio.
{{% /thm %}}

{{% thm proposition %}}
El semiespacio $\mathcal{H}$ es un conjunto convexo.
{{% /thm %}}

{{% thm proof %}}
Sea
$
  \mathcal{H}\coloneqq
  \left\{
  x\in\mathbb{R}^{n}\colon\langle x,a\rangle\geq b
  \right\}
$
un semiespacio.

Para cualesquiera $x,y\in\mathcal{H}$ se cumple:

$$
  \tag{1}
  \langle x,a\rangle\geq
  b
$$

$$
  \tag{2}
  \langle y,a\rangle\geq
  b
$$

Sumando $\alpha\times\left(1\right)$ y
$\left(1-\alpha\right)\times\left(2\right)$ obtenemos:

$$
  \begin{aligned}
    \lambda\left\langle x,a\right\rangle+
    \left(1-\lambda\right)\langle y,a\rangle                      & \geq
    \lambda b+
    \left(1-\lambda\right)b                                                \\
    \left\langle\lambda x+\left(1-\lambda\right)y, a\right\rangle & \geq b
  \end{aligned}
$$

$\therefore\lambda x+\left(1-\lambda\right)y\in\mathcal{H}$, es
decir, el semiespacio $\mathcal{H}$ es un conjunto convexo.
{{% /thm %}}

{{% thm definition "Hiperplano" %}}
Sea el conjunto

$$
  \mathcal{P}\coloneqq
  \left\{
  \left(x_{1},\ldots,x_{n}\right)
  \in\mathbb{R}^{n}\colon
  a_{1}x_{1}+
  \cdots+
  a_{n}x_{n}=
  b
  \right\}
$$

donde $a=\left(a_{1},\ldots,a_{n}\right)\in\mathbb{R}^{n}$ y
$b\in\mathbb{R}$ son fijos, es llamado hiperplano.
{{% /thm %}}

{{% thm proposition %}}
El hiperplano $\mathcal{P}$ es un conjunto convexo.
{{% /thm %}}

{{% thm proof %}}
Sean $\mathcal{H}_{1}$ y $\mathcal{H}_{2}$ los siguientes conjuntos
convexos

$$
  \begin{aligned}
    \mathcal{H}_{1}\coloneqq
     & \left\{x\in\mathbb{R}^{n}\colon\langle a,x\rangle\geq b\right\}   \\
    \mathcal{H}_{2}\coloneqq
     & \left\{x\in\mathbb{R}^{n}\colon\langle a,x\rangle\leq b\right\}   \\
    \mathcal{H}_{2}\coloneqq
     & \left\{x\in\mathbb{R}^{n}\colon\langle -a,x\rangle\geq -b\right\}
  \end{aligned}
$$

Pero, $\mathcal{P}=\mathcal{H}_{1}\cap\mathcal{H}_{2}$ es la
intersección de dos conjuntos convexos, por lo que se sigue que
$\mathcal{P}$ es un conjunto convexo.
{{% /thm %}}

{{% thm theorem %}}
Sea ${\left\{C_{i}\right\}}_{i\in I}$ una familia de conjuntos
convexos.

Entonces $\bigcap_{i\in I}C_{i}$ es un conjunto convexo.
{{% /thm %}}

{{% thm proof %}}
Sea $x,y\in\bigcap_{i\in I}C_{i}$.

Es decir, para cualesquiera $x,y\in C_{i},\forall i\in I$, donde
los $C_{i}$ son conjuntos convexos, entonces

$$
  \begin{aligned}
    \forall\lambda\in\left[0,1\right],
    \forall i\in I
     & \colon\color{blue}
    \lambda x+\left(1-\lambda\right)y\in C_{i} \\
    \forall\lambda\in\left[0,1\right],
    \forall i\in I
     & \colon\color{blue}
    \lambda x+\left(1-\lambda\right)y\in\bigcap_{i\in I}C_{i}.
  \end{aligned}
$$

Así, $\bigcap_{i\in I}C_{i}$ es un conjunto convexo.
{{% /thm %}}

{{% thm definition "Cápsula convexa" %}}
Sea $S\subset\mathbb{R}^{n}$.

El conjunto

$$
  \operatorname{co}\left(S\right)\coloneqq
  \left\{
  x\in\mathbb{R}^{n}\colon
  x\text{ es una combinación convexa}.
  \right\}
$$

es llamada cápsula convexa de $S$.
{{% /thm %}}

{{% alert note %}}
Si $R$ es un conjunto convexo y $S_{2}\subset\mathbb{R}$, entonces
$\operatorname{co}\left(S_{2}\right)\subset\mathbb{R}$.
{{% /alert %}}

{{% thm theorem %}}
Si $S_{1}\subset S_{2}$, entonces
$
  \operatorname{co}\left(S_{1}\right)\subset
  \operatorname{co}\left(S_{2}\right)
$.
{{% /thm %}}

{{% thm proof %}}
Por hipótesis,
$S_{1}\subset S_{2}\subset\operatorname{co}\left(S_{2}\right)$,
donde $\operatorname{co}\left(S_{2}\right)$ es el "menor" conjunto
convexo que contiene a $S_{2}$.
Sea $x\in\operatorname{co}\left(S_{1}\right)$, entonces si
$p\in\mathbb{N}$

$$
  x=
  \sum_{j=1}^{p}
  \lambda_{j}x_{j},\quad
  \lambda_{j}\in\left[0,1\right],\quad
  \sum_{j=1}^{p}\lambda_{j}=
  1.
$$

{{% /thm %}}

{{% thm definition "Cono" %}}
$K\subset\mathbb{R}^{n}$ es un cono si
$\forall x\in K\colon\lambda x\in K,\lambda\gt0$.
{{% /thm %}}

{{% thm definition "Conjunto acotado" %}}
Sea $A$ un subconjunto de $\mathbb{R}^{n}$.
$A$ es acotado si

$$
  \left\|x\right\|\le M,\quad
  \forall x\in A.
$$

{{% /thm %}}

{{% thm proposition %}}

{{% /thm %}}
El cono trivial $K=\left\{0\right\}$ es acotado.
{{% thm proof %}}

Sea $K$ un cono y como $K\neq\left\{0\right\},\exists x_{0}\in K$ tal
que $\left\|x_{0}\right\|\neq0$.

Sea $\lambda=\frac{2M}{\left\|x_{0}\right\|}$.
Como $x_{0}\in K$, entonces $\lambda x_{0}\in K$, luego

$$
  \left\|\lambda x_{0}\right\|=
  \left|\lambda\right|
  \left\|x_{0}\right\|=
  \frac{2M}{\cancel{\left\|x_{0}\right\|}}
  \cancel{\left\|x_{0}\right\|}=
  2M\le M.\quad
  \left(\Rightarrow\Leftarrow\right)
$$

{{% /thm %}}

{{% thm theorem "Cono convexo" %}}
Sea $K$ un cono, entonces

$$
  K\text{ es convexo}\iff
  K+
  K\subset K.
$$

{{% /thm %}}

{{% thm proof %}}
$\left(\Leftarrow\right)$ Sea $x,y\in K$.
Afirmo que

$$
  \forall\lambda\in\left[0,1\right]\colon
  \lambda x+\left(1-\lambda\right)y\in K.
$$

En efecto, si

$$
  \begin{aligned}
    \lambda & =
    0\colon 0\cdot\lambda+
    \left(1-0\right)\cdot y=
    y\in K.       \\
    \lambda & =
    1\colon 1\cdot x+
    \left(1-1\right)\cdot x=
    x\in K.       \\
    \lambda & \gt
    0\colon
    \underbrace{\lambda x}_{\in K}+
    \underbrace{\left(1-\lambda\right)y}_{\in K}\in K.
  \end{aligned}
$$

Por lo tanto, $K$ es un conjunto convexo.
<br>
$\left(\Rightarrow\right)$ Sea $K$ un conjunto convexo con
$z=x+y\in K+K,\forall x,y\in K$.
Además, $z$ se puede escribir como

$$
  z=
  C
  \left(
  \lambda_{1}x+
  \lambda_{2}y
  \right)
$$

donde $C=2>0$, ${\lambda}_{i=1,2}=\frac{1}{2}\geq0$,
$\sum_{i=1}^{2}\lambda_{i}=1$.
Así, $z\in K$.
{{% /thm %}}
