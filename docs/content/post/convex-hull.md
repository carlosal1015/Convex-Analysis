---
title: "Cápsula convexa"
description: "Una introducción."
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

{{% thm definition "Cápsula convexa" %}}
Sea $S\subset\mathbb{R}^{n}$, su cápsula convexa se define

$$
  \operatorname{co}
  \left(S\right)=
  \bigcap_{\mathclap{\underset{C\text{ convexo}}{C\supset S}}}C.
$$

Si $S_{1}\subset S_{2}$, entonces
$
\operatorname{co}\left(S_{1}\right)\subset
\operatorname{co}\left(S_{2}\right)
$.
{{% /thm %}}

{{% thm proposition %}}
$\operatorname{co}\left(S\right)$ es el conjunto de todas las
combinaciones convexas de $S$.
{{% /thm %}}

{{% thm proof %}}
Sea $D$ es el conjunto de todas las combinaciones convexas de $S$.

$D$ es un conjunto convexo y $D\supset S$, entonces
$\operatorname{co}\left(S\right)\subset D$.

Sea $x\in D$, entonces

$$
  x=
  \sum_{i=1}^{p}\lambda_{i}x_{i},
  \text{ con }
  x_{i}\in S_{p},\lambda_{i}\gt0
  \text{ y }
  \sum_{i=1}^p\lambda_i=1.
$$

$$
  S\subset
  \operatorname{co}
  \left(S\right).
$$

Si $X$ es combinación convexa de $\operatorname{co}\left(S\right)$,
entonces $x\in\operatorname{co}\left(S\right)$.
{{% /thm %}}

{{% thm definition "Cono en $\mathbb{R}^n$" %}}
Un cono en $\mathbb{R}^{n}$ es un conjunto $K\subset\mathbb{R}^{n}$
que satisface la siguiente proposición

$$
  \forall x\in K
  \text{ y }
  \forall\lambda\gt0:
  \lambda x\in K
$$

se cumple.
{{% /thm %}}

{{% thm example %}}

$$
  \begin{aligned}
    K & =\left\{A\in\mathbb{R}^{m\times m}\colon A\text{ es semidefinida positiva}.\right\} \\
    K & =\left\{A\in\mathbb{R}^{m\times m}\colon A\text{ es definida positiva}.\right\}     \\
    K & =\left\{\left(x,y\right)\in\mathbb{R}_+\times\mathbb{R}_+\colon xy\gt0\right\}      \\
  \end{aligned}
$$

{{% /thm %}}

{{% thm remark %}}
Cuando $0\in K$, decimos que $K$ es un cono con punta, caso
contrario será llamado un cono sin punta.
{{% /thm %}}

{{% thm proposition %}}
Sea $K$ un cono.
Este es convexo si y solo si $K+K\subset K$.

Si ${\left\{K_{i}\right\}}_{i\in I}$ es una familia de conos de
$\mathbb{R}^{n}$, entonces $\bigcap_{i\in I}K_{i}$ también es un
cono.
{{% /thm %}}

{{% thm proof %}}
En efecto, asumamos que $K$ es un conjunto convexo.

Sean $x,y\in K$, entonces
$
x+y=
2\left(
  \underbrace{\frac{1}{2}x+\frac{1}{2}y}_{\in K}
  \right)\in K
$.
Sean $x,y\in K$ y $\lambda\gt0$:

$$
  \underbrace{\lambda x}_{\in K}+
  \underbrace{\left(1-\lambda\right)y}_{\in K}\in K.
$$

{{% /thm %}}

{{% thm definition "Cápsula cónica" %}}
Sea $S\subset\mathbb{R}^{n}$.
La cápsula cónica de $S$ denotada por
$\operatorname{cono}\left(S\right)$ es

$$
  \bigcap_{\mathclap{\underset{K\text{ convexo}}{K\supset S}}}
  K.
$$

$K$ es el menor cono conteniendo a $S$.
{{% /thm %}}

{{% thm proposition %}}
Sea $S\subset\mathbb{R}^{n}$.
Se cumplen:<br>

1. $
\operatorname{cono}
\left(S\right)=
\left\{\lambda x\colon x\in S,\lambda\gt0\right\}
$.<br>
2. Si $S$ es un conjunto convexo, entonces
   $\operatorname{cono}\left(S\right)$ también es convexo.

{{% /thm %}}

{{% thm definition "Subespacio afín" %}}
$H\subset\mathbb{R}^{n}$ es un subespacio afín.
Si $H-a$ es un subespacio vectorial para algún $a\in\mathbb{R}^{n}$.
{{% /thm %}}

- Es una generalización de un espacio vectorial.
- Es independiente del $a$ que se tome.
- En $\mathbb{R}^{2}$, los subespacios afines que tenemos son los
  puntos que no pasan por el origen, las rectas que no pasan por el origen y
  $\mathbb{R}^{2}$.

{{% thm remark %}}
$\forall a,b\in H\colon H-a=H-b$.
{{% /thm %}}

