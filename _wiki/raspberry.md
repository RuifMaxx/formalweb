---
layout: wiki
title: Raspberry
categories: linux
description: 使用树莓派搭建服务器的相关指令
keywords: keyword1, keyword2
---
## 进入root账户

raspbian默认用户名为pi、密码为raspberry（若使用raspi-config修改过密码，则为修改后的密码）

默认情况下，root用户并未启用，且没有密码

```
# 设置新的密码

sudo passwd root

# 进入root 账户

su root

```
## 换源

### 查看包版本
Ruby version 2.4.0 or higher, including all development headers (check your Ruby version using ruby -v)
RubyGems (check your Gems version using gem -v)
GCC and Make (check versions using gcc -v,g++ -v, and make -v)

### gem换源
gem sources -r https://rubygems.org/

gem sources -a https://gems.ruby-china.com/

查看gem 源 gem sources -l

### apt换源

备份源
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

sudo cp /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.bak

换源，参考清华源 https://mirror.tuna.tsinghua.edu.cn/help/raspbian/

修改软件更新源，执行如下命令：

```
sudo nano /etc/apt/sources.list

# 编辑 `/etc/apt/sources.list` 文件，删除原文件所有内容，用以下内容取代：

deb http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main non-free contrib rpi

deb-src http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main non-free contrib rpi

```

修改系统更新源，执行如下命令：

```
sudo nano /etc/apt/sources.list.d/raspi.list

# 编辑 `/etc/apt/sources.list.d/raspi.list` 文件，删除原文件所有内容，用以下内容取代：
deb http://mirrors.tuna.tsinghua.edu.cn/raspberrypi/ buster main ui

```
同步更新源，执行如下命令：

```
sudo apt-get update
```

## 安装jekyll

```
gem install jekyll

gem install bundler

# bundle 换源：

bundle config 'mirror.https://rubygems.org' 'https://gems.ruby-china.com/'

jekyll new myblog

cd myblog

bundle exec jekyll serve
```
