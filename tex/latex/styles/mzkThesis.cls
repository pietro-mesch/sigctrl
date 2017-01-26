\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mzkThesis}[2017/01/23 mzkThesis]

%%%%%%%%%%%%%%%%%%   MACROS   %%%%%%%%%%%%%%%%%%%
\newcommand{\docType}{Thesis}
\newcommand{\docName}{
  \begingroup
  \spaceskip1sp
  \xspaceskip1sp
  \softwareName \softwareVersion \_  \docType
  \endgroup
}

%% Fallback
\DeclareOption*{
  \ClassWarning{mzkThesis}{Unknown option '\CurrentOption'}
}

%% Execute default options
\ExecuteOptions{12pt}
%% Process given options
\ProcessOptions\relax

%% Load base layout
\LoadClass[12pt,a4paper,twoside]{book}

%% TABLE STYLES
\RequirePackage{mzkTables}

%% GLOBAL STYLES
\RequirePackage{mzkStyles}
\RequirePackage[compact]{titlesec}

%% MARGINS AND SPACING
%\RequirePackage[top=2cm, bottom=2.5cm, left=1.5cm, right=1.5cm]{geometry}
\setlength{\textheight}{645pt}
\RequirePackage{parskip}
\setlength{\parskip}{7pt plus3pt minus2pt}
\RequirePackage{setspace}

%% CAPTIONS
\RequirePackage[font=small,labelfont=rm,labelsep=endash,width=0.85\textwidth]{caption}

%% HYPERREF AND BIBLIOGRAPHY
\RequirePackage[square]{natbib}
\RequirePackage[unicode, hidelinks]{hyperref}
\RequirePackage[numbered]{bookmark}
\RequirePackage{url}

%%%%%%%%%%%%%%%%%%%%%%%%%%% TITLE PAGE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\renewcommand{\maketitle}{
%\begin{titlepage}
%\makeatletter
%\begin{center}
%~\\[6cm]
%
%%% TITLE
%\doublespacing{\Huge \softwareName}
%\begin{tikzpicture}
%\draw[gray,thick](-8,0) -- (8,0);
%\end{tikzpicture}
%%\rule{\linewidth}{0.3mm}
%~\\[0.4cm] {\Large Version \softwareVersion}
%~\\[2cm] {\huge \docType}
%\vfill
%
%\makeAuthorsTable
%
%\end{center}
%\makeatother
%\end{titlepage}
%}

%%%%%%%%%%%%%%%%%%%%%%%%%  HEADERS AND FOOTERS  %%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\setlength{\headheight}{26pt}
\setlength{\footskip}{20pt}

%% PLAIN HEADER
\fancypagestyle{plain}{
\fancyhead[CE,CO]{
%\tikz[baseline=0pt]{
%    \draw (- \headwidth * 0.5 , 0) -- ( \headwidth * 0.5 , 0);
%    \draw (0,0.4) node [above] {\softwareNAM{} \softwareVersion{}};
%    \draw (0,0) node [above] {\docType{}};
%    \draw (- \headwidth * 0.5 -1mm,0.6) node [right] {\includegraphics[height=1cm]{PIX/common/logo_SISTeMA.JPG}};
%    \draw ( \headwidth * 0.5 + 1mm,0.6) node [left] {\includegraphics[height=1cm]{\softwareLogo}};
%    }
}
\fancyhead[LE,LO]{}
\fancyhead[RE,RO]{}
}

%% NORMAL HEADER
\renewcommand{\chaptermark}[1]{\small{
\markboth{\chaptername
\ \thechapter.\ #1}{}}}

\fancyhead[LE,LO]{}
\fancyhead[CE,CO]{
%\tikz[baseline=0pt]{
%    \draw (- \headwidth * 0.5 , 0) -- ( \headwidth * 0.5 , 0);
%    \draw (0,0.4) node [above] {\softwareNAM{} \softwareVersion{}};
%    \draw (0,0) node [above] {\docType{}};
%    \draw (- \headwidth * 0.5 -1mm,0.6) node [right] {\includegraphics[height=1cm]{PIX/common/logo_SISTeMA.JPG}};
%    \draw ( \headwidth * 0.5 +1mm,0.6) node [left] {\includegraphics[height=1cm]{\softwareLogo}};
    %\draw (- \headwidth * 0.5 , -0.3) node [right] {\small{\emph{\thesection \sectionmark}}};
    %\draw (\headwidth * 0.5 , -0.3) node [left] {\chaptermark};
%    }
}

%%% FOOTER
%\fancyfoot[LE,LO]{
%\tikz[baseline=-13pt]{\hspace{2pt}
%  \includegraphics[width=2cm]{PIX/common/spinoffSapienza_nologo.png}}
%\tikz[baseline=2pt]{  
%  \includegraphics[width=2cm]{PIX/common/PTV_Group_baronly.png}}
%}
%\fancyfoot[CE,CO]{
% \tikz[baseline=5pt]{
%  \draw (- \headwidth * 0.5 , 1.65) -- ( \headwidth * 0.5 , 1.65);
%  %
%  \draw (- \headwidth * 0.38,1.15) node {} -- ( \headwidth * 0.16 ,1.15) node {};
%  \draw (- \headwidth * 0.28,1.40) node [left] {\footnotesize{Drafted:}};
%  \draw (- \headwidth * 0.28,1.40) node [right] {\footnotesize{\@author}};
%  %
%  \draw (- \headwidth * 0.38,0.60) node {} -- ( \headwidth * 0.16 ,0.60) node {};
%  \draw (- \headwidth * 0.28,0.85) node [left] {\footnotesize{Approved:}};
%  \draw (- \headwidth * 0.28,0.85) node [right] {\footnotesize{\docReviewer}};
%  %  
%  \draw (- \headwidth * 0.28,0.30) node [left] {\footnotesize{File name:}};
%  \draw (- \headwidth * 0.28,0.25) node [right] {\footnotesize{\softwareName \softwareVersion\_\docType}};
%  %  
%  \draw (- \headwidth * 0.5,0) -- (\headwidth * 0.5,0);
%  \draw (- \headwidth * 0.5 ,-0.2) node [right] {\scriptsize{\copyright\ SISTeMA s.r.l.}};
%  \draw (\headwidth * 0.5,-0.2) node [left] {\scriptsize{www.sistemaits.com}};
% }
%}
%\fancyfoot[RE,RO]{
%  \includegraphics[width=1.3cm]{PIX/common/ISO9001_SQS_it.png}
%  \includegraphics[width=1.3cm]{PIX/common/IQNET_gm_al.png}
%  \tikz[baseline=5pt]{
%  \draw (-2.8,0) node {} -- (0,0) node {};  
%  \draw (0,0.8) node [left] {\footnotesize{Page \thepage\ of \pageref{LastPage}}};
%  } 
%}
%%%%%%%%%%%%%%%%%%%%%%%%%%%  SECTION TITLES  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{secnumdepth}{3}

\titlelabel{\thetitle \quad}
\titleformat{\chapter}[hang]
{\huge \bfseries}
{\huge \thechapter. \quad}
{1ex}{}

\titlespacing{\chapter}{0pt}{0pt}{20pt}

\titleformat{\subsection}[hang]
{\large \bfseries}
{\large \thesubsection \quad}
{1ex}
{ }

\titleformat{\subsubsection}[hang]
{\normalsize \itshape}
{\normalsize \thesubsubsection \quad}
{1ex}
{ }

%%%%%%%%%%%%%%%%%%%%%%%%%%%  OTHER STYLES  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\endinput