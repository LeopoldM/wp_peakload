\LoadClass[10pt]{article}


\usepackage[T1]{fontenc}
\usepackage{mathpazo}   % Palladio/Palatino-style text + Pazo math
\linespread{1.05}       % optional but usually matches the spacing in papers like this
\usepackage{microtype}  % better kerning/spacing (recommended)


\NeedsTeXFormat{LaTeX2e}
\usepackage{amsmath}
\usepackage{derivative}
\usepackage{colortbl,makecell}
\usepackage{mathrsfs}
\usepackage{lipsum}
\usepackage[utf8]{inputenc}
\usepackage[sectionbib]{natbib}
% \usepackage[french]{babel}
\usepackage{emptypage}
\usepackage{xcolor}
\usepackage{geometry}
\usepackage{amsthm}
\usepackage{setspace}
\usepackage{tikz}
\usepackage{booktabs} % For pretty tables
\usepackage{caption} % For caption spacing
\usepackage{graphicx}
\usepackage[all]{nowidow}
\usepackage{tikz}
\usepackage{multicol}
\usepackage{algpseudocode,algorithm,algorithmicx}
\usepackage[hidelinks,colorlinks=true,linkcolor=blue,citecolor=blue]{hyperref}
\usepackage{csquotes}
\usepackage{eurosym}
\usepackage{amssymb}
\usepackage{array,multirow}
% \usepackage{natbib} 
\usepackage{rotating}
\usepackage{relsize}
\usepackage{tikz}
\usetikzlibrary{er,positioning,bayesnet}
\tikzset{>=stealth}
\usetikzlibrary{arrows}
\usetikzlibrary{arrows.meta}
\usepackage{lscape}
\usetikzlibrary{arrows.meta, positioning}
\usepackage{mathtools}
\usepackage{accents}
\usepackage{subfiles} % 
\usepackage[utf8]{inputenc}
% \usepackage[italicdiff]{physics}
\usepackage{derivative}

\usepackage{bbm}
\usepackage{amsthm}
\usepackage{enumitem}
\usepackage{bbm}
\usepackage{amsmath}% http://ctan.org/pkg/amsmath
\usepackage [ short,nocomma ]{ optidef }
\usepackage[page,toc,titletoc,title]{appendix}
\usepackage{tocloft}
\usepackage{chapterbib}
\usepackage{titletoc}
\usepackage{standalone}
\usepackage{layout}
\usepackage{subfig}
\usepackage[most]{tcolorbox}
\usepackage{afterpage}
\usepackage{upgreek}

\usetikzlibrary{positioning}
\usetikzlibrary{positioning}

%%%%%%%%%%%%%


\setlength{\parskip}{0.25 cm}
\onehalfspacing

%%%%%%%%%%%%%

\pagestyle{plain}
 
%%%%%%%%%%%%%


