*** Settings ***
Resource          newresource.txt

*** Test Cases ***
Case-2-9-2
    随机字符    arg1value

Case-2-9-3
    ${getArg1}    随机字符-1    arg1value
    log    ${getArg1}
    ${getArg2}    随机字符-2    arg1value
    log    ${getArg2}
    @{ListArg2}    随机字符-2    arg1value
    log    =@{ListArg2}=
    ${valArg1}    ${valArg2}    随机字符-2    arg1value
    log    ${valArg1}=${valArg2}
    ${getArg3}    随机字符-3    arg1value    \    arg3
    log    ${getArg3}
    @{ListArg3}    随机字符-3    arg1value    \    arg3
    log    =@{ListArg3}=
