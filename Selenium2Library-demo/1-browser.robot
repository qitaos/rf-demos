*** Settings ***
Test Teardown     close all browsers
Library           Selenium2Library

*** Test Cases ***
切换浏览器
    Open Browser    http://localhost:8000/    ie    local
    ${title1}    Get Title
    Open Browser    http://www.baidu.com    ie    baidu
    ${title2}    Get Title
    Switch Browser    local
    ${title1}    Get Title
    Switch Browser    baidu
    ${title2}    Get Title
    Close All Browsers

选择窗口
    Open Browser    http://localhost:8000/    ie
    Click Button    id=pay
    Confirm Action
    Select Window    付款
    Log Source
    Close Browser

选择frame
    Open Browser    http://localhost:8000/    ie
    Select Frame    id=fra
    ${list}    Get List Items    id=buy
    Unselect Frame
    Log Source
    Close Browser
