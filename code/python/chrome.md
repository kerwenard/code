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

    browser = None
    # try:
    browser = webdriver.Chrome("chromedriver", options=chrome_options)
    browser.get(url)
    Wait(browser, 50) # 等待
    # 等待元素名为xx的元素出现
    Wait(browser, 50).until(
        EC.presence_of_element_located((By.CLASS_NAME, "transitBubble")))
    # 获取cookie
    cookie = browser.get_cookies()
    # 获取网页html
    html = browser.page_source

    browser.quit()
    return html


def drag_and_drop(browser, offset):
    '''移动某个元素'''
    knob = browser.find_element_by_xpath('//*[@id="slide-img-btn"]')
    ActionChains(browser).drag_and_drop_by_offset(knob, offset, 0).perform()
```