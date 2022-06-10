# 装饰器

    装饰器一般用于在变量传入前/后对传入参数进行加工处理

```python
# 这是装饰器代码，func为所装饰的函数
def decorate_func(func):
    def function(**kwargs):
        # 执行流程...
        func(**kwargs) # 执行它装饰的函数
        # 执行流程...
    return function 

@decorate_func
def test():
    print('1')
```