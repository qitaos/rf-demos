*** Settings ***
Resource          elements.robot

*** Keywords ***
登录验证流程
    [Arguments]    ${url}    ${username}    ${password}    ${text}
    打开浏览器    ${url}
    输入用户名    ${username}
    输入密码    ${password}
    点击登录
    验证页面文本    ${text}
    关闭浏览器
