*** Settings ***
Resource          elements.robot

*** Test Cases ***
Case2
    打开浏览器    http://127.0.0.1:7272/html/
    输入用户名    demo
    输入密码    mode
    点击登录
    验证页面文本    Login succeeded
    关闭浏览器

Case3
    打开浏览器    http://127.0.0.1:7272/html/
    输入用户名    demo
    输入密码    wrong
    点击登录
    验证页面文本    Login failed
    关闭浏览器
