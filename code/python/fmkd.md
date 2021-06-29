# markdown生成

```python
# -*- coding: UTF-8 -*-
#     ____          __       __
#    / __/___ ___  / /______/ /
#   / /_/ __ `__ \/ //_/ __  /
#  / __/ / / / / / ,< / /_/ /
# /_/ /_/ /_/ /_/_/|_|\__,_/   1.0

import copy
import os


class FMKD():
    def __init__(self):
        self.buffer = ''
        pass

    def header(self, num, text):
        self._wrap()
        for each in range(num):
            self.buffer += '#'
        self.buffer += ' '+text
        pass

    def append(self, text):
        self._wrap()
        self._wrap()
        self.buffer += text
        pass

    def font(text, format):
        t = text
        # 斜
        if(format == 'O'):
            t = '*'+t+'*'
        # 粗
        elif(format == 'C'):
            t = '*'+t+'*'
        # 粗斜
        elif(format == 'OC' or format == 'CO'):
            t = '***'+t+'***'
        t = text
        return text

    def font_del(text):
        return '~~'+text+'~~'

    def font_pic(path):
        return '![avatar]('+path+') '

    def font_html_pic(path):
        return '<img src="'+path+'" width = "650"  alt="图片名称" align=center />'

    def font_hyperlinks(text, url):
        return '['+text+']('+url+') '

    def font_underscore(text):
        return '<u>'+text+'</u>'

    def list(text):
        return '* '+text

    def split_line(self):
        self._wrap()
        self.buffer += '***'
        pass

    def _wrap(self):
        if(self.buffer != ''):
            self.buffer += '\n'
        pass

    def wrap(self):
        self.buffer += '\n'
        pass

    def form(self, title, data):
        length = len(title)
        table= copy.deepcopy(title)
        table.extend(data)
        if(not length or not table or length == 0 or len(table) == 0):
            return
        if(len(table) % length != 0):
            return

        self._wrap()
        self.buffer += '| '+str.join(' | ', table[0:length])+' |'
        self._wrap()
        self.buffer += '| '
        for each in range(length):
            self.buffer += ':-- |'

        self._wrap()
        t = copy.deepcopy(table[length:len(table)])
        d = range(int(len(t)/length))
        for each in d:
            list1 = t[each*length:each*length+length]
            self.buffer += '| '+str.join(' | ', list1)+' |'
            self._wrap()
        pass

    def output(self, path):
        t = open(path, 'w', encoding='utf-8')
        t.write(self.buffer)
        t.close()
        pass

    def text(self):
        return self.buffer
```