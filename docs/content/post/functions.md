---
title: "Repaso de funciones"
description: "Una introducción."
author:
  name: "Oromion"
  desc: " "
date: 2020-03-19
draft: false
tags:
  - funciones
categories:
  - development
markup: "mmark"
katex: true
---

Sean $X,Y$ dos conjuntos no vacíos y sea $f\colon X\to Y$ una función.
Se dice que

1. $
  f\text{ es inyectiva }\iff
  \left[
  \forall x_{1},x_{2}
  \in X\colon
  x_{1}\neq x_{2}\implies
  f\left(x_{1}\right)\neq
  f\left(x_{2}\right)
  \right]
  $.
2. $
  f\text{ es inyectiva }\iff
  \left[
  \forall x_{1},x_{2}
  \in X\colon
  f\left(x_{1}\right)=
  f\left(x_{2}\right)\implies
  x_{1}=
  x_{2}\right]
  $.
3. $
  f\text{ es suryectiva}\iff
  \left[
    \forall y\in Y,\exists
    x\in X
    \ni y=
    f\left(x\right)
    \right]
  $.
4. $
  f\text{ es biyectiva }\iff
  f\text{ es inyectiva }\wedge
  f\text{ es suryectiva}
  $.

## ¿Existe alguna $f\colon\mathbb{N}\rightarrow\mathscr{P}\left(\mathbb{N}\right)$ suryectiva?

No.

En efecto, suponga que tal función si existe
$f\colon\mathbb{N}\to\mathscr{P}\left(\mathbb{N}\right)$ suryectiva.
Para el conjunto

$$
  A\eqqcolon
  \left\{
  k\in\mathbb{N}\mid
  k\notin
  f\left(k\right)
  \right\}
  \in\mathscr{P}
  \left(\mathbb{N}\right).
$$

Siendo $f$ suryectiva $\exists n\in\mathbb{N}\ni f\left(n\right)=A$.

- Si $n\in A\implies n\notin f\left(n\right)\implies n\notin A\,\Rightarrow\Leftarrow$.
- Si $n\notin A\implies n\notin f\left(n\right)\implies n\in A\,\Rightarrow\Leftarrow$.

{{% thm definition "Conjuntos finitos" %}}
Sea $A$ un conjunto.
El conjunto $A$ es finito si $A=\emptyset\vee$

$$
  \exists
  f\colon A\to
  \left\{1,2,\ldots,n\right\}
$$

biyectiva.
{{% /thm %}}

{{% thm lemma "1" %}}
Sea $A$ un conjunto con $a_{0}\in A$.

$$
  \exists\,f\colon A\to
  \left\{1,2,\ldots,n+1\right\}
  \text{ biyectiva }\iff
  \exists\,g\colon A\setminus\left\{a_{0}\right\}\to
  \left\{1,2,\ldots,n\right\}
  \text{ biyectiva }.
$$

{{% /thm %}}

{{% thm proof %}}
($\Leftarrow$) Obvio.
Basta definir

$$
  \begin{aligned}
    f\colon A &
    \to\left\{1,\ldots, n+1\right\}     \\
    x         &
    \mapsto g\left(x\right),\quad
    x\in A\setminus\left\{a_{0}\right\} \\
    a_{0}     &
    \mapsto n+1,\quad\text{caso contrario}.
  \end{aligned}
$$

($\Rightarrow$) Si $f\left(a_{0}\right)=n+1$, entonces definimos
$g=f\big|_{A\setminus\left\{a_{0}\right\}}$.

En caso contrario, supongamos que $f\left(a_{0}\right)=m\neq m+1$.
Luego, definimos

$$
  \begin{aligned}
    h\colon A & \rightarrow\left\{1,\ldots, m+1\right\}         \\
    x         & \mapsto f\left(x\right),\quad x\neq a_{0},a_{1} \\
    a_0       & \mapsto n+1,                                    \\
    a_1       & \mapsto m.
  \end{aligned}
$$

Así, $g=h\big|_{A\setminus\left\{a_{0}\right\}}$.
{{% /thm %}}

{{% thm theorem %}}
Sea $f\colon A\rightarrow\left\{1,2\ldots,n\right\}$ biyectiva.
Si $B\subsetneq A$, entonces
$\nexists\,g\colon B\rightarrow\left\{1,\ldots,n\right\}$ biyectiva.
{{% /thm %}}

{{% thm proof %}}
Por inducción sobre $n$.

Para $n=1\colon A=\left\{a\right\}$ y $B=\emptyset$.
Obvio.<br>

Hipótesis de inducción:
Supongamos cierto el teorema para $n$.
Veamos que se cumple para $n+1$:

