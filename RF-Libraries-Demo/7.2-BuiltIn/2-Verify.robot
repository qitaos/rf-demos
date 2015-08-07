*** Test Cases ***
Case1
    Fail    停止当前Case
    Log    不会打印

Case2
    Fatal Error    停止所有Case
    Log    后面的案例都会停止

Case3
    Should Not Be Empty    A
    Should Be Empty    ${EMPTY}
    Should Not Be True    0
    Should Be True    1
    Should Not Be Equal    1    2
    Should Be Equal    2    2
    Should Be Equal As Integers    3    3
    Should Not Be Equal As Integers    4    5
    Should Be Equal As Numbers    4.0    4
    Should Not Be Equal As Numbers    4.1    4.2
    Should Be Equal As Strings    ab    ab
    Should Not Be Equal As Strings    A    B
    Should Start With    HELLO    HE
    Should Not Start With    HELLO    LLO
    Should End With    HELLO    LO
    Should Not End With    HELLO    L
    Should Contain    HELLO    L
    Should Not Contain    HELLO    X
    Should Contain X Times    HELLO    L    2
    Should Match    AAAB    A*B
    Should Not Match    AA3    A?B
    Should Match Regexp    2    \\d
    Should Not Match Regexp    a    \\d

Case4
    ${count}    Get Count    hello world    o
    @{list}    Create List    1    2
    ${len}    Get Length    ${list}
    Length Should Be    ${list}    ${len}
