# 保存读取指定编码文件


```python
    # 读取文件
    def load_json_file(path):
        f = open(path, 'r',encoding='utf-8')
        content = f.read()
        f.close()
        return content

    # 写入文件
    def write_file(path, data):
        f2 = open(os.path.abspath('.')+path, 'w', encoding='utf-8')
        f2.write(data)
        f2.close()
```