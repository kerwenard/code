# 无头浏览器

```python
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import WebDriverWait as Wait


def get_cookies(url):
    chrome_options = Options()
    # 显示 Chrome 浏览器弹出界面
    chrome_options.add_argument("window-size=800x600")
    experimentalFlags = [
        "same-site-by-default-cookies@1",
        "cookies-without-same-site-must-be-secure@2",
    ]
    chromeLocalStatePrefs = {
        "browser.enabled_labs_experiments": experimentalFlags}
    chrome_options.add_experimental_option("localState", chromeLocalStatePrefs)

    browser = webdriver.Chrome("chromedriver", options=chrome_options)
    browser.get(url)

    browser.quit()
    return html


def drag_and_drop(browser, offset):
    '''移动某个元素'''
    knob = browser.find_element_by_xpath('//*[@id="slide-img-btn"]')
    ActionChains(browser).drag_and_drop_by_offset(knob, offset, 0).perform()
```
## 常用chrome_options参数
```python
# 伪装自动控制，对部分反爬措施有效
chrome_options.add_argument('--disable-blink-features=AutomationControlled')
# 固定请求头
chrome_options.add_argument("--user-agent=Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.86 Safari/537.36")
# 新开浏览器的大小
chrome_options.add_argument("window-size=800x600")
```

## 用到的属性
```python
    # cookie
    cookie = browser.get_cookies()
    # 网页html
    html = browser.page_source
```

## 查找某个元素

```python
# 不仅仅是xpath，可以用id，css等形式
element=browser.find_element_by_xpath('//*[@id="aircargoform"]/div/div[3]/input')

# 查找完元素后可执行操作
element.send_keys('123123') # 向可以接受字符的元素填入字符
element.click() # 单击操作
```
## 等待

```python
    # 隐式等待
    browser.implicitly_wait(3)
    # 等待某个元素加载完成
    Wait(browser, 50).until(
        EC.presence_of_element_located((By.XPATH, '/html/body/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td/a/img')))
```

## 切换窗口
```python
    # 通过修改句柄方式实现
    browser.switch_to_window(browser.window_handles[1])
```