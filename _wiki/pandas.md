```
import pandas as pd
pd.read_csv(filepath_or_buffer,header,parse_dates,index_col)
参数：
filepath_or_buffer：
字符串，或者任何对象的read()方法。这个字符串可以是URL，有效的URL方案包括http、ftp、s3和文件。可以直接写入"文件名.csv"

header：
将行号用作列名，且是数据的开头。
注意当skip_blank_lines=True时，这个参数忽略注释行和空行。所以header=0表示第一行是数据而不是文件的第一行。

【注】：如果csv文件中含有中文，该如何？
1、可修改csv文件的编码格式为unix(不能是windows)（用notepad++打开修改）
2、df = pd.read_csv(csv_file, encoding="utf-8")，设置读取时的编码或 encoding="gbk"
3、在使用列名来访问DataFrame里面的数据时，对于中文列名，应该在列名前面加'u'，表示后面跟的字符串以unicode格式存储，如下所示
print(df[u"经度(度)"])

(1)、header=None
即指定原始文件数据没有列索引，这样read_csv为其自动加上列索引{从0开始}
ceshi.csv原文件内容：
c1,c2,c3,c4
a,0,5,10
b,1,6,11
c,2,7,12
d,3,8,13
e,4,9,14

df=pd.read_csv("ceshi.csv",header=None)
print(df)
结果：
    0   1   2   3
0  c1  c2  c3  c4
1   a   0   5  10
2   b   1   6  11
3   c   2   7  12
4   d   3   8  13
5   e   4   9  14

(2)、header=None，并指定新的索引的名字names=seq序列
df=pd.read_csv("ceshi.csv",header=None,names=range(2,6))
print(df)
结果：
    2   3   4   5
0  c1  c2  c3  c4
1   a   0   5  10
2   b   1   6  11
3   c   2   7  12
4   d   3   8  13
5   e   4   9  14


(3)、header=None，并指定新的索引的名字names=seq序列；如果指定的新的索引名字的序列比原csv文件的列数少，那么就截取原csv文件的倒数列添加上新的索引名字
df=pd.read_csv("ceshi.csv",header=0,names=range(2,4))
print(df)
结果：
        2   3
c1 c2  c3  c4
a  0    5  10
b  1    6  11
c  2    7  12
d  3    8  13
e  4    9  14


(4)、header=0
表示文件第0行（即第一行，索引从0开始）为列索引
df=pd.read_csv("ceshi.csv",header=0)
print(df)
结果：
  c1  c2  c3  c4
0  a   0   5  10
1  b   1   6  11
2  c   2   7  12
3  d   3   8  13
4  e   4   9  14

(5)、header=0，并指定新的索引的名字names=seq序列
df=pd.read_csv("ceshi.csv",header=0,names=range(2,6))
print(df)
结果：
   2  3  4   5
0  a  0  5  10
1  b  1  6  11
2  c  2  7  12
3  d  3  8  13
4  e  4  9  14
注：这里是把原csv文件的第一行换成了range(2,6)并将此作为列索引

(6)、header=0，并指定新的索引的名字names=seq序列；如果指定的新的索引名字的序列比原csv文件的列数少，那么就截取原csv文件的倒数列添加上新的索引名字
df=pd.read_csv("ceshi.csv",header=0,names=range(2,4))
print(df)
结果：
     2   3
a 0  5  10
b 1  6  11
c 2  7  12
d 3  8  13
e 4  9  14


parse_dates：
布尔类型值 or int类型值的列表 or 列表的列表 or 字典（默认值为 FALSE）
(1)True:尝试解析索引
(2)由int类型值组成的列表(如[1,2,3]):作为单独数据列，分别解析原始文件中的1,2,3列
(3)由列表组成的列表(如[[1,3]]):将1,3列合并，作为一个单列进行解析
(4)字典(如{'foo'：[1, 3]}):解析1,3列作为数据，并命名为foo


index_col：
int类型值，序列，FALSE（默认 None）
将真实的某列当做index（列的数目，甚至列名）
index_col为指定数据中那一列作为Dataframe的行索引，也可以可指定多列，形成层次索引，默认为None,即不指定行索引，这样系统会自动加上行索引。

举例：
df=pd.read_csv("ceshi.csv",index_col=0)
print(df)
结果：
    c2  c3  c4
c1            
a    0   5  10
b    1   6  11
c    2   7  12
d    3   8  13
e    4   9  14
表示：将第一列作为索引index

df=pd.read_csv("ceshi.csv",index_col=1)
print(df)
结果：
   c1  c3  c4
c2           
0   a   5  10
1   b   6  11
2   c   7  12
3   d   8  13
4   e   9  14
表示：将第二列作为索引index


df=pd.read_csv("ceshi.csv",index_col="c1")
print(df)
结果：
    c2  c3  c4
c1            
a    0   5  10
b    1   6  11
c    2   7  12
d    3   8  13
e    4   9  14
表示：将列名"c1"这里一列作为索引index
【注】：这里将"c1"这一列作为索引即行索引后，"c1"这列即不在属于列名这类，即不能使用df['c1']获取列值
【注】：read_csv()方法中header参数和index_col参数不能混用，因为header指定列索引，index_col指定行索引，一个DataFrame对象只有一种索引

squeeze：
布尔值，默认FALSE
TRUE 如果被解析的数据只有一列，那么返回Series类型。
```
