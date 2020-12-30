%
% testfcuni.cls -- a document class for writting notes with FC UNI.
%
% Copyright © 2019 Oromion <caznaranl@uni.pe>
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
%s along with this program.  If not, see <http://www.gnu.org/licenses/>.

% Notes:
%
% 1. This class can be used for creating notes with UNI logo at the
%    header and Mathematics department address at the footer (as in standard UNI
%    letterhead stationery).
% 2. It is based on the standard Latex document class, memoir.cls.
% 3. Required packages are epsfig and ifthen.
% 4. If UNI logo is to be included in the head, then the file
%    UNI.eps must be provided. Otherwise, the logo is omitted.
% 5. For example usage, please see main.tex
% 
% Please contact caznaranl@uni.pe to report any problems or bugs.
%

\NeedsTeXFormat{LaTeX2e}[2017/04/15]
% More information: https://www.latex-project.org/news/latex2e-news/
\ProvidesClass{testfcuni}[2018/05/04 V1.0 Introduction to convex analysis exercises LaTeX Class]
\LoadClass[12pt,addpoints,answers,a4paper]{exam}
% Clase heredado de exam.
% https://www.ctan.org/pkg/exam

\RequirePackage{concmath}
\RequirePackage{libertine}
\RequirePackage[spanish]{babel}
\spanishdatedel
\RequirePackage{graphicx}
\graphicspath{{../images/}}
\RequirePackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\pagecolor{Azure1}
\RequirePackage[theorems]{tcolorbox}
\RequirePackage[colorlinks=true,urlcolor=blue,linkcolor=black,anchorcolor=black,citecolor=black]{hyperref}
\RequirePackage{mathtools,amssymb,amsthm,mathrsfs,bm,times,dsfont}%bbold,,mathabx
\RequirePackage[makeroom]{cancel}
\RequirePackage{booktabs,longtable,array,multirow,rotating,multicol}
\RequirePackage{background}
\RequirePackage{float,subcaption}
\RequirePackage[font=scriptsize,labelfont=bf,tableposition = top, %labelformat = empty
]{caption}
\RequirePackage{xstring}
%\RequirePackage{xifthen} % Aún no se usará
\RequirePackage[symbol]{footmisc}
\footer{}{Página \thepage}{}
\RequirePackage{csquotes}
\RequirePackage{siunitx}
\sisetup{
	group-four-digits = true,
	group-separator = {,},
	table-auto-round
}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage[top = 1.5cm, bottom = 1.8cm, left = 2cm, right = 2cm, headsep = 2mm, headheight = 0.5cm, foot = 5mm, marginparwidth = 2cm, marginparsep = 5mm]{geometry}
%%%%%%%%%%%%%%%%%%%%%% Configuración de los detalles del PDF generado.
\hypersetup{pdfinfo={
			Title={Ejercicios de Introducción al análisis convexo 2019-1},
			Author={Carlos Aznarán Laos},
			Keywords={Conjuntos convexos, interior relativo.},
			Subject={Introducción al análisis convexo},
			Producer={TeXstudio 2.12.14},
			Creator={pdfTeX Version 3.14159265 TeX Live 2018 Debian}
		}}
\backgroundsetup{%
	scale=1,       %% change accordingly
	angle=0,       %% change accordingly
	opacity=.15,    %% change accordingly
	contents={\begin{tikzpicture}[remember picture,overlay]
				\node at ([yshift=11pt,xshift=5pt]current page.center) {\includegraphics[width=9.5cm]{logouni}};    %% yshift and xshift for example only
			\end{tikzpicture}}
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\MVAt}{{\usefont{U}{mvs}{m}{n}\symbol{`@}}}
\newcommand*\Eval[3]{\left.#1\right\rvert_{#2}^{#3}}
\newcommand*{\colorboxed}{}
\def\colorboxed#1#{%
\colorboxedAux{#1}%
}
\newcommand*{\colorboxedAux}[3]{%
	% #1: optional argument for color model
	% #2: color specification
	% #3: formula
	\begingroup
	\colorlet{cb@saved}{.}%
	\color#1{#2}%
	\boxed{%
		\color{cb@saved}%
		#3%
	}%
	\endgroup
}
% Más comandos:
\providecommand{\ene}{\mathbb{N}}
\DeclareMathOperator{\sign}{sign}
\DeclareMathOperator{\grad}{grad}
\DeclareMathOperator{\im}{Im}
\DeclareMathOperator{\nuc}{Nuc}
\DeclareMathOperator{\id}{Id}
%\DeclareMathOperator{\int}{Int}
\renewcommand{\solutiontitle}{\noindent\textbf{Solución:}\par\noindent}
\newcommand{\co}{, \text{ C: constante }}
\newcommand{\interior}[1]{{\kern0pt#1}^{\mathrm{o}}}
\newcommand*\diff{\mathop{}\!\mathrm{d}}
\newcommand{\ddef}{\buildrel \text{d{}ef}\over =}
\newcommand{\rn}[1][n]{%
	\IfEqCase{#1}{%
		{1}{\mathbb{R}}%
			{2}{\mathbb{R}^{2}}%
			{3}{\mathbb{R}^{3}}%
			{n}{\mathbb{R}^{n}}
			{#1}{\mathbb{R}^{#1}}
		% Puede agregar un número finito de casos más
	}%
}%
\newcommand{\df}[1][f]{%
	\IfEqCase{#1}{
		{f}{\mathcal{D}_{f}}
			{#1}{\mathcal{D}_{#1}}
	}
}
\newcommand{\inn}[2]{\left\langle#1,#2\right\rangle}
\newcommand{\abs}[1]{\left|#1\right|}
\newcommand{\nor}[1]{\left\|#1\right\|}

\ProcessOptions \relax % Para que se procesen heredados y se busque desde la clase memoir.