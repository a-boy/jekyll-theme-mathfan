这是一个准备为数学迷打造的jekyll博客主题, 现在的项目内容为`jekyll new-theme jekyll-theme-mathfan`生成的结果。请先规划，再实现主题。

1. 要求界面清爽紧凑简洁明快，padding 和 margin 均不大于2px，但可以考虑使用绚丽的颜色搭配。
2. front matter中 features可以包含mathjax, katex, sagecell,  mermaid, geogebra中的若干项，mathjax或katex只能二选一，即出现mathjax即忽略katex。例如: 
```
---
title: "Ramsey Critical Graph"
features: mathjax katex sagecell mermaid geogebra
categories: GraphTheory
tags: graph ramsey-theory
---
```
1. _layouts除了基本的布局外，还增加几个布局，比如marp.html和revealjs.html，分别用于Marp和Reveal.js展示网页幻灯片。
2. _includes中包含mathjax.html, katex.html, sagecell.html, mermaid.html, geogebra.html，分别用于数学公式，KaTeX，SageCell，Mermaid，GeoGebra。另有google-analytics.html，social.html, comment.html（Giscus 评论或Disqus评论）等等
