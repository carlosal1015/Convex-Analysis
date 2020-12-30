---
title: "Conjuntos convexos"
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

¡Bienvenido al curso! En los albores de la fascinante rama de las
matemáticas llamada **Optimización** fue estudiado por muchos años
como un solo bloque, posteriormente se decidió estudiar este cuerpo
iniciando por el caso convexo para luego extrapolar ideas en el caso
no convexo.

Hay funciones convexas triviales que no son funciones diferenciables.
Por lo que debemos extender la función derivada.

En el caso convexo, la interpretación es bastante geométrica.

En el caso no convexo estamos limitados en la parte geométrica.

Entonces la misión de los matemáticos ha sido reescribir la propiedad
en el caso no convexo.

Por lo que podemos decir que el análisis convexo sirve para entender
los casos matemáticos no convexos.

{{% thm definition "Conjunto convexo" %}}
Supongamos que existe un conjunto no vacío $C$, contenido en el
espacio vectorial $\mathbb{R}^{n}$.

Diremos que $C$ es convexo si para cualesquiera $x,y\in C$, entonces
el segmento $\left[x,y\right]\subset C$.

En otras palabras, $C$ es convexo si para todo $x,y\in C$ se cumple

$$
  C\ni
  \lambda x+
  \left(1-\lambda\right)y\quad
  \forall\, 0\le\lambda\le1.
$$

{{% /thm %}}

{{% thm remark %}}
$C$ no depende de la dimensión (finita o infinita), pues lo único que
necesitamos es que el espacio que contiene a $C$, debe ser un espacio
vectorial.

La propiedad de convexidad es una propiedad unidmensional.
{{% /thm %}}

{{% thm definition "Combinación convexa" %}}
Sea $C\subset\mathbb{R}^{n}$ un elemento $x\in\mathbb{R}^{n}$ es una
combinación convexa de $C$ sii existen
${\left\{x_{i}\right\}}_{i=1}^{p}$
$\left(p\in\mathbb{N}\right)$ en $C$ y
${\left\{t_{i}\right\}}_{i=1}^{p}$ en $\mathbb{R}_{+}$ con
$\sum_{i=1}^{p}t_{i}=1$ tal que $x=\sum_{i=1}^{p}t_{i}x_{i}$.
{{% /thm %}}

{{% thm remark %}}
El conjunto $\mathbb{R}_{+}$ denota los números reales positivos.
{{% /thm %}}

{{% thm example "Conjuntos convexos" %}}
Sea
$C=\left\{x\in\mathbb{R}^{n}\colon\left\|x\right\|\le\gamma\right\}$
donde $\gamma>0$ y $\left\|\cdot\right\|$ es una norma.

Sea $A\in\mathbb{R}^{n\times n}$ y $\gamma>0$.

El conjunto
$
  C=
  \left\{
  x\in\mathbb{R}^{n}\colon
  \left\langle Ax,x\right\rangle\le
  \gamma
  \right\}
$
es convexo si y solo si $A$ es semi definida positiva (sdp):

$$
  \left\langle Ad,d\right\rangle\ge0\quad
  \forall d\in\mathbb{R}^{n}.
$$

{{% /thm %}}

{{% thm lemma %}}
Sea $C\subset\mathbb{R}^{n}$.

El conjunto de todas las combinaciones lineales convexas de $C$ es
convexo.
{{% /thm %}}

{{% thm proof %}}
Sean las combinaciones convexas $x,y$ de $C$, entonces

$$
  x=
  \sum_{i=1}^{p}
  \lambda_{i}x_{i},\quad
  y=
  \sum_{i=1}^{q}
  \beta_{i}y_{i}.
$$

Sea $0\le\lambda\le1$,

$$
  \lambda x+
  \left(1-\lambda\right)=
  \lambda\sum_{i=1}^{p}
  \lambda_{i}x_{i}+
  \left(1-\lambda\right)
  \sum_{i=1}^{q}\beta_{i}y_{i}
$$

es combinación convexa de $C$.
{{% /thm %}}

{{% thm proposition %}}
Sea $C\subset\mathbb{R}^{n}$.

Las siguientes proposiciones son equivalentes:<br>

1. $C$ es un conjunto convexo.<br>
2. $C$ contiene a todas las combinaciones convexas de $C$.<br>

{{% /thm %}}

{{% thm proof %}}
($2\Rightarrow 1$)

Sean $x,y\in C$ y $0\le\lambda\le1$, entonces

$$
  \lambda x+
  \left(1-\lambda\right)
  y\in C.
$$

($1\Rightarrow 2$)

Sea $x=\sum_{i=1}^{p}t_{i}x_{i}$ con
${\left\{x_{i}\right\}}_{i=1}^{p}\subset C$ y
${\left\{t_{i}\right\}}_{i=1}^{p}\subset\mathbb{R}_{+}$ con
$\sum_{i=1}^{p}t_{i}=1$.
Ahora

$$
  x=
  \sum_{i=1}^{p-1}
  t_{i}x_{i}+
  t_{p}x_{p}=
  \left(
  \sum_{i=1}^{p-1}
  t_{i}
  \right)
  \left(
  \sum_{i=1}^{p}
  \frac{t_{i}}{\sum_{i=1}^{p-1}t_{i}}x_{i}
  \right)+
  t_{p}x_{p}.
$$

Si $p=1$ o $p=2$, ya está.

Asumamos por inducción que se cumple para $p=1$.

Mostraremos que se cumple para $p$.
{{% /thm %}}

{{% thm proposition %}}
Si ${\left\{C_{i}\right\}}_{i\in I}$ es una colección de conjuntos
convexos de $\mathbb{R}^{n}$, entonces

$$
  \bigcap_{i\in J}C_{i}\quad
  \text{también es convexo}.
$$

{{% /thm %}}

{{% thm proof %}}

{{% /thm %}}

{{% thm definition "Cápsula convexa" %}}
La cápsula convexa de un conjunto $S\subset\mathbb{R}^{n}$, denotado
por $\operatorname{co}\left(S\right)$, es

$$
  \bigcap_{\mathclap{\underset{C\text{ convexo}}{C\supset S}}}
  C.
$$

{{% /thm %}}

{{% thm remark %}}
$\operatorname{co}\left(S\right)$ es el conjunto convexo más pequeño
que contiene a $S$.
{{% /thm %}}

## Resumen de la primera clase

$$
  \forall x\in C,
  \forall y\in C\text{ y }
  \forall t\in\left[0,1\right]\colon
  tx+
  \left(1-t\right)y
  \in C.
$$
