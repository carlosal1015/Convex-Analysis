---
title: "Interior relativo"
description: "Una introducción."
author:
  name: "Oromion"
  desc: " "
date: 2020-03-26
draft: false
tags:
  - go
categories:
  - development
markup: "mmark"
showimages: true
showresizedimages: true
---

{{< figure src="/img/interior.png" width="600px" >}}

Recordemos, si $C\subset\mathbb{R}^{n}$ es no vacío.

{{% thm definition "Interior de un conjunto $C$" %}}
El interior de $C$, denotado por $\operatorname{int}\left(C\right)$,
es

$$
  \operatorname{int}\left(C\right)=
  \bigcap_{\mathclap{\underset{V\text{ abierto}}{V\subset C}}}
  V.
$$

{{% /thm %}}

{{% thm definition "Conjunto abierto" %}}
Un conjunto $V\subset\mathbb{R}^{n}$ es abierto en $\mathbb{R}^{n}$,
si $\forall x\in V\,\exists r=r\left(x\right)\gt0$ tal que
$B\left(x,r\right)\subset V$

$$
  B\left(x,r\right)\coloneqq
  \left\{
  y\in\mathbb{R}^{n}\colon
  \left\|y-x\right\|\lt r
  \right\}.
$$

{{% /thm %}}

{{% thm example %}}
En $\mathbb{R}^{2}$, el conjunto

$$
  C=
  \left\{
  \left(x,y\right)\in\mathbb{R}^{2}\colon
  0\leq x\leq1,y=0
  \right\}
$$

tiene interior vacío.
{{% /thm %}}

{{% thm definition "Interior relativo" %}}
Sea $C\subset\mathbb{R}^{n}$ no vacío.

El interior relativo de $C$, denotado por
$\operatorname{ri}\left(C\right)$, es

$$
  \operatorname{ri}
  \left(C\right)=
  \bigcup_{
    \substack{W\subset C\\
      W\subset\mathcal{F}}
  }
  W
$$

donde

$$
  \mathcal{F}\coloneqq
  \left\{
  W=
  \left[V\cap\operatorname{aff}\left(C\right)\right]\subset
  C\colon V\text{ es abierto de }\mathbb{R}^{n}
  \right\}.
$$

{{% /thm %}}

{{% thm remark %}}
Sean $C_{1}\subset C_{2}$ ambos de $\mathbb{R}^{n}$.
Entonces
<br>

1.  $
\operatorname{int}
\left(C_{1}\right)\subset
\operatorname{int}
\left(C_{2}\right)
$.
    <br>
2.  $
\operatorname{ri}
\left(C_{1}\right)
\overset{??}{=}
\operatorname{ri}
\left(C_{2}\right)
$.
    <br>
3.  Si
    $
\operatorname{aff}
\left(C_{1}\right)=
\operatorname{aff}
\left(C_{2}\right)
$,
    entonces
    $
\operatorname{ri}
\left(C_{1}\right)\subset
\operatorname{ri}
\left(C_{2}\right)
$.
    <br>
4.  Preserva la desigualdad.

{{% /thm %}}

{{% thm example %}}
Sea $C=\left\{a\right\}$, donde $a\in\mathbb{R}^{n}$.
Luego, el $\operatorname{aff}\left(C\right)=\left\{a\right\}$ y el
$\operatorname{ri}\left(C\right)=C$.
{{% /thm %}}

{{% thm example %}}
Sean $C=\left\{a,b\right\}$ con $a\neq b$.
En $\mathbb{R}^{n}$, el $\operatorname{ri}\left(C\right)=\emptyset$.
{{% /thm %}}

{{% thm remark %}}
Sea $C$ un conjunto convexo no vacío.
Para $x\in C$ y $z\in\operatorname{ri}\left(C\right)$, existe
$y\in\operatorname{ri}\left(C\right)$ tal que

$$
  z=
  \alpha y+
  \left(1-\alpha\right) x\quad
  \text{ para }
  \alpha\in\left]0,1\right[.
$$

{{% /thm %}}

{{% thm proof %}}
Sea $z\in\operatorname{ri}\left(C\right)$, entonces
$z\in W=\left[V\cap\operatorname{aff}\left(C\right)\right]\subset C$.
$z\in V$, esto es, $\exists\,r\gt0$ tal que
$B\left(z,r\right)\subset V$.<br>

Afirmación:<br>
$y\in W$.
{{% /thm %}}

{{% thm remark %}}
Sea $f\colon\mathbb{R}^{m}\to\mathbb{R}^{n}$ una función
continua y $V$ un conjunto abierto de $\mathbb{R}^{m}$, entonces
$f\left(V\right)$ es abierto de $\mathbb{R}^{n}$.
{{% /thm %}}

{{% thm remark %}}
Sea

$$
  \begin{aligned}
    f\colon\mathbb{R}^{m} & \to\mathbb{R}^{m}            \\
    x                     & \mapsto f\left(x\right)=Ax+b
  \end{aligned}
$$

biyectiva donde $A\in\mathbb{R}^{m\times m}$ y $b\times\mathbb{R}^{m}$.

Si $V$ es abierto en $\mathbb{R}^{m}$, entonces $f\left(V\right)$
también es un abierto en $\mathbb{R}^{n}$.
{{% /thm %}}

{{% thm theorem %}}
Sea $C\subset\mathbb{R}^{n}$ convexo no vacío, entonces el
$\operatorname{ri}\left(C\right)$ es no vacío.
{{% /thm %}}

{{% thm example %}}
Sea.
{{% /thm %}}
