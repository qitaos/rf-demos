*** Test Cases ***
Case1
    :FOR    ${in}    IN RANGE    5
    \    log    ${in}
    \    Run Keyword If    ${in} == 3    Continue For Loop
    \    log    cfloop=${in}
    :FOR    ${in}    IN RANGE    5
    \    log    ${in}
    \    Continue For Loop If    ${in} == 2
    \    log    cfloopif=${in}
    :FOR    ${in}    IN RANGE    5
    \    log    ${in}
    \    Run Keyword If    ${in} == 3    Exit For Loop
    \    log    exitloop=${in}
    :FOR    ${in}    IN RANGE    5
    \    log    ${in}
    \    Exit For Loop If    ${in} == 2
    \    log    exitloopif=${in}
    Pass Execution    pass后面的不会执行
    Pass Execution If

Case2
    @{LIST}    Create List    bbb    baz
    ${index} =    Find-Index    baz    @{LIST}
    Should Be Equal    ${index}    ${1}
    ${index} =    Find-Index    non existing    @{LIST}
    Should Be Equal    ${index}    ${-1}
    Log    ${index}

*** Keywords ***
Find-Index
    [Arguments]    ${element}    @{items}
    ${index} =    Set Variable    ${0}
    : FOR    ${item}    IN    @{items}
    \    Run Keyword If    '${item}' == '${element}'    Return From Keyword    ${index}
    \    ${index} =    Set Variable    ${index + 1}
    Run Keyword And Return    kw2    ${-1}

kw2
    [Arguments]    ${t}
    log    ${t}
    [Return]    ${t}
