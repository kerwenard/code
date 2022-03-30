# 插件化代码

## 示例

* 载入函数

```python
# main.py
import os

def loadPlugins():
    for filename in os.listdir("./plugins"):
        if not filename.endswith(".py"):
            continue
        pluginName = os.path.splitext(filename)[0]
        plugin = __import__("plugins."+pluginName, fromlist=[pluginName])
        plugin.run()


if __name__ == "__main__":
    loadPlugins()

```

```python
# ./plugins/name.py
def run():
    print ('111')
```

* 载入类

```python
# main.py
import os


def loadPlugins():
    for filename in os.listdir("./plugins"):
        if not filename.endswith(".py"):
            continue
        pluginName = os.path.splitext(filename)[0]
        plugin = __import__("plugins."+pluginName, fromlist=[pluginName])
        plugin.data.run()


if __name__ == "__main__":
    loadPlugins()

```

```python
# ./plugins/name.py
class data():
    def run():
        print('222')
```