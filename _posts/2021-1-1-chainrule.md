---
layout: post
title:  chain rule and conditionally independent
categories: Math
description: 
keywords: time series
---

转载自[条件概率和链式法则 conditional probability and chain rule](https://www.cnblogs.com/timlong/p/11567830.html)

顾名思义, 条件概率指的是某个事件在给定其他条件时发生的概率, 这个非常符合人的认知:我们通常就是在已知一定的信息(条件)情况下, 去估计某个事件可能发生的概率. 概率论中,用 | 表示条件, 条件概率可以通过下式计算得到。

P(Y=y|X=x)=P(Y=y,X=x)P(X=x)

, 即 在 x 发生的条件下 y 发生的概率 等于 x,y 同时发生的联合概率 除以 x自身的概率. 注意, 必须满足 P(x)>0P(x)>0, 否则对于永远不会发生的事情讨论条件概率无意义.

基于条件概率, 任意多维随机变量的联合分布都可以写成其中任意一个随机变量的条件概率相乘的形式：

P(x(1),...,x(n))=P(x(1))*∏i=2~i=nP(x(i)|x(1),...,x(i−1))

具体而言, 对于一个三元分布 :

P(a,b,c)=P(a|b,c)p(b,c)=P(a|b,c)P(b|c)P(c)

, 这样通常很难直接得到的 P(a,b,c)就分解为以下三个简单的情形乘积的形式:

P(c):c 发生的概率, 通常已知.

P(b|c):c 发生的条件下, 观察到 b 的概率, 通常从数据中挖出.

p(a|b,c):b,c 同时发生的条件下, 观察到 a 的概率, 通常从数据中挖出.

独立性和条件独立性 independent and conditionally independent

由上面的 joint probability, 满足下面的条件

∀x∈X,y∈Y,p(X=x,Y=y)=p(X=x)p(Y=y)

, 就表明连个随机变量之间是没有相互影响的, 因此, 他们是 相互独立的(independent). 简记为 X⊥Y, 其实也真的很像垂直正交的关系.

如果 X,Y在给定条件 Z=z时满足 independent, 即

∀x∈X,y∈Y,z∈Z,p(X=x,Y=y|Z=z)=p(X=x|Z=z)p(Y=y|Z=z)

, 我们就说 随机变量 X 和 Y 在给定随机变量 Z 时是条件独立的(conditionally independent), 

简记为 X⊥Y|Z, 几何上可以看做给定基底Z时, X,Y 是正交的.
