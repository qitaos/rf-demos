*** Test Cases ***
Case1
    No Operation
    Sleep    2s
    ${cate}    Catenate    hello    world
    Comment    这是注释
    Set Log Level    trace
    Log    log文本
    Log Many    a    b    c
    Log To Console    console
