% (c) 2003-2010 Samuel Tesla <samuel.tesla@gmail.com>
% http://www.alieniloquent.com/

\ProvidesClass{resume}

\RequirePackage{tabularx}

\LoadClass[11pt,letterpaper]{article}

\setlength{\voffset}{0in}
\setlength{\paperwidth}{8.5in}
\setlength{\paperheight}{11in}
\setlength{\headheight}{0in}
\setlength{\headsep}{0in}
\setlength{\textheight}{11in}
\setlength{\textheight}{9.5in}
\setlength{\topmargin}{-0.25in}
\setlength{\textwidth}{7in}
\setlength{\topskip}{0in}
\setlength{\oddsidemargin}{-0.25in}
\setlength{\evensidemargin}{-0.25in}
\pagestyle{empty}
\raggedbottom
\raggedright
\setlength{\tabcolsep}{0in}
\setlength\arrayrulewidth{0.8pt}
\newcolumntype{L}{>{\small\raggedright\arraybackslash}X}
\newcolumntype{C}{>{\small\centering\arraybackslash}X}
\newcolumntype{R}{>{\small\raggedleft\arraybackslash}X}

\renewcommand{\section}[1]{
  \setlength\extrarowheight{4pt}
  \bigskip
  \begin{tabularx}{\linewidth}[h]{L}
    \hline\textbf{\Large #1}\\\hline
\end{tabularx}}

\newcommand{\resumeitem}[4]{
  \item
  \begin{tabular*}{6.5in}{l@{\extracolsep{\fill}}r}
    \textbf{#1} & #2 \\
  \end{tabular*}
  \begin{tabular*}{6.5in}{l@{\extracolsep{\fill}}r}
    \textit{#3} & \textit{#4} \\
\end{tabular*}}

\newcommand{\opensource}[2]{ % name, url
  \item
    \begin{tabular*}{6.5in}{l@{\extracolsep{\fill}}r}
      \textbf{#1} \\
    \end{tabular*}
    \texttt{#2} \\}

\newcommand{\employer}[4]{\resumeitem{#1}{#2}{#3}{#4}\vspace{-6pt}}
\newcommand{\responsibility}[1]{\item #1 \vspace{-2pt}}

\newcommand{\@name}{}
\newcommand{\name}[1]{\renewcommand{\@name}{#1}}
\newcommand{\@address}{}
\newcommand{\address}[1]{\renewcommand{\@address}{#1}}
\newcommand{\@phone}{}
\newcommand{\phone}[1]{\renewcommand{\@phone}{#1}}
\newcommand{\@email}{}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
\newcommand{\resumeheader}{
  \raggedleft{\textbf{\Huge \@name}}\\
  \begin{tabularx}{\linewidth}[h]{LCR}
    \hline \@address & \@phone & \@email \\\hline
\end{tabularx}\vspace{0.1in}}

\AtBeginDocument{\resumeheader}
