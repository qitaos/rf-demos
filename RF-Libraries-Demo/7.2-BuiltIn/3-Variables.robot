*** Test Cases ***
Case1
    ${var}    Set Variable    a
    ${var2}    Set Variable If    '${var}'<> '0'    9
    Set Test Variable    ${testvar}    test
    Set Suite Variable    ${suitevar}    suite
    Set Global Variable    ${globalvar}    global
    ${getvar}    Get Variables
    ${varval}    Get Variable Value    ${var}
    ${varval}    Get Variable Value    ${var3}    ${var2}
    Log Variables
    Variable Should Exist    ${testvar}
    Variable Should Not Exist    ${qtvar}
    ${globalvar}    Replace Variables    ${testvar}
