---
layout: post
title: Blog
categories: 
description: My Favorites and the description.
keywords: Favorites
comments: false
---

## HTML

[RSS 源 xmlParseEntityRef: no name 错误解决方法](https://www.it131.org/8487.html)


直接访问 XML 文件的错误提示：

    This page contains the following errors:
    error on line 1 at column 176713: xmlParseEntityRef: no name
    Below is a rendering of the page up to the first error.

果然不出所料，根据报错行，发现是因为内容中包含一个“&”符号，由于是利用 开发，所以果断的使用了 WordPress 自带的 esc_html 函数，该函数可以将 < > & ” ‘（小于号，大于号，&，双引号，单引号）编码，转成 HTML 实体，已经是实体的并不转换，最后完美解决这个问题。当然如果你不是使用的 WordPress，你可能就需要单独替换或者处理，当然也可以通过删除&符号来解决问题。

## 内网穿透 

[SAKURA FRP](https://www.natfrp.com/)

[Sunny-Ngrok](http://www.ngrok.cc/login.html)

国内节点都要求网站备案，实际并不容易

## Hugo

[Windows下搭建Hugo博客](https://www.cnblogs.com/Codemandyk/p/10855891.html)

* m10c使用：

注意命令行要处于当前目录。theme文件需要在博客文件夹内，博客文件的根目录要包含一个hugo.exe

```
hugo server -t m10c --buildDrafts
hugo --theme=m10c --baseUrl="地址" --buildDrafts
```

* hugo massively 使用 ：

```
git clone https://github.com/curtistimson/hugo-theme-massively
# Running Locally
cd exampleSite && hugo server --themesDir ../..
# public 
hugo --themesDir ../.. --baseUrl="地址" --buildDrafts
```

## 腾讯云cos静态页面建站

* 存储桶建在海外

* 启用静态页面，打开CDN，不强制使用https

* 绑定域名, 可以使用2级域名

(或者使用netlify加速)

## github pages 绑定域名

注意在域名购买方配置解析时要把主机记录配置为 @ ，同时在github pages配置CNAME
