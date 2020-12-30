---
title: "Números complejos"
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

{{% thm definition "Espacio vectorial con producto interno" %}}
Sea $\left(V,\mathbb{C}\right)$ o $\left(V,\mathbb{R}\right)$.

Si $\left\langle,\right\rangle\colon V\times V\rightarrow\mathbb{F}$,
con $\mathbb{F}=\mathbb{C}\vee\mathbb{R}$, es un producto interno.

Tenemos $\left(V,\mathbb{F},\left\langle,\right\rangle\right)$ el
espacio vectorial con producto interno.
{{% /thm %}}

{{% thm remark %}}
Entonces

$$
  \left\langle u,v\right\rangle=
  \mathfrak{Re}\left\langle u,v\right\rangle+
  \imath\mathfrak{Im}\left\langle u,v\right\rangle.
$$

$$
  \begin{aligned}
    z              & =x+\imath y\in\mathbb{R}               \\
    \imath z       & =-y+\imath x                           \\
    -\imath z      & =y-\imath x                            \\
    \mathfrak{Im}z & =y-\mathfrak{Re}\left(-\imath z\right)
  \end{aligned}
$$

entonces

$$
  \begin{aligned}
    \left\langle u,v\right\rangle & =
    \mathfrak{Re}\left\langle u,v\right\rangle+
    i\mathfrak{Re}
    \left(
    \underbrace{-i\left\langle u,v\right\rangle}_{\left\langle u,v\right\rangle}
    \right)                           \\
    \left\langle u,v\right\rangle & =
    \mathfrak{Re}\left\langle u,v\right\rangle+
    i\mathfrak{Re}
    \left(
    \left\langle u,iv\right\rangle
    \right)                           \\
  \end{aligned}
$$

el producto interno está determinado por su parte real.
{{% /thm %}}

{{% thm definition "Formas cuadrática o función cuadrática" %}}
Sea $\left(V,\mathbb{F},\left\langle,\right\rangle\right)$ un espacio
con producto interno.
Una función cuadrática sobre $V$ es

$$
  \begin{aligned}
    q\colon V &
    \to\mathbb{F} \\
    \alpha    &
    \mapsto q\left(\alpha\right)=
    \left\langle\alpha,\alpha\right\rangle=
    {\left\|\alpha\right\|}^{2}.
  \end{aligned}
$$

{{% /thm %}}

Tenemos:

$$
\begin{aligned}
q\left(\alpha\pm\beta\right) & =
\left\langle\alpha\pm\beta,\alpha\pm\beta\right\rangle \\
& =
q\left(\alpha\right)\pm
\left\langle\alpha,\beta\right\rangle+
\left\langle\beta,\alpha\right\rangle+
q\left(\beta\right) \\
& =
{\left\|\alpha\right\|}^{2}\pm
2\mathfrak{Re}
\left\langle\alpha,\beta\right\rangle+
{\left\|\beta\right\|}^{2}
\end{aligned}
$$

Si $\mathbb{F}=\mathbb{R}$ se tiene:

$$
  \left\langle\alpha,\beta\right\rangle=
  \frac{1}{4}q\left(\alpha+\beta\right)-
  \frac{1}{4}q\left(\alpha-\beta\right)+
  \frac{1}{4}q\left(\alpha+\beta\right)-
  \frac{1}{4}q\left(\alpha-\beta\right).
$$

son las identidades de polarización.

{{% thm definition "Matriz de un producto interno de dimensión" %}}
.
{{% /thm %}}
