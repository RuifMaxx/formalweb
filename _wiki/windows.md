## 跨盘符切换目录，安装ta-lib

1.输入cd，可以显示当前目录的名称；

2.关于盘符，我的电脑有C、D、E盘，打开cmd窗口，默认路径是用户文档路径，是C盘下的一个路径，如果想要切换到任何一个C盘下的路径，输入cd 路径是可行的；

3.如果想要切换盘符，则要输入cd /d 路径；也可以不用cd指令，另一个方法是直接输入盘符：例如C:

[python的.whl https://www.lfd.uci.edu/~gohlke/pythonlibs/](https://www.lfd.uci.edu/~gohlke/pythonlibs/)

```
(base) C:\Users\hp>cd /d D:\
(base) D:\>cd /d E:\
(base) E:\>pip install TA_Lib-0.4.19-cp37-cp37m-win_amd64.whl
(base) E:\>C:
(base) C:\Users\hp>D:

```

我的python版本是3.4.4，这个错误的原因如下

可能的原因1：安装的不是对应python版本的库，下载的库名中cp27代表python2.7,其它同理。

可能的原因2：下载的是对应版本的库，然后仍然提示不支持当前平台，文件名格式不对

1.首先第一个错误：

我下载的是CP37，pyth版本是3.4.4，所以下载文件错误，重新下载带CP34的（opencv_python-3.1.0-cp34-cp34m-win_amd64.whl）

## nvidia-smi.exe-监控GPU状态

1.打开CMD

2.输入"C:\Program Files\NVIDIA Corporation\NVSMI\nvidia-smi.exe"