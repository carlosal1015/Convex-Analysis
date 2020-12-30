---
title: "Repaso de álgebra lineal"
description: "Producto interno."
author:
  name: "Oromion"
  desc: " "
date: 2020-04-02
draft: false
tags:
- go
categories:
- development
markup: "mmark"
katex: true
draft: false
---

{{% thm definition "Espacios vectoriales con producto interno" %}}
Sea $\left(V,\mathbb{F}\right)$ un $\mathbb{F}$-espacio vectorial con
$\mathbb{F}=\mathbb{C}\vee\mathbb{R}$.

Un producto interno sobre $V$ es una función

$$
  \begin{aligned}
    \langle,\rangle\colon V\times V & \rightarrow\mathbb{F}     \\
    \left(u,v\right)                & \mapsto\langle u,v\rangle \\
  \end{aligned}
$$

que cumple:<br>

1. $\forall u,v,w\in V$ y $\forall r,s\in\mathbb{F}$ se tiene
   $
   \left\langle ru+su,w\right\rangle=
   r\left\langle u,w\right\rangle+
   s\left\langle v,w\right\rangle
   $.<br>
2. $
   \left\langle u,v\right\rangle=
   \overline{\left\langle v,u\right\rangle}
   $.<br>
3. $\left\langle u,u\right\rangle\gt0$ si $u\neq\vec{0}$.<br>

Entonces, $\left(V,\langle,\rangle\right)$ es un espacio con producto
interno.
{{% /thm %}}

{{% thm consequence %}}

1. Si $\langle u,u\rangle=0$, entonces $u=\vec{0}$.<br>
2. Sea $u,v,w\in V$ y $r,s\in\mathbb{F}$, entonces
   $
   \left\langle w,ru+sv\right\rangle=
   \overline{\left\langle ru+sv,w\right\rangle}
   $.

{{% /thm %}}

{{% thm example %}}
Sea $\mathbb{F}=\mathbb{R}\vee\mathbb{C}$ y $V=\mathbb{F}^{n}$ un
$\mathbb{F}$-espacio vectorial.
Sean los vectores $u=\left(u_{1},\ldots,u_{n}\right)$ y
$v=\left(v_{1},\ldots,v_{n}\right)$ de $\mathbb{F}^{n}$.
El producto interno, si $\mathbb{F}=\mathbb{C}$

$$
  \left\langle u,v\right\rangle=
  \sum_{i=1}^{n}
  u_{i}
  \overline{v}_{i}.
$$

Si $\mathbb{F}=\mathbb{R}$, entonces

$$
  \left\langle u,v\right\rangle=
  \sum_{i=1}^{n}
  u_{i}v_{i}.
$$

{{% /thm %}}

{{% thm example %}}
Sea
$
  \mathbb{F}^{n\times n}=
  \left\{
  \left[a_{ij}\right]_{n\times n}\mid
  a_{ij}\in\mathbb{F}
  \right\}
$
el espacio de matrices cuadradas definida y
$\mathbb{F}=\mathbb{R}\vee\mathbb{C}$, se define el producto interno
de
$
  A=
  \left[a_{ij}\right],
  B=
  \left[b_{ij}\right]
  \in\mathbb{F}^{n\times n}
$
como

$$
  \left\langle A, B\right\rangle=
  \sum_{i,j=1}^{n}
  a_{ij}
  \overline{b}_{ij}.
$$

Se puede verificar que

$$
  \begin{aligned}
    \langle A,B\rangle & =
    \sum_{i,j=1}^{n}
    a_{ij}
    \overline{b}_{ij}      \\
                       & =
    \operatorname{Tr}
    \left(AB^{\ast}\right) \\
                       & =
    \operatorname{Tr}
    \left(B^\ast A\right).
  \end{aligned}
$$

En efecto,
$B^{\ast}=\left[c_{ij}\right]=\left[\overline{b}_{ji}\right]$.

$$
  \begin{aligned}
    {\left(AB^{\ast}\right)}_{ij} & =
    \sum_{k=1}^{n}
    a_{ik}c_{kj}=
    \sum_{k=1}^{n}
    a_{ik}
    \overline{b}_{kj}                 \\
    \operatorname{Tr}
    \left(AB^{\ast}\right)        & =
    \sum_{i=1}^{n}
    \left(AB^{\ast}\right)_{ii}       \\
                                  & =
    \sum_{i=1}^{n}
    \sum_{k=1}^{n}
    a_{ik}
    \overline{b}_{ik}=
    \sum_{i,j=1}^{n}
    a_{ij}
    \overline{b}_{ij}.
  \end{aligned}
$$

Sean $A,C,B\in V$ y $r,s\in\mathbb{F}$.

$$
  \begin{aligned}
    \left\langle rA+sC,B\right\rangle & =
    \operatorname{Tr}
    \left(\left(rA+sC\right)B^\ast\right) \\
                                      & =
    \operatorname{Tr}
    \left(rAB^{\ast}+sCB^{\ast}\right)    \\
                                      & =
    r\operatorname{Tr}
    \left(AB^{\ast}\right)+
    s\operatorname{Tr}
    \left(CB^{\ast}\right)                \\
                                      & =
    r\left\langle A,B\right\rangle+
    s\left\langle C,B\right\rangle.
  \end{aligned}
$$

Se cumple que

$$
  \left\langle A,B\right\rangle=
  \overline{\left\langle B,A\right\rangle}.
$$

Ya tenemos:

