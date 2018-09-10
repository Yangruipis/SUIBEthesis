


# 上海对外经贸大学研究生毕业论文Latex模板

## 编译环境
- textlive 2017
- Arch Linux: manjaro

windows版本我后面会继续调试，不过因为用的都是win下的字体，我觉得应该没啥问题

## 编译方法

1. 务必使用`XeLaTeX`编译
2. 如果使用bibtex，并且`ref.bib`文件发生变动，则务必按照 `XeLaTeX`-->`BibTeX` --> `XeLaTeX` --> `XeLaTeX`的顺序编译，如果`ref.bib`文件未变动，则直接两次`XeLaTeX`编译。
3. 如果不使用bibtex，请将.tex文件中和bib和natbib有关的行注释掉，之后两次`XeLaTeX`编译。

![](./data/scrshot/1.jpg) ![](./data/scrshot/2.jpg)
![](./data/scrshot/3.jpg) ![](./data/scrshot/4.jpg)

# TODO:

- [x] 参考文献算入页数
- [x] 适配windows字体
- [ ] windows下编译调试
- [x] 加入致谢
- [x] 目录字体和标题一致
- [ ] (someday)参考文件前面加入方框和编号

