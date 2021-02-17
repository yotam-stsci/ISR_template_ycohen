% STScI Report class file
% Created by Nicholas Earl (nearl@stsci.edu)
% Updated 2014/08/15

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stsci_report}[2014/08/04 STScI Report LaTeX class by Nicholas Earl]
\LoadClass[12pt]{article}

\RequirePackage[left=1in,right=1in,top=1in,bottom=1in]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{titling}
\RequirePackage{fancyhdr}


\renewcommand\headrule{}
\g@addto@macro{\maketitle}{\thispagestyle{fancy}}

% Format spacing
\setlength{\droptitle}{-2.5cm}

% Create a pre-title command
\newcommand{\presubtitle}[1]{%
  \pretitle{%
    \par
    \begin{flushright}
    \large\textbf{#1}
    \vskip0.5em\Huge
    }%
}

% Create copyright command
\newcommand{\copyrighttext}[1]{%
  \lfoot{\footnotesize #1}
  \cfoot{}
  \rfoot{}
}

% Create abstract command
\renewcommand{\abstract}[1]{%
    \par
    \begin{flushleft}
    \noindent\makebox[\linewidth]{\rule{\textwidth}{1.0pt}}
    \vskip0.5em
    \textsc{Abstract}
    \vskip0.5em
    \textit{#1}
    \vskip0.5em
    \noindent\makebox[\linewidth]{\rule{\textwidth}{1.0pt}}
    \vskip0.5em
    \end{flushleft}%
}

% Generate title information
\posttitle{\end{flushright} \begin{flushright} \rule{5cm}{0.5pt} \end{flushright}}
\preauthor{\begin{flushright}} % makes author flush right
\postauthor{\end{flushright}}
\predate{\begin{flushright}} % makes date title flush right
\postdate{\end{flushright}}

