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

% Hyperlink setup - ATS compliant
\usepackage{hyperref}
\hypersetup{
    colorlinks=false,
    pdfborder={0 0 0},
    urlcolor=black,
    linkcolor=black,
    filecolor=black,
    pdftitle={Sahil Vishwakarma - Resume},
    pdfauthor={Sahil Vishwakarma},
    pdfsubject={Software Engineer Resume},
    pdfkeywords={Software Engineer, Full Stack Developer, JavaScript, React, Node.js}
}

\pagestyle{empty} % No page numbers for ATS

%----------------------------------------------------------------------------------------
% CUSTOM SPACING AND SIZING
%----------------------------------------------------------------------------------------
\def\namesize{\Large\bfseries} % Reduced name size
\def\titlesize{\normalsize} % Smaller job title
\def\sectionsize{\normalsize\bfseries} % Smaller section headers
\def\subsectionsize{\normalsize\bfseries} % Subsection headers

% Tight spacing definitions for single page
\def\nameskip{\vspace{2pt}}
\def\sectionskip{\vspace{4pt}}
\def\subsectionskip{\vspace{2pt}}
\def\itemskip{\vspace{1pt}}

%----------------------------------------------------------------------------------------
% HEADER FORMATTING
%----------------------------------------------------------------------------------------
\def \name#1{\def\@name{#1}}
\def \@name {}

\def \jobtitle#1{\def\@jobtitle{#1}}
\def \@jobtitle {}

\def \contactinfo#1{\def\@contactinfo{#1}}
\def \@contactinfo {}

% Modern header layout
\def \printheader {
  \begin{center}
    {\namesize \@name}
    \vspace{1pt}
    
    \ifx\@jobtitle\empty\else
      {\titlesize \@jobtitle}
      \vspace{1pt}
    \fi
    
    {\@contactinfo}
    \vspace{4pt}
    \hrule height 0.5pt
    \vspace{4pt}
  \end{center}
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
\newenvironment{rProject}[2]{
  \textbf{#1} \hfill \textit{#2}
  \vspace{0pt}
  \begin{itemize}[leftmargin=12pt, itemsep=0pt, parsep=0pt]
}{
  \end{itemize}
  \vspace{2pt}
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
