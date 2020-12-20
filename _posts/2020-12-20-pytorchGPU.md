---
layout: post
title: pytorchGPU 安装
categories: Tools
description: 
keywords: time series
---

1.打开百度网盘 vs 2019.rar，安装VS，选择C++方面的内容。

<div align="center"> 
    <img src="https://Ruifmaxx.github.io/images/tools/1.png" style="zoom:100%" />
​    

</div>

2.打开英伟达控制面板，点击系统信息，查看驱动版本。

<div align="center"> 
    <img src="https://Ruifmaxx.github.io/images/tools/2.png" style="zoom:100%" />
​    

</div>


<div align="center"> 
    <img src="https://Ruifmaxx.github.io/images/tools/3.png" style="zoom:100%" />
​    

</div>

3.打开CUDA官网，选择符合标准(小于等于此驱动版本)的CUDA。

搜索网盘 cuda10.1-11.1，下载安装。

验证是否已安装：打开cmd,输入：nvcc -V，输出：

<div align="center"> 
    <img src="https://Ruifmaxx.github.io/images/tools/4.png" style="zoom:100%" />
​    

</div>

4.安装cudnn

相比标准的cuda，它在一些常用的神经网络操作上进行了性能的优化，比如卷积，pooling，归一化，以及激活层等等。

所以配置cuDNN时是要对cuda进行一些修改，所以我们要先安装cuda。cuDNN下载需要注册。

下载之后，

(1)解压：会生成cuda/include、cuda/lib、cuda/bin三个目录；

(2)分别将cuda/include、cuda/lib、cuda/bin三个目录中的内容拷贝到C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v7.5对应的include、lib、bin目录下即可。

(3)将bin所在的目录添加到环境变量 PATH 中，“此电脑”→“高级系统设置”→“环境变量”→“系统变量”→“path”→“编辑”→“新建”加入该路径即可。



5.安装anaconda

此部分可参考[PyTorch环境搭建 - PyTorch官方教程中文版 (panchuang.net)](http://pytorch.panchuang.net/FirstSection/InstallIutorial/)

最终环境变量配置如图。

<div align="center"> 
    <img src="https://Ruifmaxx.github.io/images/tools/5.png" style="zoom:100%" />
​    

</div>

6.安装pytorch

推荐使用pip安装，conda很慢。

<div align="center"> 
    <img src="https://Ruifmaxx.github.io/images/tools/6.png" style="zoom:100%" />
​    

</div>

拷贝给出的命令在cmd下运行

<div align="center"> 
    <img src="https://Ruifmaxx.github.io/images/tools/7.png" style="zoom:100%" />
​    

</div>

7.验证是否成功

打开anaconda prompt

<div align="center"> 
    <img src="https://Ruifmaxx.github.io/images/tools/8.png" style="zoom:100%" />
​    

</div>

8.安装pycharm。

打开网盘 pycharm-2019.3.3

<div align="center"> 
    <img src="https://Ruifmaxx.github.io/images/tools/9.png" style="zoom:100%" />
​    

</div>

9.将pycharm配置为n卡，或者全局配置为n卡

<div align="center"> 
    <img src="https://Ruifmaxx.github.io/images/tools/10.png" style="zoom:100%" />
​    

</div>