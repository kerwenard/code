# 文件读写

[参考地址](https://docs.microsoft.com/zh-cn/dotnet/csharp/programming-guide/file-system/how-to-read-from-a-text-file)

* 读取
```c#
            string text = System.IO.File.ReadAllText(@"C:\zsdq.md");
            DcmarkdownRead data = new DcmarkdownRead(text);
            MessageBox.Show(data.deviceName);
```