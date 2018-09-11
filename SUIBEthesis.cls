% -------------------------
% Author: 杨睿
% Github: https://github.com/Yangruipis
% E-mail: yangruipis@163.com
% -------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SUIBEthesis}[2018/09/18 v0.1 Yang Ray's presentation]


\LoadClass[a4paper, UTF8, zihao=-4]{ctexbook}[2015/05/14]
\RequirePackage{tikz}        % 固定位置
\RequirePackage{xeCJK}       % 中文支持
\RequirePackage{tabularx}    % 固定表格宽度
\RequirePackage{titlesec}    % 调整页眉页脚
\RequirePackage{color}       % 调整字体颜色
\RequirePackage[labelfont={bf,footnotesize}, labelsep=space, textfont={bf, footnotesize}]{caption}    % 调整caption的字号与粗细，同时中间用空格而非冒号分割
\RequirePackage[top=2.54cm,bottom=2.54cm,left=3.18cm,right=3.18cm]{geometry} % 调整页边距
\RequirePackage{setspace}   % 调整行距
\RequirePackage{tocloft}    % 调整目录字体
% \setmainfont{Times New Roman}



% 目录页字体
\renewcommand\cftsecfont{\xiaosan \bfseries}
\renewcommand\cftsubsecfont{\sihao \bfseries}
\renewcommand\cftsubsubsecfont{\xiaosi \bfseries}
\renewcommand{\contentsname}{\hfill\bfseries\Large \sanhao{\textbf{目\hspace{1em}录}} \hfill}   
\renewcommand{\cftaftertoctitle}{\hfill}


\RequirePackage{zhfont}

% 添加中文字体
% \setCJKfamilyfont{hei}{微软雅黑} 
% \newcommand{\hei}{\CJKfamily{hei}}
% \setCJKfamilyfont{song}{宋体} 
% \newcommand{\song}{\CJKfamily{song}}
% \setCJKfamilyfont{lishu}{华文隶书} 
% \newcommand{\lishu}{\CJKfamily{lishu}}
% \setCJKfamilyfont{calibri}{Calibri} 
% \newcommand{\calibri}{\CJKfamily{calibri}}
% \setCJKfamilyfont{kai}{楷体_GB2312}
% \newcommand{\kai}{\CJKfamily{kai}}




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
\newcommand{\xiaowu}{\fontsize{9pt}{16pt}\selectfont}

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

% 自定义填写时的下划线
\newcommand\SUIBE@underline[2][6em]{%
    \hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt\relax
  }

  
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
  {\parbox{\linewidth}{\centering  \linespread{1.8} \sanhao #2}};}

% 控制主界面的表格
\newcommand\vposleft[2]{
  \tikz[remember picture,overlay]
  \node [yshift=-#1] at (current page.north) [below,align=flush center]
  {\parbox{\linewidth}{ #2}};}


\renewcommand{\maketitle}{

  \make@cntitle 
  \make@statement 

  
}

% 自定义cover页的页眉页脚
\newpagestyle{coverpage}{
  \sethead{}{\hei{\xiaowu{\textcolor[RGB]{128,128,132}{\@title}}}}{}     %设置页眉
  % \setfoot{左页脚}{中页脚}{右页脚}      %设置页脚，可以在页脚添加 \thepage  显示页数
  \headrule                                      % 添加页眉的下划线
  % \footrule                                       %添加页脚的下划线
}

\newpagestyle{statementpage}{
  \sethead{}{}{}
}

\newpagestyle{abstractpage}{
  \sethead{}{\hei{\xiaowu{\textcolor[RGB]{128,128,132}{摘要}}}}{}
  \headrule
}

\newpagestyle{enabstractpage}{
  \sethead{}{\hei{\xiaowu{\textcolor[RGB]{128,128,132}{Abstract}}}}{}
  \headrule
}


% 自定义主页面页眉页脚
\newpagestyle{mainpage}{
  \sethead{}{\hei{\xiaowu{\textcolor[RGB]{128,128,132}{\@title}}}}{}
 \setfoot{}{\thepage}{}
 \headrule
}


% 创建申明页
\newcommand\make@statement{

  
  \thispagestyle{statementpage}
    \vpostext{4cm}{\sanhao \textbf{学位论文原创性声明}}

    \vposleft{6cm}{\song
      \begin{spacing}{2.0}
        \sihao
        \hspace{2em}本人所呈交的学位论文是我在导师指导下完成的。据我所知，除文中已经注明引用的内容外，本论文不包含其他个人已经发表或撰写过的研究成果。对本文的研究做出重要贡献的个人和集体，均已在文中作了明确说明并表示谢意。

        ~
        
        \hspace{2em}学位论文作者签名：\SUIBE@underline[6em]{} \hspace{2em} 日期：\SUIBE@underline[6em]{}
      \end{spacing}
      }


      \vpostext{14cm}{\sanhao \textbf{学位论文使用授权声明}}

      \vposleft{16cm}{\song
      \begin{spacing}{2.0}
        \sihao
        \hspace{2em} 本人完全了解上海对外经贸大学有关保留、使用学位论文的规定，即：学校有权保留学位论文并向国家主管部门或其指定机构送交论文的电子版和纸质版，可以上网公布论文的全部和部分内容，可以复制并允许学位论文进入学校图书馆被查阅，有权将学位论文的内容编入有关数据库进行检索，有权将学位论文的标题和摘要汇编出版。保密的论文在解密后遵守此规定。

        ~
        
        \hspace{6em}学位论文作者签名： \hspace{8em} 导师签名：

        \hspace{8em}日期：\SUIBE@underline[6em]{} \hspace{2em} 日期：\SUIBE@underline[6em]{}
        
      \end{spacing}
      
    }
}

% 创建cover页
\newcommand\make@cntitle{

  \begin{titlepage}

    \vposleft{2cm}{\hspace{2em}\includegraphics[height=3cm]{data/figure/logo.pdf}}
    \vposleft{3cm}{\hspace{20em}
      \begin{tabular}{cl}
        \song{\xiaowu{学校代码：}} & \xiaowu{10273} \\
        \song{\xiaowu{~学\hspace{2em}号：}} & \xiaowu{\SUIBE@studentnum}
      \end{tabular}
    }
    
    \vpostext{7cm}{\lishu \yihao 上海对外经贸大学}
    \vpostext{8.2cm}{\xiaosi SHANGHAI UNIVERSITY OF INTERNATIONAL BUSINESS AND ECONOMICS}
    \vpostext{10.5cm}{\lishu \yihao 硕士学位论文}
    \vpostext{11.7cm}{\xiaosi MASTER DISSERTATION}
    
    \vposcover{16cm}{\bfseries
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

\renewcommand{\abstractname}{摘\hspace{1em}要}

\RequirePackage{indentfirst}
\newenvironment{abstract}{%
   
  \thispagestyle{abstractpage}
   \@beginparpenalty\@lowpenalty
   \begin{center}%

     ~
     
        \textbf{\sanhao{\abstractname}}
        \@endparpenalty\@M
      \end{center}  \xiaosi \song % 后面需要空行，防止第一行无法缩进

      ~

     
    }

    \newcommand{\keywords}[1]{

      ~

      \textbf{\xiaosi 关键词：} #1 }

\newenvironment{enabstract}{%
   
    \thispagestyle{enabstractpage}
   \@beginparpenalty\@lowpenalty
   \begin{center}%
     ~
     
     \sanhao \textbf{Abstract}
     
        \@endparpenalty\@M
      \end{center}  \xiaosi % 后面需要空行，防止第一行无法缩进


      ~

      
    }

    \newenvironment{mythanks}{%
   \newpage
   \@beginparpenalty\@lowpenalty
   \begin{center}%
     
     ~
     
     \xiaosan \textbf{致\hspace{1em}谢}
     
        \@endparpenalty\@M
      \end{center}  \xiaosi \kai % 后面需要空行，防止第一行无法缩进


      ~

      
    }

     \newenvironment{myappendix}{%
   \newpage
   \@beginparpenalty\@lowpenalty
   \begin{center}%
     
     ~
     
     \xiaosan \textbf{附\hspace{1em}录}
     
        \@endparpenalty\@M
      \end{center}  \xiaosi \kai % 后面需要空行，防止第一行无法缩进


      ~

      
    }
    
    \newcommand{\enkeywords}[1]{

      ~

      \textbf{\xiaosi Keywords：} #1 }

    \setcounter{secnumdepth}{3}    % 使section深度为3，可以显示subsubsection的编号
    \setcounter{tocdepth}{3}       % 使目录深度为3，可以显示subsubsection的目录
    \renewcommand{\thesection}{\arabic{section}}
    \renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}}
    \renewcommand{\thesubsubsection}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}
    
    \titleformat*{\section}{\bfseries\centering\sanhao}
    \titleformat*{\subsection}{\bfseries \sihao}
    \titleformat*{\subsubsection}{\bfseries \xiaosi}

    \RequirePackage{amsmath}         % 
    \numberwithin{equation}{section} % 公式按照章节编号，依赖amsmath

    \renewcommand\bibname{\xiaosan 参考文献}

    % 每个section进行换页
    \let\stdsection\section
    \renewcommand\section{\newpage\stdsection}

    % 插入代码
    \RequirePackage{listings}
    \renewcommand{\lstlistlistingname}{Code Listings}
    \renewcommand{\lstlistingname}{Code Listing}
    \definecolor{gray}{gray}{0.5}
    \definecolor{green}{rgb}{0,0.5,0}
    

    \lstnewenvironment{python}[1][]{
	\lstset{  % python 专用设置
		language=python,
		basicstyle=\song \small\setstretch{1}, % 此处可更改代码字体
		stringstyle=\color{red},
		showstringspaces=false,
		alsoletter={1234567890},
		otherkeywords={\ , \}, \{},
		keywordstyle=\color{blue},
		emph={access,and,break,class,continue,def,del,elif ,else,%
			except,exec,finally,for,from,global,if,import,in,i s,%
			lambda,not,or,pass,print,raise,return,try,while},
		emphstyle=\color{orange}\bfseries,
		emph={[2]True, False, None, self},
		emphstyle=[2]\color{green},
		emph={[3]from, import, as},
		emphstyle=[3]\color{blue},
		upquote=true,
		morecomment=[s]{"""}{"""},
		commentstyle=\color{gray}\slshape,
		emph={[4]1, 2, 3, 4, 5, 6, 7, 8, 9, 0},
		emphstyle=[4]\color{blue},
		literate=*{:}{{\textcolor{blue}:}}{1}%
		{=}{{\textcolor{blue}=}}{1}%
		{-}{{\textcolor{blue}-}}{1}%
		{+}{{\textcolor{blue}+}}{1}%
		{*}{{\textcolor{blue}*}}{1}%
		{!}{{\textcolor{blue}!}}{1}%
		{(}{{\textcolor{blue}(}}{1}%
		{)}{{\textcolor{blue})}}{1}%
		{[}{{\textcolor{blue}[}}{1}%
		{]}{{\textcolor{blue}]}}{1}%
		{<}{{\textcolor{blue}<}}{1}%
		{>}{{\textcolor{blue}>}}{1},%
		#1,
		framexleftmargin=1mm, framextopmargin=1mm, frame=shadowbox, rulesepcolor=\color{gray}    % 黑色边框，蓝色底纹
}}{}