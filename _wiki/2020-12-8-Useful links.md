---
layout: post
title: Useful links for learning
categories: Cat
description: My Favorites and the description.
keywords: Favorites
comments: false
---

My Favorites and the description.

<br/>

## Neural ODE

[Problem when rtol and atol are iterables](https://github.com/rtqichen/torchdiffeq/issues/4)

[Tried to convert the latent_ode code to run on one dimension of the spiral. #91](https://github.com/rtqichen/torchdiffeq/issues/91)

[Add latent ode example #5](https://github.com/rtqichen/torchdiffeq/pull/5)

## HTML

[RSS 源 xmlParseEntityRef: no name 错误解决方法](https://www.it131.org/8487.html)


直接访问 XML 文件的错误提示：

    This page contains the following errors:
    error on line 1 at column 176713: xmlParseEntityRef: no name
    Below is a rendering of the page up to the first error.

果然不出所料，根据报错行，发现是因为内容中包含一个“&”符号，由于是利用 开发，所以果断的使用了 WordPress 自带的 esc_html 函数，该函数可以将 < > & ” ‘（小于号，大于号，&，双引号，单引号）编码，转成 HTML 实体，已经是实体的并不转换，最后完美解决这个问题。当然如果你不是使用的 WordPress，你可能就需要单独替换或者处理，当然也可以通过删除&符号来解决问题。

