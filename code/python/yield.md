# yield

yield具有一个return功能

同时所在函数的执行顺序不同

```python
def yield_test(n):  
    for i in range(n):  
        print('1')  
        yield 1 # 执行到此处之后返回，下一次执行下面的语句
        print("2")  

for i in yield_test(5):  
    print("-------------")  
```

日志

```
1
-------------
2
1
-------------
2
1
-------------
2
1
-------------
2
1
-------------
2
```