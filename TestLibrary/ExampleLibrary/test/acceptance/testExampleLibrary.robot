*** Settings ***
Library           ExampleLibrary

*** Test Cases ***
case1
    Set Log Level    DEBUG
    ${num}    Set Variable    4
    ${s}    Gen Nums    ${num}
    ${len}    Get Length    ${s}
    Should Be Equal As Integers    ${num}    ${len}
    @{list}    Create List    4    5
    Arg Demo    1    3    @{list}
    Freearg Demo    test=1    aaa=b