$$
  \begin{aligned}
    \left\langle A,B\right\rangle & =
    \operatorname{Tr}
    \left(AB^{\ast}\right)                                        \\
                                  & =
    \overline{\overline{\sum_{i,j=1}^{n}a_{ij}\overline{b}_{ij}}} \\
                                  & =
    \overline{\sum_{i,j=1}^{n}b_{ij}\overline{a_{ij}}}            \\
                                  & =
    \overline{\left\langle B,A\right\rangle}.
  \end{aligned}
$$

$$
  \left\langle A,A\right\rangle=
  \operatorname{Tr}
  \left(AA^{\ast}\right)=
  \sum_{i,j=1}^{n}a_{ij}
  \overline{a}_{ij}=
  \sum_{i,j=1}{\left|a_{ij}\right|}^{2}.
$$

Si $A\neq0$, entonces $\exists\,a_{ij}\neq0$, es decir,
$\left|a_{ij}\right|\gt0$, por lo que se concluye que
$\left\langle A,A\right\rangle\gt0$.

A partir de un producto interno se obtiene otro producto interno.
{{% /thm %}}

**Caso general**

Sea $T\colon V\rightarrow W$ una transformación lineal donde $V$ y
$W$ son $\mathbb{F}$-espacios vectoriales.
Sea $\mathbb{F}=\mathbb{C}\vee\mathbb{R}$.
Además, $T$ es inyectiva (no singular).

Consideremos que $W$ es una espacio vectorial con producto interno
${\left\langle,\right\rangle}_{W}$.
Se puede definir un producto interno sobre $V$:

Para cualesquiera $u,v\in V$

$$
  {\left\langle u,v\right\rangle}_{V}=
  {\left\langle Tu,Tv\right\rangle}_{W}.
$$

${\left\langle,\right\rangle}_{V}$ cumple los axiomas $1$, $2$ y $3$.

1. Sea $u,v,\ell\in V$ y $r,s\in\mathbb{F}$

$$
\begin{aligned}
{\left\langle ru+sv,\ell\right\rangle}_{V}
& =
{\left\langle T\left(ru+sv\right),T\ell\right\rangle}_{W}               \\
& =
{\left\langle rT\left(u\right)+sT\left(v\right),T\ell\right\rangle}_{W} \\
& =
r{\left\langle T\left(u\right),T\ell\right\rangle}_{W}+
s{\left\langle T\left(v\right),T\ell\right\rangle}_{W}                  \\
& =
r{\left\langle u,\ell\right\rangle}_{V}+
s{\left\langle v,\ell\right\rangle}_{V}.
\end{aligned}
$$

2. Sean
   $$
     \begin{aligned}
       {\left\langle u,v\right\rangle}_{V}
        & ={\left\langle Tu,Tv\right\rangle}_{W}        \\
        & ={\left\langle Tw,Tu\right\rangle}_{W}        \\
        & =\overline{\left\langle w,u\right\rangle}_{V}.
     \end{aligned}
   $$

Si $u\neq\vec{0}$

$$
  {\left\langle u,v\right\rangle}_{V}=
  {\left\langle Tu,Tv\right\rangle}_{V}.
$$

{{% thm application %}}

Sea $V$ un $\mathbb{F}$-espacio vectorial con $\dim_{\mathbb{F}}V=n$
y $W=\mathbb{F}^{n}$.
Sea $\left\{e_{1},\ldots,e_{n}\right\}$ la base canónica de $\mathbb{F}^{n}$.

$$
  \begin{aligned}
    e_{1}    & =\left(1,0,\ldots,0\right) \\
    \vdots\; & =\quad\quad\vdots          \\
    e_{n}    & =\left(0,0,\ldots,1\right)
  \end{aligned}
$$

y $\beta=\left\{\alpha_{1},\ldots,\alpha_{n}\right\}$ una base de $V$.

Si

$$
  \begin{aligned}
    T\colon V  & \rightarrow\mathbb{F}^{n}  \\
    \alpha_{i} & \mapsto T\alpha_{i}=e_{i}.
  \end{aligned}
$$

Para cualquier $v\in V$, se tiene $v=\sum_{i=1}^{n}v_{i}\alpha_{i}$.

$$
  \begin{aligned}
    T\left(v\right)                & =
    T\left(\sum_{i=1}^{n}v_{i}\alpha_{i}\right) \\
                                   & =
    \sum_{i=1}^{n}v_{i}T\alpha_{i}=
    \sum_{i=1}^{n}v_{i}e_{i}.
  \end{aligned}
$$

$T$ es lineal.

Sea $Tv=\vec{0}\in\mathbb{F}^{n}$, entonces

$$
  v=
  \left(v_{1},\ldots,v_{n}\right)=
  \sum_{i=1}^{n}v_{i}e_{i}=
  \vec{0}=
  \left(0,\ldots,0\right).
$$

El $\operatorname{Nu}\left(T\right)=\left\{0\right\}$.
Es decir, $T$ es inyectiva.

En $\mathbb{F}^{n}$ se define el producto interno canónico para dos
vectores

$$
  f=
  \left(f_{1},\ldots,f_{n}\right)
  \text{ y }
  g=
  \left(g_{1},\ldots,g_{n}\right)
$$

en $\mathbb{F}^{n}$ como:

$$
  {\left\langle f,g\right\rangle}_{\mathbb{F}^{n}}=
  \sum_{i=1}^{n}
  f_{i}
  \overline{g}_{i}.
$$

De esto se induce un producto interno en $V$.
Para cualesquiera $u,v\in V$:

$$
  {\left\langle u,v\right\rangle}_{V}=
    {\left\langle Tu,Tv\right\rangle}_{\mathbb{F}^{n}}.
$$

{{% /thm %}}
