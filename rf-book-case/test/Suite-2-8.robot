*** Variables ***
${val1}           value
@{listVal1}       abc    def    123

*** Test Cases ***
Case-2-8-1
    log    ${val1}
    log many    @{listVal1}
    log    %{ANDROID_HOME}
    ${shuzhi}    Set Variable    ${2.6}    2.6

Case-2-8-2
    ${val2}    Set Variable    abcd
    ${valif2}    Set Variable If    '${val2}' == 'abcd'    efgh    ace
    ${getVal1}    Get Length    ${val2}
    ${getVal2}    Get Time
    log    ${val1}
    Run Keyword If    '${val2}' == 'abcd'    log    efgh
    log    0123${val2}efgh
    log    ${val2[2]}
    log    ${val2[0:3]}
    ${cal1}    Set Variable    123
    ${cal2}    Evaluate    ${cal1}+1
    ${cal1}    Set Variable    '123'
    ${cal2}    Evaluate    int(${cal1})+1

Case-2-8-3
    @{Val3}    Set Variable    1    2    3
    @{listVal3}    Create List    3    2    1
    Run Keyword    log    abcd    WARN
    @{argVal3}    Create List    abcd    WARN
    ${keyword}    Set Variable    log
    Run Keyword    ${keyword}    @{argVal3}
    log    @{argVal3}
    @{useList}    Create List    a    b    c
    log    @{useList}[1]
    log    ${useList[1]}
    @{listA}    Create List    1    2
    @{listB}    Create List    3    4
    @{listC}    Create List    ${listA}    ${listB}    5
    log    @{listC}[1][1]
    log    ${listC[1][1]}
    log    @{listC[1]}[1]

Case-2-8-4
    @{argVal4}    Create List    abcd    WARN
    log    ${argVal4}
    ${argVal4}    Create List    1234    5678
    log    ${argVal4}
    ${listVal4}    Create List    1234    5678
    log    =@{listVal4}=
    log    =@{argVal4}=
    @{argVal4}    Create List    4444    8888
    log    ${argVal4}
