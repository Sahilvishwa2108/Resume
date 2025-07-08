%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Modern ATS-Compliant Resume Class
% Optimized for both visual appeal and ATS parsing
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2025/06/16 v2.0 Modern ATS Resume class]

\LoadClass[10pt,letterpaper]{article} % Smaller font for single page

% Essential packages for modern design
\usepackage[parfill]{parskip} 
\usepackage{array} 
\usepackage{ifthen} 
\usepackage{enumitem} % Better list control
\usepackage{tabularx} % Better table formatting
\usepackage{calc} % For calculations
\usepackage{amsmath} % For \boldsymbol and math symbols
\usepackage{xcolor} % For color definitions

% Hyperlink setup - ATS compliant with improved visibility
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    urlcolor=blue!60!black,
    linkcolor=blue!60!black,
    filecolor=blue!60!black,
    pdfborder={0 0 0},
    pdftitle={Sahil Vishwakarma - Resume},
    pdfauthor={Sahil Vishwakarma},
    pdfsubject={Software Engineer Resume},
    pdfkeywords={Software Engineer, Full Stack Developer, JavaScript, React, Node.js}
}

\pagestyle{empty} % No page numbers for ATS

%----------------------------------------------------------------------------------------
% CUSTOM COMMANDS FOR HIGHLIGHTING
%----------------------------------------------------------------------------------------
% Command for highlighting technical keywords with slightly smaller font
\newcommand{\techkw}[1]{\textbf{\small #1}}

%----------------------------------------------------------------------------------------
% CUSTOM SPACING AND SIZING
%----------------------------------------------------------------------------------------
\def\namesize{\Huge\bfseries} % Even larger and bolder name for maximum prominence
\def\titlesize{\large\itshape} % Medium subtitle with elegant styling
\def\sectionsize{\normalsize\bfseries} % Section headers
\def\subsectionsize{\normalsize\bfseries} % Subsection headers

% Tight spacing definitions for single page
\def\nameskip{\vspace{1pt}}
\def\sectionskip{\vspace{2pt}}
\def\subsectionskip{\vspace{1pt}}
\def\itemskip{\vspace{0pt}}

%----------------------------------------------------------------------------------------
% HEADER FORMATTING
%----------------------------------------------------------------------------------------
\def \name#1{\def\@name{#1}}
\def \@name {}

\def \jobtitle#1{\def\@jobtitle{#1}}
\def \@jobtitle {}

\def \email#1{\def\@email{#1}}
\def \@email {}

\def \phone#1{\def\@phone{#1}}
\def \@phone {}

\def \location#1{\def\@location{#1}}
\def \@location {}

\def \linkedin#1{\def\@linkedin{#1}}
\def \@linkedin {}

\def \github#1{\def\@github{#1}}
\def \@github {}

\def \leetcode#1{\def\@leetcode{#1}}
\def \@leetcode {}

\def \portfolio#1{\def\@portfolio{#1}}
\def \@portfolio {}

% Modern compact header layout
\def \printheader {
  \begin{center}
    % Large, prominent name
    {\namesize \@name}
    
    \vspace{2pt}
    
    % Contact info in two well-spaced lines with modern typography
    {\small
      \ifx\@email\empty\else
        \textbf{\href{mailto:\@email}{\@email}}
      \fi
      \ifx\@phone\empty\else
        \ $\boldsymbol{\cdot}$ \textbf{\href{tel:\@phone}{\@phone}}
      \fi
      \ifx\@location\empty\else
        \ $\boldsymbol{\cdot}$ \textbf{\href{https://www.google.com/maps/search/\@location}{\@location}}
      \fi
      \\[2pt]
      \ifx\@linkedin\empty\else
        \href{\@linkedin}{\textbf{linkedin.com/in/sahilvishwa2108}}
      \fi
      \ifx\@github\empty\else
        \ $\boldsymbol{\cdot}$ \href{\@github}{\textbf{github.com/Sahilvishwa2108}}
      \fi
      \ifx\@portfolio\empty\else
        \ $\boldsymbol{\cdot}$ \href{https://\@portfolio}{\textbf{Portfolio}}
      \fi      \ifx\@leetcode\empty\else
        \ $\boldsymbol{\cdot}$ \href{\@leetcode}{\textbf{LeetCode}}
      \fi
    }
  \end{center}
  
  \vspace{3pt}
}

%----------------------------------------------------------------------------------------
% SECTION FORMATTING
%----------------------------------------------------------------------------------------
\newenvironment{rSection}[1]{
  \vspace{3pt}
  {\sectionsize #1}
  \vspace{1pt}
  \hrule height 0.4pt
  \vspace{3pt}
  \begin{list}{}{
    \setlength{\leftmargin}{0em}
    \setlength{\itemsep}{0pt}
    \setlength{\parsep}{0pt}
    \setlength{\parskip}{0pt}
  }
  \item[]
}{
  \end{list}
  \vspace{2pt}
}

%----------------------------------------------------------------------------------------
% EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------
\newenvironment{rExperience}[4]{
  \textbf{#1} \hfill \textbf{#2}\\
  \textit{#3} \hfill \textit{#4}
  \vspace{1pt}
  \begin{itemize}[leftmargin=12pt, itemsep=0pt, parsep=0pt]
}{
  \end{itemize}
  \vspace{3pt}
}

%----------------------------------------------------------------------------------------
% EDUCATION FORMATTING
%----------------------------------------------------------------------------------------
\newenvironment{rEducation}[4]{
  \textbf{#1} \hfill \textbf{#2}\\
  #3 \hfill #4
  \vspace{2pt}
}{
}

%----------------------------------------------------------------------------------------
% PROJECT FORMATTING
%----------------------------------------------------------------------------------------
\newenvironment{rProject}[3]{  \textbf{#1} \hfill \textit{\href{#2}{GitHub} $\boldsymbol{\cdot}$ \href{#3}{Demo}}
  \vspace{0pt}
  \begin{itemize}[leftmargin=12pt, itemsep=0pt, parsep=0pt]
}{
  \end{itemize}
  \vspace{4pt}
}

%----------------------------------------------------------------------------------------
% SKILLS FORMATTING
%----------------------------------------------------------------------------------------
% Simple skills formatting - no complex tables for better ATS compatibility

%----------------------------------------------------------------------------------------
% DOCUMENT SETUP
%----------------------------------------------------------------------------------------
\let\ori@document=\document
\renewcommand{\document}{
  \ori@document
  \printheader
}
