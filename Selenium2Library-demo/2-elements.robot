*** Settings ***
Test Teardown     close all browsers
Library           Selenium2Library

*** Test Cases ***
文本框操作
    Open Browser    http://localhost:8000/    ie
    Input Text    id=ProductName    新产品
    ${value}    Get Value    ProductName
    Assign Id To Element    name=Quantity    Quan
    Input Text    id=Quan    111
    ${qn}    Get Value    Quan
    Close Browser

按钮操作
    Open Browser    http://localhost:8000/    ie
    Input Text    id=ProductName    新产品
    Input Text    id=Quantity    111
    Click Button    id=submitBtn
    ${text}    Get Text    infoBtn
    Close Browser

获取页面元素值
    Open Browser    http://localhost:8000/    ie
    Input Text    id=ProductName    新产品
    ${value}    Get Value    ProductName
    Input Text    id=Quantity    222
    Click Button    id=submitBtn
    ${textbtn}    Get Text    submitBtn
    ${text}    Get Element Attribute    Pr@innerText
    ${name}    Get Element Attribute    ProductName@name
    Close Browser

下拉列表
    Open Browser    http://localhost:8000/    ie
    Select From List    selectdemo    第三个元素
    ${label}    Get Selected List Label    selectdemo
    Select From List By Index    selectdemo    0
    ${value}    Get Selected List Value    selectdemo
    Select From List By Value    selectdemo    item2
    ${label}    Get Selected List Label    selectdemo
    Close Browser

其他元素操作
    Open Browser    http://localhost:8000/    ie
    Click Element    CheckYes
    Select Checkbox    CheckNo
    Unselect Checkbox    CheckYes
    Press Key    CheckNo    \\13
    ${yes}    Get Value    CheckYes
    Select Radio Button    radio1    B
    ${radio}    Get Element Attribute    radioB@checked
    ${value}    Get Value    radioB
    Click Link    上传下载demo页面
    Sleep    2s
    ${title}    Get Title
    Close Browser

表格操作
    Open Browser    http://localhost:8000/    ie
    ${cell}    Get Table Cell    buy    1    1
    ${cell}    Get Table Cell    buy    1    2
    Table Cell Should Contain    buy    1    1    产品
    Table Cell Should Contain    buy    1    2    数量
    Close Browser
