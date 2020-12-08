---
layout: page
name: Git&Jekyll&Markdown
position: first
---

[搭建一个免费的，无限流量的Blog----github Pages和Jekyll入门](http://www.ruanyifeng.com/blog/2012/08/blogging_with_jekyll.html)

但是，综合来看，它不失为搭建中小型Blog或项目主页的最佳选项之一。

三、一个实例

下面，我举一个实例，演示如何在github上搭建blog，你可以跟着一步步做。为了便于理解，这个blog只有最基本的功能。

在搭建之前，你必须已经安装了git，并且有github账户。

第一步，创建项目。

在你的电脑上，建立一个目录，作为项目的主目录。我们假定，它的名称为jekyll_demo。

　　$ mkdir jekyll_demo

对该目录进行git初始化。

　　$ cd jekyll_demo

　　$ git init

然后，创建一个没有父节点的分支gh-pages。因为github规定，只有该分支中的页面，才会生成网页文件。