\tcbset {
  base/.style={
    arc=0mm, 
    bottomtitle=0.5mm,
    boxrule=0mm,
    colbacktitle=brandblue!10!white, 
    coltitle=black, 
    fonttitle=\bfseries, 
    left=2.5mm,
    leftrule=1mm,
    right=3.5mm,
    title={#1},
    toptitle=0.75mm, 
  }
}

\definecolor{brandblue}{rgb}{0.34, 0.7, 1}
\newtcolorbox{mainbox}[1]{
  colframe=brandblue, 
  base={#1},
  enlarge bottom by=1cm,
  enlarge top by=0.5cm,
  colback=blue!1
}

\newtcolorbox{subbox}[1]{
  colframe=brandblue!30!white,
  base={#10}
}
%%%%%%%%%%%%%


\newcommand\Chapter[2]{
  \chapter[#1: {#2}]{#1\\\smaller#2}
}

%%%%%%%%%%%%%

\newcommand{\addstrut}[1]{\vcenter{\hbox{\rule{0pt}{#1}}}}
\newcommand{\ubar}[1]{\underaccent{\bar}{#1}}

\renewcommand{\thesection}{\arabic{section}}
 \DeclareMathOperator*{\argmax}{arg\,max} 
%%%%%%%%%%%%%

\newtheoremstyle{break}
  {\topsep}{\topsep}%
  {\itshape}{}%
  {\bfseries}{}%
  {\newline}{}%  
\theoremstyle{break}
\theoremstyle{plain}
\newtheorem{thm}{Theorem}
\newtheorem{example}{Example}
\newtheorem{lemma}{Lemma}
\newtheorem{corollary}{Corollary}
\newtheorem{proposition}{Proposition}
\newtheorem{claim}{Claim}
\newtheorem{definition}{Definition}
\newtheorem{assumption}{Assumption}
\newtheorem{remarks}{Remarks}
\newtheorem{theorem}{Theorem}


\newcommand{\Cov}{\mathrm{Cov}}
\newcommand{\E}{\mathbb{E}}
\newcommand{\sign}{\textnormal{sign}}
\newcommand{\G}{\mathcal{G}}

\newcommand{\co}{\textnormal{co}\;}





%%%%%%%%%%%


 
\usetikzlibrary{positioning}

% \newcommand{\addstrut}[1]{\vcenter{\hbox{\rule{0pt}{#1}}}}

% \newcommand{\ubar}[1]{\underaccent{\bar}{#1}}
% \newtheorem{lemma}{Lemma}
\usepackage [ short,nocomma ]{ optidef }


\newtheoremstyle{break}
  {\topsep}{\topsep}%
  {\itshape}{}%
  {\bfseries}{}%
  {\newline}{}%
\theoremstyle{break}
\newtheorem{propositionbk}{Proposition}
\newtheorem{corollarybk}{Corollary}

\theoremstyle{plain}
% \newtheorem{proposition}{Proposition}
% \newtheorem{corollary}{Corollary}
% \newtheorem{claim}{Claim}
% \newtheorem{definition}{Definition}
% \newtheorem*{assumption}{Assumption}

% Mise en page

\DeclareOption{runningheads}{\let\if@runhead\iftrue}
\ProcessOptions
\providecommand\phantomsection{}

\def\abstractname{Abstract.}
\def\andname{and}
\def\lastandname{\unskip, and}
\def\keywordname{{\bf Keywords:}}

\newcounter {chapter}


% LaTeX does not provide a command to enter the authors institute
% addresses. The \institute command is defined here.

\newcounter{@inst}
\newcounter{@auth}
\newcounter{auco}
\newdimen\instindent
\newbox\authrun
\newtoks\authorrunning
\newtoks\tocauthor
\newbox\titrun
\newtoks\titlerunning
\newtoks\toctitle

\def\clearheadinfo{\gdef\@author{No Author Given}%
                   \gdef\@title{No Title Given}%
                   \gdef\@subtitle{}%
                   \gdef\@institute{No Institute Given}%
                   \gdef\@thanks{}%
                   \global\titlerunning={}\global\authorrunning={}%
                   \global\toctitle={}\global\tocauthor={}}

\def\institute#1{\gdef\@institute{#1}}

\def\institutename{\par
 \begingroup
 \parskip=\z@
 \parindent=\z@
 \setcounter{@inst}{1}%
 \def\and{\par\stepcounter{@inst}%
 \noindent$^{\the@inst}$\enspace\ignorespaces}%
 \setbox0=\vbox{\def\thanks##1{}\@institute}%
 \ifnum\c@@inst=1\relax
   \gdef\fnnstart{0}%
 \else
   \xdef\fnnstart{\c@@inst}%
   \setcounter{@inst}{1}%
   \noindent$^{\the@inst}$\enspace
 \fi
 \ignorespaces
 \@institute\par
 \endgroup}

\def\@fnsymbol#1{\ensuremath{\ifcase#1\or\star\or{\star\star}\or
   {\star\star\star}\or \dagger\or \ddagger\or
   \mathchar "278\or \mathchar "27B\or \|\or **\or \dagger\dagger
   \or \ddagger\ddagger \else\@ctrerr\fi}}

\def\inst#1{\unskip$^{#1}$}
\def\orcidID#1{\unskip$^{[#1]}$} % added MR 2018-03-10
\def\fnmsep{\unskip$^,$}
\def\email#1{{\tt#1}}

\AtBeginDocument{\@ifundefined{url}{\def\url#1{#1}}{}%
\providecommand{\keywords}[1]{\def\and{{\textperiodcentered} }%
\par\addvspace\baselineskip
\noindent\keywordname\enspace\ignorespaces#1}%
\@ifpackageloaded{hyperref}{%
\def\doi#1{\href{https://doi.org/#1}{https://doi.org/#1}}}{
\def\doi#1{https://doi.org/#1}}
}
\def\homedir{\~{ }}

\def\subtitle#1{\gdef\@subtitle{#1}}
\clearheadinfo
%
%
%%% to avoid hyperref warnings
\providecommand*{\toclevel@author}{999}
%%% to make title-entry parent of section-entries
\providecommand*{\toclevel@title}{0}
%

%
\def\@maketitle{\newpage
 \markboth{}{}%
 \def\lastand{\ifnum\value{@inst}=2\relax
                 \unskip{} \andname\
              \else
                 \unskip \lastandname\
              \fi}%
 \def\and{\stepcounter{@auth}\relax
          \ifnum\value{@auth}=\value{@inst}%
             \lastand
          \else
             \unskip,
          \fi}%
 \begin{center}%
 \let\newline\\
 {\Large \bfseries\boldmath
  \pretolerance=10000
  \@title \par}\vskip .8cm
\if!\@subtitle!\else {\large \bfseries\boldmath
  \vskip -.65cm
  \pretolerance=10000
  \@subtitle \par}\vskip .8cm\fi
 \setbox0=\vbox{\setcounter{@auth}{1}\def\and{\stepcounter{@auth}}%
 \def\thanks##1{}\@author}%
 \global\value{@inst}=\value{@auth}%
 \global\value{auco}=\value{@auth}%
 \setcounter{@auth}{1}%
{\lineskip .5em
\noindent\ignorespaces
\@author\vskip.35cm}
 {\small\institutename}
 \end{center}%
 }



    {\endlist}

\newdimen\headlineindent             % dimension for space between
\headlineindent=1.166cm              % number and text of headings.


\endinput
%end of file llncs.cls


% Block colors
\colorlet{normalTitleBlockColor}{mainColor1}
\colorlet{normalBlockColor}{mainColor2}
\colorlet{exampleTitleBlockColor}{airforceblue}
\colorlet{exampleBlockColor}{aliceblue}
\colorlet{alertTitleBlockColor}{carnelian}
\colorlet{alertBlockColor}{melon}
	% Blocks:
\colorlet{blockTitleTextColor}{white}
\colorlet{blockBodyTextColor}{black}

% --------------------------------------------------- %
%                        Blocks                       %
% --------------------------------------------------- %
\setbeamertemplate{blocks}[rectangle]

\setbeamercolor*{block title}{
  fg=blockTitleTextColor,
  bg=normalTitleBlockColor}
\setbeamercolor*{block body}{
  fg=blockBodyTextColor,
  bg=normalBlockColor}

\setbeamercolor*{block title alerted}{
  fg=blockTitleTextColor,
  bg=alertTitleBlockColor}
\setbeamercolor*{block body alerted}{
  fg=blockBodyTextColor,
  bg=alertBlockColor}

\setbeamercolor*{block title example}{
  fg=blockTitleTextColor,
  bg=exampleTitleBlockColor}
\setbeamercolor*{block body example}{
  fg=blockBodyTextColor,
  bg=exampleBlockColor}

\setbeamerfont{block title}{size={}}

\AtBeginEnvironment{block}{%
  \setbeamercolor{itemize item}{fg=normalTitleBlockColor!70}
}
\AtBeginEnvironment{exampleblock}{%
  \setbeamercolor{itemize item}{fg=exampleTitleBlockColor!70}
}
\AtBeginEnvironment{alertblock}{%
  \setbeamercolor{itemize item}{fg=alertTitleBlockColor!70}
}