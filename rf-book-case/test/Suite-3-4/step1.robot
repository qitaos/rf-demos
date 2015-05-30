*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Case1
    Open Browser    http://127.0.0.1:7272/html/    ie
    Input Text    name=username_field    demo
    Input Password    name=password_field    mode
    Click Button    name=login_button
    Page Should Contain    Login succeeded
    Close Browser
