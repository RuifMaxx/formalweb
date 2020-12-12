---
layout: post
title: Git , Jekyll ,  Markdown and Mkdoc
categories: Tools
description: How the blog is built and some usefull links
keywords: Git , Jekyll ,  Markdown
---

How the blog is built and some usefull links

<br />

## Git

[Github Desktop](https://www.jianshu.com/p/06a960d991aa)

[Git命令行和多人协同](https://www.cnblogs.com/guoyaohua/p/Git-tutorial.html)

[Github中文文档](https://docs.github.com/cn)

[关于Github](https://mp.weixin.qq.com/s?__biz=MzAxMjY0NTY5OA==&mid=2649880532&idx=1&sn=419e8c14c05e7563b3490a78591807dd&chksm=83abf3f9b4dc7aef5a1de717af1c292d9a30722220376cb95edce9f165f32d385e8c12976bd4&token=700119798&lang=zh_CN#rd)


## Jekyll

### 入门

[搭建一个免费的，无限流量的Blog----github Pages和Jekyll入门](http://www.ruanyifeng.com/blog/2012/08/blogging_with_jekyll.html)

post放到_post文件夹里面，必须命名成年月日XXX的格式，pages放到根目录里面会被直接读到

### 博客建立过程

博客Jekyll分支里面版本的建立过程

1.Fork [Jekyll-now](https://github.com/barryclark/jekyll-now) repo。这个repo的首页上默认放Posts，另外带一个About的page。

2.添加第三个Page： cattery.md

3.用collection的方法归类零碎的Pages,发布到cattery.md上。参考[Jekyll Doc](https://jekyllrb.com/docs/collections/)

4.修改Layout,另外博客的样式集中在style.scss中

**目前版本使用[码志](https://github.com/mzlogin/mzlogin.github.io)**

可以在`yml`参数里面设置`topmost: true`置顶文章。

可以通过github的搜索来寻找项目关键字，如置顶功能的Top most。

### 其他值得参考的Blog

一个静态博客写作客户端：[gridea](https://github.com/getgridea/gridea)

给出[教程](https://segmentfault.com/a/1190000019438205)的：[studytime-blog](https://github.com/mystudytime/studytime-blog)

马壮的博客：[码志](https://github.com/mzlogin/mzlogin.github.io)

Jekyll-now变体： [meinside.github.io](https://github.com/meinside/meinside.github.io) ，[reverie](https://github.com/amitmerchant1990/reverie)

### 进阶
[用jekyll制作高大上的网站（二）——实际应用](https://www.cnblogs.com/strick/p/5484779.html)

[为JEKYLL博客添加分类，标签和评论](http://zixiaojindao.github.io/blogging/2012/09/30/jekyll-category-tag-recent-comment/)

[Adding tag cloud and archives page to Jekyll](https://blog.meinside.dev/Adding-tag-cloud-and-archives-page-to-Jekyll/)

## Markdown

[作业部落Cmd Markdown](https://www.zybuluo.com/mdeditor)

[如何将知乎的文章导出成markdown格式的文件？](https://www.zhihu.com/question/309343971)

## Mkdoc

Based on python,  a useful tool to write doc.

[mkdoc](https://zhuanlan.zhihu.com/p/50806149)

[mkdoc构建主页](https://www.zhihu.com/answer/1027247191)

