*** Settings ***

*** Test Cases ***
Case-2-10-1
    : FOR    ${i}    IN RANGE    10
    \    LOG    i=${i}
    : FOR    ${j}    IN RANGE    1    10
    \    LOG    j=${j}
    : FOR    ${k}    IN RANGE    10    1    -2
    \    LOG    k=${k}
    : FOR    ${m}    IN    A    B    C
    \    LOG    m=${m}
    @{listVal}    Create List    1    2    F
    : FOR    ${n}    IN    @{listVal}
    \    LOG    n=${n}
    : FOR    ${i}    IN RANGE    3
    \    LOG    i=${i}
    \    ForJ    ${i}
    : FOR    ${x}    IN RANGE    3
    \    LOG    x=${x}
    ForJ    ${x}

Case-2-10-2
    ${a}    Set Variable    0
    ${b}    Set Variable    5
    #多行写法
    Run Keyword If    ${a} >= 1    log    1    ELSE IF    ${b} <= 4    log
    ...    2    ELSE    log    3
    #单行写法
    Run Keyword If    ${a} >= 1    No Operation    ELSE    log    6

Case-2-10-3
    :FOR    ${i}    IN RANGE    10
    \    LOG    i=${i}
    \    Run Keyword If    ${i}>=7    Exit For Loop
    :FOR    ${i}    IN RANGE    10
    \    LOG    i=${i}
    \    Exit For Loop If    ${i}>=7

*** Keywords ***
ForJ
    [Arguments]    ${arg1}
    : FOR    ${j}    IN RANGE    2
    \    LOG    arg=${arg1};j=${j}
