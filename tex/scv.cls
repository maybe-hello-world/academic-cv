\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{scv}[2022/10/22 Simple CV Template]

\LoadClass[letterpaper,11pt]{article}

\RequirePackage{graphicx}
\RequirePackage{graphics}
\RequirePackage{ulem}
\RequirePackage{latexsym}
\RequirePackage[empty]{fullpage}
\RequirePackage{titlesec}
\RequirePackage{marvosym}
\RequirePackage{tabularx}
\RequirePackage[usenames,dvipsnames]{color}
\RequirePackage{verbatim}
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage[english]{babel}
\RequirePackage{soul}
\RequirePackage{setspace}
\RequirePackage{ragged2e}
\RequirePackage{tabulary}
\RequirePackage{fontawesome5}
\RequirePackage{multicol}

\setlength{\multicolsep}{-3.0pt}
\setlength{\columnsep}{-1pt}
\input{glyphtounicode}


%----------FONT OPTIONS----------
% sans-serif
% \RequirePackage[sfdefault]{FiraSans}
% \RequirePackage[sfdefault]{roboto}
% \RequirePackage[sfdefault]{noto-sans}
% \RequirePackage[default]{sourcesanspro}

% serif
% \RequirePackage{CormorantGaramond}
% \RequirePackage{charter}
% \RequirePackage{cmbright}


\setlength{\footskip}{5pt}

\pagestyle{fancy}
\fancyhf{}
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Adjust margins
\addtolength{\oddsidemargin}{-0.2in}
\addtolength{\evensidemargin}{-0.7in}
\addtolength{\textwidth}{0.4in}
\addtolength{\topmargin}{-.6in}
\addtolength{\textheight}{1.2in}


\renewcommand{\ULdepth}{3.8pt}
\urlstyle{same}

\raggedbottom
\raggedright
\setlength{\tabcolsep}{0in}

% Sections formatting
\titleformat{\section}{
  \vspace{-4pt}\raggedright\large\bfseries
}{}{0em}{}[\color{black}\titlerule \vspace{-5pt}]

% Ensure that generate pdf is machine readable/ATS parsable
\pdfgentounicode=1

%-------------------------
% Custom commands
\newcommand{\resumePublications}{
  \renewcommand{\refname}{Selected Publications}
  \bibliographystyle{plainyr-rev}
  \bibliography{publications}
}

\newcommand{\resumeItemWithText}[2]{
  \item{
    {\textbf{#1}\\\textit{#2}}
  }
}
\newcommand{\resumeItem}[1]{
  \item{{#1 \vspace{-4pt}}}
}

\newcommand{\classesList}[4]{
    \item\small{
        {#1 #2 #3 #4 \vspace{-2pt}}
  }
}

\newcommand{\resumeSubheading}[4]{
  \vspace{-2pt}\item
    \begin{tabular*}{1.0\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & \textbf{\small #2} \\
      \textit{\small#3} & \textit{\small #4} \\
    \end{tabular*}\vspace{-7pt}
}

\newcommand{\resumeSubheadingWithText}[5]{
  \vspace{-0pt}\item
    \begin{tabular*}{1.0\textwidth}[t]{l@{\extracolsep{\fill}}r}
      \textbf{#1} & \textbf{\small #2} \\
      \textit{\small #3} & \textit{\small #4} \\
      \multicolumn{2}{l}{
        \begin{minipage}[t]{\linewidth}
          {\small #5}%
        \end{minipage}
      }\\
    \end{tabular*}\vspace{-7pt}
}

\newcommand{\resumeSubSubheading}[2]{
    \item
    \begin{tabular*}{0.97\textwidth}{l@{\extracolsep{\fill}}r}
      \textit{\small#1} & \textit{\small #2} \\
    \end{tabular*}\vspace{-7pt}
}

\newcommand{\resumeProjectHeading}[2]{
    \item
    \begin{tabular*}{1.001\textwidth}{l@{\extracolsep{\fill}}r}
      \small#1 & \textbf{\small #2}\\
    \end{tabular*}\vspace{-7pt}
}

\newcommand{\resumeSubItem}[1]{\resumeItem{#1}\vspace{-4pt}}

\renewcommand\labelitemi{$\vcenter{\hbox{$\bullet$}}$}
\renewcommand\labelitemii{$\vcenter{\hbox{$\bullet$}}$}

\newcommand{\resumeSubHeadingListStart}{\begin{itemize}[leftmargin=0.0in, label={}]}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}
\newcommand{\resumeItemListStart}{\begin{itemize}}
\newcommand{\resumeItemListEnd}{\end{itemize}\vspace{-5pt}}

\newcommand{\resumeHeader}[6]{
  \begin{center}
    {\Huge \scshape #1} \\ \vspace{1pt}

    \def\param{#2}%
    \ifx\param\empty
      %
    \else
      \small \raisebox{-0.2\height}\faPhone\ \uline{#2} ~
    \fi
    \def\param{#3}%
    \ifx\param\empty
      %
    \else
      \href{mailto:#3}{\raisebox{-0.2\height}\faEnvelope\  \underline{#3}} ~
    \fi
    \\
    \vspace{3pt}
    \def\param{#4}%
    \ifx\param\empty
      %
    \else
      \href{https://#4}{\raisebox{-0.2\height}\Mundus\ \underline{#4}}  ~
    \fi
    \def\param{#5}%
    \ifx\param\empty
      %
    \else
      \href{https://github.com/#5/}{\raisebox{-0.2\height}\faGithub\ \underline{#5}} ~
    \fi
    \def\param{#6}%
    \ifx\param\empty
      %
    \else
      \href{https://www.linkedin.com/in/#6/}{\raisebox{-0.2\height}\faLinkedinIn\ \underline{#6}}
    \fi
  \end{center}
}

\def\resumeSkillListStart#1\resumeSkillListEnd{\begin{tabular*}{1.0\textwidth}{p{0.25\linewidth}@{\extracolsep{\fill}}p{0.75\linewidth}}#1\end{tabular*}}
\newcommand{\resumeSkillItem}[2]{\textbf{#1} & #2 \\}