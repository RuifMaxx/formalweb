---
layout: post
title: python
categories: python
description: My Favorites and the description.
keywords: Favorites
comments: false
---

## JupyterLab

### Jupyter Notebook使用parser.parse_args出现错误解决办法

在Jupyter Notebook中使用args传递参数时出现错误：
```
---------------------------------------------------------------------------
SystemExit                                Traceback (most recent call last)
<ipython-input-11-9e7fc7cabd7c> in <module>
     10 parser.add_argument('--adjoint', action='store_true')
     11 parser.add_argument('--rate', type=float, default=1e-3)
---> 12 args = parser.parse_args()
     13 args.method = 'rk4'

/opt/tljh/user/lib/python3.7/argparse.py in parse_args(self, args, namespace)
   1750         if argv:
   1751             msg = _('unrecognized arguments: %s')
-> 1752             self.error(msg % ' '.join(argv))
   1753         return args
   1754 

/opt/tljh/user/lib/python3.7/argparse.py in error(self, message)
   2499         self.print_usage(_sys.stderr)
   2500         args = {'prog': self.prog, 'message': message}
-> 2501         self.exit(2, _('%(prog)s: error: %(message)s\n') % args)

/opt/tljh/user/lib/python3.7/argparse.py in exit(self, status, message)
   2486         if message:
   2487             self._print_message(message, _sys.stderr)
-> 2488         _sys.exit(status)
   2489 
   2490     def error(self, message):

SystemExit: 2
```
将原始代码进行修改，修改后为：

args = parser.parse_args(args=[])

修改后即可使用。

