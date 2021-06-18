# json文件保存与读取

yield具有一个return功能

同时所在函数的执行顺序不同

```python
    # 读取json文件
    def load_json_file(path):
        f = open(path, 'r',encoding='utf-8')
        content = f.read()
        if(content==''):
            return {}
        a = json.loads(content)
        f.close()
        return a

    # 写入json文件
    def write_json_file(path,data):
        b = json.dumps(data, ensure_ascii=False)
        f2 = open(path, 'w',encoding='utf-8')
        f2.write(str(b))
        f2.close()
```