En efecto, sea $f\colon A\rightarrow\left\{1,2,\ldots, n+1\right\}$
biyectiva y $B\subsetneq A$ ($B=\emptyset$, obvio).
Supogamos $B\neq\emptyset$.
Sea $a_{0}\in B$ y $a_{1}\in A\setminus B$.

Por el lema $1$:

$$
  \exists\,g\colon
  A\setminus
  \left\{a_0\right\}\rightarrow
  \left\{1,\ldots,n\right\}
$$

biyectiva y como

$$
  B\setminus
  \left\{a_{0}\right\}\subsetneq
  A\setminus
  \left\{a_{0}\right\}.
$$

Por la hipótesis de inducción:

$$
  \nexists\,h\colon
  B\setminus
  \left\{a_{0}\right\}\rightarrow
  \left\{1,2,\ldots,n\right\}
  \text{biyectiva}
$$

Por el lema $1$:

$$
  \exists\,k\colon
  B\rightarrow
  \left\{1,2,\ldots,n+1\right\}
  \text{biyectiva}.
$$

{{% /thm %}}

{{% thm corollary %}}
Si $A$ es finito, entonces $\nexists$ biyección de $A$ es un
subconjunto propio de $A$.

En efecto, supongamos que
$\exists\,f\colon A\rightarrow B\subsetneq A$ biyectiva.
Como $A$ es finito, entonces

$$
  \exists\, g\colon
  A\rightarrow
  \left\{1,\ldots,n\right\}
$$

para algún $n$.
{{% /thm %}}

{{% thm corollary %}}
$\mathbb{N}$ no es finito.
{{% /thm %}}

{{% thm proof %}}
En efecto.
Basta observar que

$$
  \begin{aligned}
    f\colon\mathbb{N} &
    \rightarrow
    \mathbb{N}\setminus\left\{1\right\}\subsetneq
    \mathbb{N}                      \\
    n                 & \mapsto n+1
  \end{aligned}
$$

es biyectiva.
{{% /thm %}}

{{% thm corollary %}}
Sea $A$ un conjunto finito.
El cardinal de $A$ está bien definida.
{{% /thm %}}

{{% thm proof %}}
En efecto.
Sea $I_k\coloneqq\left\{1,\ldots,k\right\}$.
Supongamos que existen

$$
  \begin{gathered}
    f\colon A\rightarrow I_{n}\\
    g\colon A\rightarrow I_{m}\\
  \end{gathered}
$$

biyectivas.
Se demostrará que $n=m$.
Supongamos que $n\lt m$.
{{% /thm %}}

{{% thm corollary %}}
Si $B\subsetneq A$ y $A$ es un conjunto finito, entonces $B$ es
finito y $\left|A\right|\lt\left|B\right|$.
{{% /thm %}}

{{% thm proof %}}
En efecto, sin pérdida de generalidad, sea
$B=A\setminus\left\{a_{0}\right\}$ con $a_{0}\in A$.
Como $A$ es finito, entonces

$$
  \exists\,f\colon
  A\rightarrow
  \left\{1,\ldots,n\right\}
$$

biyectiva para algún $n$.

Por el lema $1$,

$$
  \exists\,g\colon
  A\setminus\left\{a_0\right\}\rightarrow
  \left\{1,\ldots, n\right\}
$$

biyectiva.
Es decir, $B$ es finito y $\left|B\right|=n\lt\left|A\right|=n+1$.
{{% /thm %}}

{{% thm corollary %}}
Sea $B\neq\emptyset$, las siguientes proposiciones son equivalentes:
<br>

1. $B$ es finito.<br>
2. $\exists\,f\colon I_{n}\rightarrow B$ suryectiva.<br>
3. $\exists\,g\colon B\rightarrow I_{n}$ inyectiva.

{{% /thm %}}

{{% thm proof %}}
($1\Rightarrow2$) Si $B$ es un conjunto finito, entonces
$\exists\,h\colon B\rightarrow I_{n}$ biyectiva para algún $n$.
$\therefore\exists\,f=h^{-1}\colon I_{n}\rightarrow B$ suryectiva.

($2\Rightarrow3$) Tenemos que $\exists\,f\colon I_{n}\rightarrow B$
suryectiva.
Definimos:

$$
  \begin{aligned}
    g\colon B &
    \rightarrow I_{n} \\
    b         &
    \mapsto g\left(b\right)=
    \min
    \left(
    f^{-1}
    \left(\left\{b\right\}\right)
    \right)
    \subset I_{n}     \\
  \end{aligned}
$$

Afirmamos que $g$ es inyectiva.

Sean $b\neq b^{\prime}$ en $B$, entonces
{{% /thm %}}
