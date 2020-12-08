---
layout: page
name: Git&Jekyll&Markdown
position: first
---

但是，综合来看，它不失为搭建中小型Blog或项目主页的最佳选项之一。

[搭建一个免费的，无限流量的Blog----github Pages和Jekyll入门](http://www.ruanyifeng.com/blog/2012/08/blogging_with_jekyll.html)

第一步，创建项目。

在你的电脑上，建立一个目录，作为项目的主目录。我们假定，它的名称为jekyll_demo。

　　$ mkdir jekyll_demo

对该目录进行git初始化。

　　$ cd jekyll_demo

　　$ git init

然后，创建一个没有父节点的分支gh-pages。因为github规定，只有该分支中的页面，才会生成网页文件。