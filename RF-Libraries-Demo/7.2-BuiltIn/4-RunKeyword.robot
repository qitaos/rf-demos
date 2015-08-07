*** Test Cases ***
Case1
    ${var}    Set Variable    log
    Run Keyword    ${var}    abc
    Run Keywords    ${var}    abc
    ...    AND    ${var}    EFG
    Run Keyword If    '${var}' == 'log'    ${var}    iflog
    Run Keyword Unless    '${var}' == 'test'    ${var}    unless
    Run Keyword And Ignore Error    Fail    ignore
    ${status}    Run Keyword And Return Status    kw1    selenium
    Run Keyword And Continue On Failure    Fail
    Run Keyword And Expect Error    *    Fail
    Repeat Keyword    2    kw1    repeat
    Wait Until Keyword Succeeds    30s    5s    kw1

*** Keywords ***
kw1
    [Arguments]    ${input}=
    log    ${input}
    [Return]    ${input}
