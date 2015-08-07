*** Settings ***
Library           String

*** Test Cases ***
Case1-Convert
    ${str}    Set Variable    Hello World
    ${lower}    Convert To Lowercase    ${str}
    ${upper}    Convert To Uppercase    ${str}
    ${a}    Set Variable    中文
    ${utf8}    Encode String To Bytes    ${a}    UTF-8
    ${gbk}    Encode String To Bytes    ${a}    GBK
    ${utf8cn}    Decode Bytes To String    ${utf8}    UTF-8
    ${gbkcn}    Decode Bytes To String    ${gbk}    GBK

Case2-Line
    ${str}    Set Variable    hello\nworld\nqitao\nrobot
    ${linecount}    Get Line Count    ${str}
    ${lines}    Split To Lines    ${str}
    ${line}    Get Line    ${str}    1
    ${linecontain}    Get Lines Containing String    ${str}    t
    ${lines}    Split To Lines    ${linecontain}

Case3-String
    ${str}    Set Variable    hello world qitaos
    ${replace}    Replace String    ${str}    o    h
    ${remove}    Replace String    ${str}    wo    ${EMPTY}
    ${remove}    Remove String    ${str}    wo
    ${split}    Split String    ${str}
    ${splitright}    Split String From Right    ${str}    \    1
    ${splitchar}    Split String To Characters    ${str}
    ${fetchright}    Fetch From Right    ${str}    o
    ${fetchleft}    Fetch From Left    ${str}    o
    ${sub}    Get Substring    ${str}    6
    Log    ${str[6:]}
    ${gen}    Generate Random String    4    [UPPER]

Backup-AllKw
    Comment    Convert To Lowercase
    Comment    Convert To Uppercase
    Comment    Encode String To Bytes
    Comment    Decode Bytes To String
    Comment
    Comment    Get Line Count
    Comment    Split To Lines
    Comment    Get Line
    Comment    Get Lines Containing String
    Comment    Get Lines Matching Pattern
    Comment    Get Lines Matching Regexp
    Comment
    Comment    Replace String
    Comment    Replace String Using Regexp
    Comment    Remove String
    Comment    Remove String Using Regexp
    Comment    Split String
    Comment    Split String From Right
    Comment    Split String To Characters
    Comment    Fetch From Right
    Comment    Fetch From Left
    Comment    Generate Random String
    Comment    Get Substring
    Comment
    Comment    Should Be String
    Comment    Should Not Be String
    Comment    Should Be Unicode String
    Comment    Should Be Byte String
    Comment    Should Be Lowercase
    Comment    Should Be Uppercase
    Comment    Should Be Titlecase
