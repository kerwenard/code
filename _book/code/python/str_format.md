# 字符串的格式和操作

## 前部修饰符

| | | | |
|---|---|---|---|
| 修饰符 | 用法 | 举例 | 输出 |
| u | Unicode编码，常用于中文| print(u'中文') | 中文 |
| r | 普通字符串，即无效化转意字符 | print(r'\r\n') | \r\n |
| f | 格式化字符串，参考'str'.format() | print(f'{1+1},{变量名}') | 2,变量值 |
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

* .format
    格式化字符串
```python
print('{}'.format('abc'))
# ----------------------------------------------------------------
abc

print('{} {}'.format('a', 'b'))
# ----------------------------------------------------------------
ab

print('{0} {1}'.format('a', 'b'))
# ----------------------------------------------------------------
a b

print('{0} {0}'.format('a', 'b'))
# ----------------------------------------------------------------
a a
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