*** Settings ***
Test Teardown     close all browsers
Library           Selenium2Library

*** Test Cases ***
cookie操作
    Open Browser    http://localhost:8000/    ie
    ${co}    Get Cookies
    Add Cookie    test    qitao
    Add Cookie    robot    framework
    ${co}    Get Cookies
    ${value}    Get Cookie Value    test
    Close Browser

javascript操作
    Open Browser    http://localhost:8000/    ie
    Execute Javascript    document.getElementById("infoBtn").disabled=false
    Execute Javascript    $("#ProductName").val("jquery")
    Execute Javascript    $("#Quantity").val("123")
    Execute Javascript    $("#submitBtn").click()
    Sleep    5s
    ${pr}    Execute Javascript    return $("#Pr").html()
    ${qn}    Execute Javascript    return $("#Qn").html()
    Close Browser

截图
    Open Browser    http://localhost:8000/    ie
    Capture Page Screenshot
    Select Frame    id=fra
    Capture Page Screenshot    iframe.png
    Close Browser

waiting
    Open Browser    http://localhost:8000/    ie
    Execute Javascript    document.getElementById("infoBtn").disabled=false
    Execute Javascript    $("#ProductName").val("jquery")
    Execute Javascript    $("#Quantity").val("123")
    Execute Javascript    $("#submitBtn").click()
    Wait Until Page Contains    123
    ${pr}    Execute Javascript    return $("#Pr").html()
    ${qn}    Execute Javascript    return $("#Qn").html()
    Close Browser
