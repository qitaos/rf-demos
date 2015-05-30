*** Settings ***
Library           Selenium2Library

*** Keywords ***
打开浏览器
    [Arguments]    ${url}
    Open Browser    ${url}    ie

输入用户名
    [Arguments]    ${username}
    Input Text    name=username_field    ${username}

输入密码
    [Arguments]    ${password}
    Input Password    name=password_field    ${password}

点击登录
    Click Button    name=login_button

验证页面文本
    [Arguments]    ${verText}
    Page Should Contain    ${verText}

关闭浏览器
    Close Browser
