%%%%%%%%%%%%%%%%%
% sescv.cls (v0.0.1, 05 April 2018) written by
% Syed Ehab Shah (shah.ehab@protonmail.com)
%%%%%%%%%%%%%%%%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2003/12/01 or later.
%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{sescv}[2018/04/03 v0.0.1, my personal resume template class inspired by AltaCV]

\LoadClass{extarticle}

\RequirePackage[margin=2cm]{geometry}
\RequirePackage{fontawesome}


\RequirePackage{xcolor}

\colorlet{all}{black}
\colorlet{body}{black!60!white}
\newcommand{\itemmarker}{{\small\textbullet}}
\newcommand{\ratingmarker}{\faCircle}

\RequirePackage{dashrule}

\RequirePackage{enumitem}
\setlist{leftmargin=*,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vskip0.25\baselineskip}
\setlist[itemize]{label=\itemmarker}

\RequirePackage{etoolbox}
\RequirePackage{changepage}


\setlength{\parindent}{0pt}
\newcommand{\divider}{\textcolor{body}{\hdashrule{\linewidth}{0.6pt}{0.5ex}}\medskip}
\newenvironment{fullwidth}{%
  \begin{adjustwidth}{}{\dimexpr-\marginparwidth-\marginparsep\relax}}
  {\end{adjustwidth}}
  
\newcommand{\emailsymbol}{\faAt}
\newcommand{\phonesymbol}{\faPhone}
\newcommand{\locationsymbol}{\faMapMarker}
\newcommand{\linkedinsymbol}{\faLinkedin}
\newcommand{\githubsymbol}{\faGithub}



\newcommand{\printinfo}[2]{\hbox{\textcolor{all}{#1}\hspace{0.5em}#2\hspace{2em}}}
\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\email}[1]{\printinfo{\emailsymbol}{#1}}
\newcommand{\phone}[1]{\printinfo{\phonesymbol}{#1}}
\newcommand{\linkedin}[1]{\printinfo{\linkedinsymbol}{#1}}
\newcommand{\github}[1]{\printinfo{\githubsymbol}{#1}}
\newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}
\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}

\newcommand{\printresumedatabits}{
  \begingroup
    {\begin{minipage}{\linewidth}
    \raggedright\color{all}
    {\Huge\bfseries\MakeUppercase{\@name}}
    \medskip
        {\footnotesize\bfseries\@personalinfo}
     \end{minipage}\hfill
    \begin{minipage}

    \end{minipage}}
  \endgroup
  \medskip
}
\newcommand{\cvtitle}[2][]{%
  \bigskip%
  \ifstrequal{#1}{}{}{\marginpar{\vspace*{\dimexpr1pt-\baselineskip}\raggedright\input{#1}}}%
  {\color{all}\LARGE\bfseries\MakeUppercase{#2}}\\[-1ex]%
  {\color{all}\rule{\linewidth}{2pt}\par}\medskip
}
\newcommand{\cvsubtitle}[1]{%
  \smallskip%
  {\color{all}\large\bfseries{#1}\par}\medskip
}
\newcommand{\cvpoint}[4]{%
  {\large\color{all}#1\par}
  \smallskip
  \textbf{\color{all}#2}\par
  \smallskip
  {\small\makebox[0.5\linewidth][l]{\faCalendar \hspace{0.5em}\color{body}#3}%
  \ifstrequal{#4}{}{}{\hfill\hspace\makebox{\faMapMarker\hspace{0.5em}\color{body}#4}}\par}
  \medskip
}
\newcommand{\cvskill}[1]{%
  {\small\color{all}#1\par}
  \smallskip
}
\newcommand{\makecvfooter}[2]{%
\begin{center}
  {\footnotesize\color{all}#1\par}
  \footnotesize\textbf{\color{body}#2}\par
 \end{center}
}