{{% thm example %}}
Sea $a\in\mathbb{R}^{n}$.
$\left\{a\right\}$ es un subespacio afín de $\mathbb{R}^{n}$.
{{% /thm %}}

{{% thm proposition %}}
Si ${\left\{H_{i}\right\}}_{i\in I}$ es una familia de subespacios
afines de $\mathbb{R}^{n}$, entonces

$$
  \bigcap_{\mathclap{i\in I}}
  H_{i}
$$

también es un subespacio afín.
{{% /thm %}}

{{% thm definition "Subespacio afín generado" %}}
El subespacio afín generado de $S\subset\mathbb{R}^{n}$ es

$$
  \bigcap_{\mathclap{\underset{H\text{ afín}}{H\supset S}}}
  H
$$

y será denotado por $\operatorname{aff}\left(S\right)$.
{{% /thm %}}

{{% thm example%}}
Si
$
  S\coloneqq
  \left\{A\in\mathbb{R}^{n\times n}\colon
  A\text{ es definida positiva}\right\}
$, entonces $\operatorname{aff}\left(S\right)$.
{{% /thm %}}

{{% thm proposition %}}
Sea $S\subset\mathbb{R}^{n}$ y $a\in S$ se cumple<br>

1. $
  \operatorname{aff}\left(S\right)=
  \left\{
  a+
  \sum_{i=1}^{p}t_{i}
  \left(b_{i}-a\right)\colon p\in\mathbb{N},
  \left\{t_{i}\right\}_{i=1}^{p}\subset\mathbb{R},
  \left\{b_i\right\}_{i=1}^{p}
  \right\}
$.<br>
2. Si $S_{1}\subset S_{2}$, entonces
   $
   \operatorname{aff}
   \left(S_{1}\right)\subset
   \operatorname{aff}\left(S_{2}\right)
   $.<br>
3. $
   \operatorname{aff}
   \left(S\right)=
   \operatorname{aff}
   \left(\operatorname{aff}\left(S\right)\right)
   $,
   pero es diferente de
   $
   \operatorname{aff}
   \left(\operatorname{cono}\left(S\right)\right)
   $.

{{% /thm %}}

{{% thm remark %}}

$$
  \operatorname{co}
  \left(S\right)=
  \left\{
  x=
  \sum_{i=1}^{p}
  \lambda_{i}x_{i}\colon
  p\in\mathbb{N},
  \left\{t_{i}\right\}_{i=1}^{p}\subset
  \mathbb{R}_{+},
  \sum_{i=1}^{p}
  \lambda_{i}=
  1\right\}.
$$

{{% /thm %}}

{{% thm theorem %}}
Sea $S\subset\mathbb{R}^{n}$ y $x_{0}\in S$.
Si $x\in\operatorname{co}\left(S\right)$, entonces existe
$p\in\mathbb{N}$, $\left\{x_{i}\right\}_{i=1}^{p}\subset S$,
$\left\{t_{i}\right\}_{i=1}^{h}\subset\mathbb{R}_{+}$ tal que
${\left\{\left(x_{i}-x_{0}\right)\right\}}_{i=1}^{p}$ es linealmente independiente.

$$
  x=
  x_{0}+
  \sum_{i=1}^{p}
  t_{i}\left(x_{1}-x_{0}\right)
  \text{ con }
  \sum_{i=1}^{p}
  t_{i}\le1.
$$

$$
  \left(
  1-
  \sum_{i=1}^{p}
  t_{i}=
  t_{0}\ge0
  \right)
$$

$$
  x=
  t_{0}x_{0}+
  \sum_{i=1}^{p}
  t_{i}x_{i}.
$$

{{% /thm %}}

El que controla es la cantidad de vectores linealmente
independientes.

{{% thm proof %}}
Siendo $x\in\operatorname{co}\left(S\right)$, existen
$p\in\mathbb{N}$, ${\left\{x_{i}\right\}}_{p}t_{i}=1$ y $x=\sum_{i=0}^{p}t_{i}x_{i}$.

$$
  =
  x_{0}+
  \sum_{i=1}^{p}
  t_{i}\left(x_{1}-x_{0}\right).
$$

Asumamos que $t_{i}\gt0$, $x_{1}\neq x_{0}$ cuando
$i\in\left\{1,\ldots,p\right\}$.
Asuma que $\left\{\left(x_{i}-x_{0}\right)\right\}$ no es linealmente
independiente.

$$
  0=
  \sum_{i=1}^{p}
  \frac{\lambda_i}{\alpha}
  \left(x_{i}-x_{0}\right)\quad
  \left(\alpha\gt0\right)
$$

Podemos asumir $\sum_{i=1}^{p}\lambda_{i}\ge0$,
luego $\max_{i=1,\ldots,p}\lambda_{i}\gt0$

$$
  \begin{aligned}
    0 & =
    \sum_{i=1}^{p}
    \frac{\lambda_{i}}{\alpha}\left(x_{i}-x_{0}\right) \\
    x & =
    x_{0}+
    \sum_{i=1}^{p}t_{i}
    \left(x_{i}-x_{0}\right)                           \\
    x & =
    x_{0}+
    \sum_{i=1}^{p}
    \left(t_{i}-\frac{\lambda_{i}}{\alpha}\right)
    \left(x_{i}-x_{0}\right)
  \end{aligned}
