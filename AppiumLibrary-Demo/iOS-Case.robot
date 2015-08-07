*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
case1
    Open Application    http://localhost:4723/wd/hub    alias=Myapp1    platformName=iOS    platformVersion=9.0    deviceName=iPhone 6    app=${CURDIR}${/}app${/}TestApp.app
    Input Text    name=TextField1    13
    Input Text    name=TextField2    22
    Click Button    Compute Sum
    Click Button    done
    Click Button    show alert
    Click Button    OK
    Comment    Long Press    //UIAApplication[1]/UIAWindow[2]/UIASlider[1]
    Swipe    178    356    133    356
    Comment    contact alert
    Comment    location alert
    Comment    disabled button
    Comment    Test Gesture
    Comment    Crash
    Comment    more, symbols
    Comment    Next keyboard
    Comment    Dictate
    Comment    done
