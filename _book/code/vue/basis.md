# 基础

* 基础类型

```html
    <div id="app-3"></div>

    <script>
            var app = new Vue({
            el: '#app.3',
            data: {
                //数据
            },
            methods: {
                //方法
            }
  }
        })
    </script>
```

* for等等

```html
    <div id="app-4">
        <ol>
            <li v-for="todo in todos">
                {{ todo.text }}
            </li>
        </ol>
    </div>

    <script>
        var app4 = new Vue({
            el: '#app-4',
            data: {
                todos: [
                    { text: '学习 JavaScript' },
                    { text: '学习 Vue' },
                    { text: '整个牛项目' }
                ]
            }
        })
    </script>
```