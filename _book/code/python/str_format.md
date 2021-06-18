# 字符串的各种操作

## 格式化 format

* 方法1
```python
str = 'test1 %s test2 %s' % ('a','b')
print(str)

# 输出
'test1 a test2 b'
```

* 方法2
```python
str='test1 {} test2 {}'
str.format('a','b')

# 输出
'test1 a test2 b'

str='test1 {1} test2 {0}'
str.format('b','a')

# 输出
'test1 a test2 b'
```

## 切割

```python
str='123'
str=str[0:1]
print(str)

# 输出
'1'
```

## 按指定字符分割

```python
txt = 'a|a'
x = txt.split('|')
```