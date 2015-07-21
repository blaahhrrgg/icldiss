%%
%% This is file `icldt.cls',
%% 
%% ///////////////////////////////////////////////////////////////////
%% 
%% This documentclass `icldt' is based on the documentclass `icldt'
%% from Daniel Wagner (www.PrettyPrinting.net) that is based on the 
%% class `scrreprt' from the Koma-script package.
%%
%% It uses the packages `geometry' and `setspace' to fullfill the 
%% requirements for dissertations of Imperial College London.
%% 
%% ///////////////////////////////////////////////////////////////////
%% 
%% Copyright (c) 2007, Daniel Wagner, www.PrettyPrinting.net
%% Copyright (c) 2015, Joseph Maestri
%% 
%% Permission is hereby granted, free of charge, to any person
%% obtaining a copy of this documentclass and associated
%% documentation files (the "Template"), to deal in the Template
%% without restriction, including without limitation the rights to
%% use, copy, modify, merge, publish, distribute, sublicense,
%% and/or sell copies of the Template, and to permit persons to
%% whom the Template is furnished to do so, subject to the
%% following conditions:
%% 
%% The above copyright notice and this permission notice shall be
%% included in all copies or substantial portions of the Template.
%% 
%% THE TEMPLATE IS PROVIDED ``AS IS'', WITHOUT WARRANTY OF ANY KIND,
%% EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
%% OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
%% NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
%% HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
%% WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
%% FROM, OUT OF OR IN CONNECTION WITH THE TEMPLATE OR THE USE OR
%% OTHER DEALINGS IN THE TEMPLATE.
%% 
%% ///////////////////////////////////////////////////////////////////
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{icldt}
    [2015/05/01 v1.0 Imperial College London Dissertation Template]



\newcommand*{\@supervisor}{}
\newcommand*{\@university}{}
\newcommand*{\@college}{Imperial College London}
\newcommand*{\@department}{}
\newcommand*{\@field}{}
\newcommand*{\@degree}{}
\newcommand*{\@diploma}{}
\newcommand*{\@declareoriginality}{}
\newcommand*{\@declarecopyright}{}
\newcommand*{\@acknowledgements}{}
\DeclareOption{university}{%
 \renewcommand{\@university}{University of London}}
\DeclareOption{imperial}{%
 \let\@university\empty}
\DeclareOption{PhD}{%
 \renewcommand{\@degree}{Doctor of Philosophy}
 \renewcommand{\@diploma}{Diploma of Imperial College London}}
\DeclareOption{MSc}{%
 \renewcommand{\@degree}{Master of Science}\let\@diploma\empty}
\DeclareOption{BSc}{%
 \renewcommand{\@degree}{Bachelor of Science}\let\@diploma\empty}
\DeclareOption{DIC=off}{%
 \let\@diploma\empty}
\DeclareOption{DIC=on}{%
 \renewcommand{\@diploma}{Diploma of Imperial College London}}
\DeclareOption{doublespacing}{\AtBeginDocument{\doublespacing}}
\DeclareOption{onehalfspacing}{\AtBeginDocument{\onehalfspacing}}
\DeclareOption{titlepagenumber=off}{%
 \AtEndOfClass{\renewcommand{\titlepagestyle}{empty}}}
\DeclareOption{titlepagenumber=on}{%
 \AtEndOfClass{\renewcommand{\titlepagestyle}{plain}}}
\DeclareOption{paper=a4}{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\DeclareOption{11pt}{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\DeclareOption{oneside}{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ExecuteOptions{onehalfspacing,titlepagenumber=off,imperial,PhD,paper=a4,pagesize=auto,12pt,oneside}
\ProcessOptions\relax
\LoadClass[pagesize=auto]{scrreprt}
\RequirePackage{setspace}
%\RequirePackage[left=4.2cm,right=4.2cm,top=2.97cm,bottom=5.94cm]%
% {geometry}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\college}[1]{\gdef\@college{#1}}
\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand*{\field}[1]{\gdef\@field{#1}}
\newcommand*{\declareoriginality}[1]{\gdef\@declareoriginality{#1}}
\newcommand*{\declarecopyright}[1]{\gdef\@declarecopyright{#1}}
\newcommand*{\acknowledgements}[1]{\gdef\@acknowledgements{#1}}
\setkomafont{sectioning}{\rmfamily\bfseries}

\renewcommand*{\maketitle}{
\begin{titlepage}
 \par
 \clearpage
 \thispagestyle{\titlepagestyle}
 \null\vfill
 \noindent\begin{minipage}[b]{\textwidth}
 \centering \sc \Huge
 \@title \par
 \end{minipage}
 \null \vfill
 \noindent\begin{minipage}[b]{\textwidth}
  \centering \sc \small
  Submitted in part fulfilment of the \\ requirements for the degree of\\
  \@degree\ of
  \ifx\empty\@university{\@college}\else{the \@university}\fi
  \ifx\@diploma\@empty\else{\\and the\\ \@diploma}\fi\ \\
	by
 \end{minipage}
 \null \vfill
 \noindent\begin{minipage}[b]{\textwidth}
	\centering \sc \Large
	\@author \par
 \end{minipage}
 \null \vfill
 \noindent\begin{minipage}[t]{\textwidth}
  \centering\small\sc
  \ifx\@department\@empty \else \par Department of \@department\fi \\
  \ifx\@university\@empty \else \@university\par\fi
  \@college
	\vskip 3em
	\@date \par
 \end{minipage}
\end{titlepage}
}

\newcommand{\makedeclaration}{
 \ifx\@declaration\@empty \else{
 \thispagestyle{plain}
 \chapter*{Declaration of Originality}
 \@declareoriginality
 \par\vspace{3cm}
 \hfill \@author
 \par \hfill \@date
 }\fi
}
\newcommand{\makecopyright}{
 \ifx\@declarecopyright\@empty \else
 \thispagestyle{plain}
 \chapter*{Copyright Declaration}
 \thispagestyle{plain}
 \@declarecopyright
 \fi
}
\newcommand{\makeacknowledgements}{
 \ifx\@acknowledgements\@empty \else
 \thispagestyle{plain}
 \null\vfill
 \chapter*{Acknowledgements}
 \@acknowledgements
 \vskip \z@ \@plus3fill
 \fi
}

\renewenvironment{abstract}{%
\chapter*{Abstract}\thispagestyle{plain}}{\cleardoublepage}
\endinput
%%
%% End of file `icldt.cls'.