$$

Si
$
  t_{i}=
  \frac{\lambda_{i}}{\alpha}\ge0\quad
  \forall i=1,\ldots,p\iff
  \alpha\ge\frac{\lambda_{i}}{t_{i}}
  \forall i=1,\ldots,p
$.
Luego $\alpha=\max\left\{\frac{\lambda_{i}}{t_{i}}\colon i=1,\ldots,p\right\}$.

Reordenando los índices (si es necesario) de tal manera que
$\alpha=\frac{\lambda_{p}}{t_{p}}\gt0$.

$$
  \sum_{i=1}^{p}
  \left(
  t_{i}-
  \frac{\lambda_{i}}{\alpha}
  \right)=
  \sum_{i=1}^{p}
  t_{i}-
  \frac{1}{\alpha}
  \sum_{i=1}^{p}
  \lambda_{i}\ge0.
$$

{{% /thm %}}

{{% thm corollary %}}
Sea $\emptyset\neq S\subset\mathbb{R}^{n}$.
$\operatorname{co}\left(S\right)$ es el conjunto de todas las
combinaciones convexas de a lo más $n+1$ elementos de $S$.
{{% /thm %}}

{{% thm corollary %}}
Si $S\subset\mathbb{R}^n$ es un conjunto compacto, entonces
$\operatorname{co}\left(S\right)$ también es un conjunto compacto.
{{% /thm %}}

{{% thm proof %}}
Sea
$
  T\coloneqq
  \left\{
  \left(t_{0},\ldots,t_{n}\right)
  \in\mathbb{R}^{n}\colon
  t_{i}\ge0,
  \sum_{i=0}^{p}t_{i}=
  1
  \right\}
$.
{{% /thm %}}

{{% thm definition "Conjunto abierto" %}}
Un conjunto $V\subset\mathbb{R}^{n}$ es abierto sii para todo
$x\in V$ existe $r=r\left(x\right)>0$ tal que $B\left(x,r\right)\subset V$.

$$
  B\left(x,r\right)\coloneqq
  \left\{
  y\in\mathbb{R}^{n}\colon
  \left\|y-x\right\|\lt r
  \right\}
$$

{{% /thm %}}

{{% thm example %}}
En $\mathbb{R}^{d}$ con $d=1$.
El conjunto $V=\left[x,y\right)$ no es abierto.
Pero, el conjunto $\operatorname{int}\left(V\right)=\left(x,y\right)$
es abierto.
{{% /thm %}}

{{% thm example %}}
Sea
$
  E\coloneqq
  \left\{
  A\in\mathbb{R}^{n\times n}\colon
  A\text{ es simétrica}.
  \right\}
$.

$$
  V\coloneqq
  \left\{
  A\in E\colon
  A\text{ es definida positiva}.
  \right\}
$$

es un conjunto abierto.
{{% /thm %}}

{{% thm definition "Interior de un conjunto" %}}
Sea $C\subset\mathbb{R}^{n}$.
El interior de $C$, denotado por $\operatorname{int}\left(C\right)$
es el intervalo más grande contenido en $C$, esto es,

$$
  \operatorname{int}
  \left(C\right)=
  \bigcup_{\mathclap{\underset{V\text{ abierto}}{V\subset C}}}
  V_{i}.
$$

{{% /thm %}}

{{% thm remark %}}
${\left\{V_{i}\right\}}_{i\in I}$ es una familia de conjuntos
abiertos en $\mathbb{R}^{n}$, entonces $\bigcup_{i\in I}V_{i}$
también es un conjunto abierto.
{{% /thm %}}

{{% thm proof %}}
En efecto, sea $x\in\bigcup_{i\in I}V_{i}$, entonces
$\exists\,x\in I$ tal que $x\in V_{i}$ y por lo tanto existe $r\gt0$
tal que

$$
  B\left(x,r\right)\subset
  V_{i}\subset
  \bigcup_{i\in I}V_{i}.
$$

{{% /thm %}}

{{% thm definition "Conjunto cerrado" %}}
$C\subset\mathbb{R}^{n}$ es cerrado sii $\mathbb{R}^{n}\setminus C$
es abierto.
{{% /thm %}}

{{% thm proposition %}}
Son equivalentes:<br>

1. $C$ es cerrado.<br>
2. Para toda sucesión ${\left\{x_{k}\right\}}_{k\in\mathbb{N}}$ en $C$ convergente, su límite está en $C$.

{{% /thm %}}

{{% thm proof %}}
Sea ${\left\{x_{k}\right\}}_{k\in\mathbb{N}}$ una sucesión en $C$
convergente con $\lim\limits_{k\to\infty}x_k=\overline{x}$.
Por demostrar que $\overline{x}\in C$.
Asuma que $\overline{x}\notin C$.
Esto es, $\exists r\gt0$ tal que
{{% /thm %}}
