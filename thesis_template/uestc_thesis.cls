\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uestc_thesis}[2025/12/17 UESTC Master Thesis Template]

% 基础文档类设置 (使用 fandol 字体集适配 Overleaf)
\LoadClass[a4paper,12pt,openany,twoside,fontset=fandol]{ctexbook}

% 1. 页面布局设置
\RequirePackage{geometry}
\geometry{left=30mm, right=30mm, top=30mm, bottom=30mm, headheight=20mm, footskip=15mm}

% 2. 字体与段落设置
\RequirePackage{setspace}
\setstretch{1.35} 
\setmainfont{Times New Roman}

% 3. 页眉页脚设置
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{} 
\fancyhead[CO]{\wuhao\leftmark}
\fancyhead[CE]{\wuhao 电子科技大学硕士学位论文}
\fancyfoot[C]{\xiaowu\thepage}
\renewcommand{\headrulewidth}{0.75pt}

% 字号命令定义
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}    
\newcommand{\xiaosan}{\fontsize{15pt}{22.5pt}\selectfont} 
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}     
\newcommand{\xiaosi}{\fontsize{12pt}{20pt}\selectfont}    
\newcommand{\wuhao}{\fontsize{10.5pt}{15.75pt}\selectfont}
\newcommand{\xiaowu}{\fontsize{9pt}{13.5pt}\selectfont}   

% 4. 章节标题样式
\ctexset{
    chapter = {
        format = \centering\heiti\xiaosan,
        name = {第, 章},
        number = \chinese{chapter},
        beforeskip = 24pt,
        afterskip = 18pt,
        pagestyle = fancy,
    },
    section = {
        format = \raggedright\heiti\sihao,
        beforeskip = 18pt,
        afterskip = 6pt,
    },
    subsection = {
        format = \raggedright\heiti\sihao,
        beforeskip = 12pt,
        afterskip = 6pt,
    }
}

% 5. 图表标题设置
\RequirePackage{caption}
\RequirePackage{graphicx} % 支持图片插入
\DeclareCaptionFont{wuhao}{\wuhao}
\captionsetup{font=wuhao, labelsep=quad}

% 6. 参考文献设置
\RequirePackage[backend=biber,style=gb7714-2015]{biblatex}

% 7. 封面绘制相关命令
\newcommand{\coverunderline}[1]{
    \underline{\makebox[220pt][c]{\sihao #1}}
}

\newcommand{\labelbox}[1]{
    \makebox[4.8em][s]{\heiti\sihao #1} 
}

\newcommand{\makecover}{
    \begin{titlepage}
        \centering
        \includegraphics[width=3cm]{uestc_logo.png} \\ 
        \vspace*{1cm}
        {\heiti\sanhao 电子科技大学 \\ University of Electronic Science and Technology of China \\}
        \vspace{1cm}
        {\heiti\sanhao 硕士学位论文 \\ MASTER THESIS \\}
        \vspace{2.5cm}
        
        {\heiti\sanhao \@title \\} 
        \vspace{3cm}
        
        \begin{tabular}{rl}
            \labelbox{学科专业} & \coverunderline{\@discipline} \\
            \labelbox{学\hfill 号} & \coverunderline{\@studentid} \\
            \labelbox{作者姓名} & \coverunderline{\@author} \\
            \labelbox{指导教师} & \coverunderline{\@supervisor} \\
            \labelbox{学\hfill 院} & \coverunderline{\@school} \\
        \end{tabular}
    \end{titlepage}
}

\newcommand{\discipline}[1]{\def\@discipline{#1}}
\newcommand{\studentid}[1]{\def\@studentid{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\newcommand{\school}[1]{\def\@school{#1}}

\endinput
