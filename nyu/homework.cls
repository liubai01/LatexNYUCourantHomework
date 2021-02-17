\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nyu/homework}[2020/02/16 Yintao, Xu's template]

% General Layout
\LoadClass[12pt, a4paper]{article}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{multicol} % for header

% mathematical packages
\RequirePackage{amsmath, amssymb, amsthm}
\RequirePackage{mathtools}

% about alignment issues
\RequirePackage{microtype}
\RequirePackage{parskip}

% about encoding
% fontenc: https://tex.stackexchange.com/questions/44694/fontenc-vs-inputenc/44699
\RequirePackage[T1]{fontenc}
% inputenc: https://tex.stackexchange.com/questions/370278/is-there-any-reason-to-use-inputenc
\RequirePackage[utf8]{inputenc} 

\counterwithin{equation}{section} % reset equation counter for each section

% marcos
\def \@nyuemail {xx0000@nyu.edu}
\newcommand\nyuemail[1]{
 \def \@nyuemail {#1}
}

\def \@coursename {Course Name}
\newcommand\coursename[1]{
 \def \@coursename {#1}
}

\def \@hwname {Homework Name}
\newcommand\hwname[1]{
 \def \@hwname {#1}
}

\def \@netid {xx0000}
\newcommand\netid[1]{
 \def \@netid {#1}
}

\def \@uid {N00000000}
\newcommand\uid[1]{
 \def \@uid {#1}
}

% re-maketitle
\renewcommand\maketitle{
\raggedright
\begin{center}
    {\Large \bfseries \@coursename}\\[1ex] 
    {\Large \@hwname}\\[4ex] 
    
    \begin{multicols}{2}
        {\large \@author}\\[1ex] 
        {\emph{\@nyuemail}}\\
    \columnbreak
        {\textbf{Date:} \@date}\\[0.5ex]
        {\textbf{\#NetID}: \@netid} \\[0.5ex]
        {\textbf{\#UID}: \@uid}
    \end{multicols}

\end{center}

}

% header
\pagestyle{fancy}
\lhead{\hspace*{-0.4cm}\includegraphics[scale=0.36]{nyu/logo-courant.pdf}} 
\chead{}
\rhead{
\@coursename \\[0.3ex] 
\small \@hwname (\@author)
}
\setlength{\headheight}{40pt}
\renewcommand{\headrulewidth}{0pt}

