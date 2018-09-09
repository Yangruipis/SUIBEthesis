% -------------------------
% Author: 杨睿
% Github: https://github.com/Yangruipis
% E-mail: yangruipis@163.com
% -------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SUIBEthesis}[2018/09/18 v0.1 Yang Ray's presentation]


\LoadClass[a4paper, UTF8, zihao=-4]{ctexbook}[2015/05/14]
\RequirePackage{tikz}
\RequirePackage{xeCJK}
\RequirePackage{tabularx}
\setmainfont{Times New Roman}




\setCJKfamilyfont{hei}{微软雅黑} 
\newcommand{\hei}{\CJKfamily{hei}}
\setCJKfamilyfont{song}{宋体} 
\newcommand{\song}{\CJKfamily{song}}
\setCJKfamilyfont{lishu}{华文隶书} 
\newcommand{\lishu}{\CJKfamily{lishu}}
\setCJKfamilyfont{calibri}{Calibri} 
\newcommand{\calibri}{\CJKfamily{calibri}}

% 插入字号： 
% 三号, 1.5 倍行距
% 小三, 1.5 倍行距
% 四号, 1.5 倍行距
% 小四, 1.5 倍行距
\newcommand{\yihao}{\fontsize{26.8pt}{18pt}\selectfont} 
\newcommand{\sanhao}{\fontsize{16pt}{18pt}\selectfont} 
\newcommand{\xiaosan}{\fontsize{15pt}{18pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{16pt}\selectfont}
\newcommand{\xiaosi}{\fontsize{12pt}{16pt}\selectfont}

% 获取tex文件中定义的变量，通过 \SUIBE@xxxx 调用
\newcommand{\advisor}[1]{\gdef\SUIBE@advisor{#1}}
\newcommand{\degree}[1]{\gdef\SUIBE@degree{#1}}
\newcommand{\school}[1]{\gdef\SUIBE@school{#1}}
\newcommand{\major}[1]{\gdef\SUIBE@major{#1}}
\newcommand{\finishdate}[1]{\gdef\SUIBE@finishdate{#1}}
\newcommand{\studentnum}[1]{\gdef\SUIBE@studentnum{#1}}

% 固定表格宽度且居左、居中、居右
\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}

\renewcommand{\baselinestretch}{1.25}
\renewcommand{\tablename}{表} 
\renewcommand{\figurename}{图}

% 控制文字距离上边框的位置
\newcommand\vpostext[2]{
  \tikz[remember picture,overlay]
  \node [yshift=-#1] at (current page.north) [below,align=flush center]
  {\parbox{\textwidth}{\centering#2}};
}

% 控制主界面的表格
\newcommand\vposcover[2]{
  \tikz[remember picture,overlay]
  \node [yshift=-#1] at (current page.north) [below,align=flush center]
  {\parbox{\linewidth}{\centering  \linespread{1.8} \sanhao \songti #2}};}

% 控制主界面的表格
\newcommand\vposleft[2]{
  \tikz[remember picture,overlay]
  \node [yshift=-#1] at (current page.north) [below,align=flush center]
  {\parbox{\linewidth}{ #2}};}




\renewcommand{\maketitle}{

  \begin{titlepage}

    \vposleft{2cm}{\includegraphics[height=3cm]{data/figure/logo.pdf}}
    \vposleft{3cm}{\hspace{20em}
      \begin{tabular}{cl}
        \song{学校代码：} & 10273 \\
        \song{学\hspace{2em}号：} & \SUIBE@studentnum
      \end{tabular}
    }
    
    \vpostext{7cm}{\lishu \yihao 上海对外经贸大学}
    \vpostext{8.2cm}{\calibri \xiaosi SHANGHAI UNIVERSITY OF INTERNATIONAL BUSINESS AND ECONOMICS}
    \vpostext{10.5cm}{\lishu \yihao 硕士学位论文}
    \vpostext{11.7cm}{\calibri \xiaosi MASTER DISSERTATION}
    
    \vposcover{16cm}{
      \begin{tabular} {@{}C{3cm}@{} @{}C{7cm}@{}}
        
        \textbf{学位类别：} & \SUIBE@degree \\ \cline{2-2}
        \textbf{论文题目：} & \@title\\ \cline{2-2}
        \textbf{作者姓名：} & \@author \\ \cline{2-2}
        \textbf{培养院系：} & \SUIBE@school \\ \cline{2-2}
        \textbf{专\hspace{2em}业：} & \SUIBE@major \\ \cline{2-2}
        \textbf{指导教师：} & \SUIBE@advisor \\ \cline{2-2}
        \textbf{完成时间：} & \SUIBE@finishdate \\ \cline{2-2}
      \end{tabular}
    }
    
  \end{titlepage}  
}










