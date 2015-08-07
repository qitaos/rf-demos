*** Settings ***
Library           ExampleLibrary.OtherLibrary

*** Test Cases ***
case1
    ${count}    Count
    Should Be Equal As Integers    ${count}    1
    ${count}    Count
    Should Be Equal As Integers    ${count}    2
    Clear Counter
    ${count}    Count
    Should Be Equal As Integers    ${count}    1