([Jupyter Notebook使用parser.parse_args出现错误解决办法](https://blog.csdn.net/qq_34277608/article/details/97369630))


## 深度学习GPU利用率较低，CPU利用率很低

[模型训练速度很慢的问题总结与分析](https://blog.csdn.net/qq_32998593/article/details/92849585)

总结一下，第一是增加batch size，增加GPU的内存占用率，尽量用完内存，而不要剩一半，空的内存给另外的程序用，两个任务的效率都会非常低。

第二，在数据加载时候，将num_workers线程数设置稍微大一点，推荐是8,16等，且开启pin_memory=True。，直接映射数据到GPU的专用内存，减少数据传输时间。

GPU和CPU的数据瓶颈得到解决。整体性能得到权衡。不要将整个任务放在主进程里面做，这样消耗CPU，且速度和性能极为低下。

`for batch_idx, (data,b_y) in enumerate(train_loader):`

这是[map style](https://pytorch.org/docs/stable/data.html#torch.utils.data.DataLoader)数据集

[https://blog.csdn.net/liudaohui11/article/details/107772849](https://blog.csdn.net/liudaohui11/article/details/107772849)

[Enumerate in python](https://www.geeksforgeeks.org/enumerate-in-python/#:~:text=Enumerate()%20method%20adds%20a,tuples%20using%20list()%20method.)

batch_idx为迭代项，data为mnist中的tensor，b_y为tensor对应的数字。

## torch

链表`h[-1]`即为读取链表最后一个元素

### transpose

pytorch中的transpose方法的作用是交换矩阵的两个维度，transpose(dim0, dim1) → Tensor，其和torch.transpose()函数作用一样。
torch.transpose():

```python
torch.transpose(input, dim0, dim1) → Tensor
```

Returns a tensor that is a transposed version of input. The given dimensions dim0 and dim1 are swapped.
The resulting out tensor shares it’s underlying storage with the input tensor, so changing the content of one would change the content of the other.
第二条是说输出和输入是共享一块内存的，所以两者同时改变。

```python
Parameters
input (Tensor) – the input tensor.

dim0 (int) – the first dimension to be transposed

dim1 (int) – the second dimension to be transposed

```

例：

```python
>>> x = torch.randn(2, 3)
>>> x
tensor([[ 1.0028, -0.9893,  0.5809],
        [-0.1669,  0.7299,  0.4942]])
>>> torch.transpose(x, 0, 1)
tensor([[ 1.0028, -0.1669],
        [-0.9893,  0.7299],
        [ 0.5809,  0.4942]])

```

需要注意的几点：
1、transpose中的两个维度参数的顺序是可以交换位置的，即transpose（x, 0, 1,) 和transpose（x, 1, 0）效果是相同的。如下：

```python
>>> import torch
>>> x = torch.randn(2, 3)
>>> x
tensor([[-0.4343,  0.4643, -1.1345],
        [-0.3667, -1.9913,  1.3485]])
>>> torch.transpose(x, 1, 0)
tensor([[-0.4343, -0.3667],
        [ 0.4643, -1.9913],
        [-1.1345,  1.3485]])
>>> torch.transpose(x, 0, 1)
tensor([[-0.4343, -0.3667],
        [ 0.4643, -1.9913],
        [-1.1345,  1.3485]])

```

2、transpose.()中只有两个参数，而torch.transpose（）函数中有三个参数。

### torch.view torch.unsqueeze torch.expand torch.squeeze

torch.view:

```python
import torch
data=torch.rand(5,1,2,2)
print(data)
data=data.view(1,-1)
print(data)


     tensor([[[[0.0941, 0.2773],
               [0.2198, 0.7047]]],
             [[[0.2529, 0.2298],
               [0.6547, 0.1199]]],
             [[[0.4158, 0.8207],
               [0.5976, 0.8898]]],
             [[[0.3180, 0.1207],
               [0.5187, 0.2206]]],
             [[[0.1408, 0.8267],
               [0.1628, 0.0117]]]])

     tensor([[0.0941, 0.2773, 0.2198, 0.7047, 0.2529, 0.2298, 0.6547, 0.1199, 0.4158,
              0.8207, 0.5976, 0.8898, 0.3180, 0.1207, 0.5187, 0.2206, 0.1408, 0.8267,
              0.1628, 0.0117]])

```

```python
import torch
data=torch.rand(5,1,2,2)
print(data)
data=data.view(2,2,5)
print(data)

     tensor([[[[0.1348, 0.3472],
               [0.5380, 0.4572]]],
             [[[0.0183, 0.4443],
               [0.5540, 0.6106]]],
             [[[0.9612, 0.9878],
               [0.6386, 0.2747]]],
             [[[0.1795, 0.8365],
               [0.8143, 0.9862]]],
             [[[0.6079, 0.6228],
               [0.8857, 0.5081]]]])
     tensor([[[0.1348, 0.3472, 0.5380, 0.4572, 0.0183],
              [0.4443, 0.5540, 0.6106, 0.9612, 0.9878]],
             [[0.6386, 0.2747, 0.1795, 0.8365, 0.8143],
              [0.9862, 0.6079, 0.6228, 0.8857, 0.5081]]])


```

torch.unsqueeze torch.expand:

```
def forward(self, ht, xf):
   '''
   Args:
   ht (tensor): (1, hidden_size)
   xf (tensor): (output_horizon, num_features)
   '''
   num_ts, output_horizon, num_features = xf.size()
   print(xf.size())
   num_ts, hidden_size = ht.size()
   print(ht.size())
   ht = ht.unsqueeze(1)
   print(ht.size())
   ht = ht.expand(num_ts, output_horizon, hidden_size)
   print(ht.size())
   # inp = (xf + ht).view(batch_size, -1) # batch_size, hidden_size, output_horizon
   inp = torch.cat([xf, ht], dim=2).view(num_ts, -1)
   print(torch.cat([xf, ht], dim=2).size(),inp.size())
   
   
     torch.Size([1, 72, 2])
     torch.Size([1, 50])
     torch.Size([1, 1, 50])
     torch.Size([1, 72, 50])
     torch.Size([1, 72, 52]) torch.Size([1, 3744])
```

torch.unsqueeze(2)和torch.unsqueeze(1)为改变添加维度的位置。

torch.squeeze为去掉维度为1的维度

### embedding

实际需求值y进行embedding:

```python
self.input_embed = nn.Linear(1, embedding_size)
y = y.unsqueeze(2)
y = self.input_embed(y)

```

### 制作自己的数据集

util 库来自[jingw2/demand_forecast](https://github.com/jingw2/demand_forecast)

```python
import util
# 将数据集划分为测试集和训练集
Xtr, ytr, Xte, yte = util.train_test_split(X, y)

```

### torch.zero_like

[https://pytorch.org/docs/stable/generated/torch.zeros_like.html?highlight=zeros_like#torch.zeros_like](https://pytorch.org/docs/stable/generated/torch.zeros_like.html?highlight=zeros_like#torch.zeros_like)


## 三个概念：Epoch, Batch, Iteration

Epoch（时期）：

当一个完整的数据集通过了神经网络一次并且返回了一次，这个过程称为一次>epoch。（也就是说，所有训练样本在神经网络中都 进行了一次正向传播 和一次反向传播 ）

再通俗一点，一个Epoch就是将所有训练样本训练一次的过程。

然而，当一个Epoch的样本（也就是所有的训练样本）数量可能太过庞大（对于计算机而言），就需要把它分成多个小块，也就是就是分成多个Batch 来进行训练。

Batch（批 / 一批样本）：

将整个训练样本分成若干个Batch。

Batch_Size（批大小）：

每批样本的大小。

Iteration（batch_idx/一次迭代）：

训练一个Batch就是一次Iteration（这个概念跟程序语言中的迭代器相似）。

为什么要使用多于一个epoch?

在神经网络中传递完整的数据集一次是不够的，而且我们需要将完整的数据集在同样的神经网络中传递多次。但请记住，我们使用的是有限的数据集，并且我们使用一个迭代过程即梯度下降来优化学习过程。如下图所示。因此仅仅更新一次或者说使用一个epoch是不够的。

作者：0与1的邂逅

链接：https://www.jianshu.com/p/22c50ded4cf7

来源：简书

著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

训练数据集包含 60,000 个样本, 测试数据集包含 10,000 样本. 在 MNIST 数据集中的每张图片由 28 x 28 个像素点构成, 每个像素点用一个灰度值表示. 在这里, 我们将 28 x 28 的像素展开为一个一维的行向量, 这些行向量就是图片数组里的行(每行 784 个值, 或者说每行就是代表了一张图片). 
