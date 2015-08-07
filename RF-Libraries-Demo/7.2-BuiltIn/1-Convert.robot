*** Test Cases ***
Case1
    ${a}    Set Variable    100
    ${integer}    Convert To Integer    ${a}
    ${number}    Convert To Number    ${a}
    ${binary}    Convert To Binary    ${a}
    ${octal}    Convert To Octal    ${a}
    ${hex}    Convert To Hex    ${a}
    ${string}    Convert To String    ${a}
    ${bytes}    Convert To Bytes    ${a}
    ${boolean}    Convert To Boolean    ${a}

Case2
    ${a}    Set Variable    100
    ${integer}    Convert To Integer    ${a}    2
    ${binary}    Convert To Binary    ${a}    8
    ${octal}    Convert To Octal    ${a}    16
    ${hex}    Convert To Hex    ${a}    10
    ${string}    Convert To String    ${a}
    ${bytes}    Convert To Bytes    ${a}
    ${boolean}    Convert To Boolean    ${a}
