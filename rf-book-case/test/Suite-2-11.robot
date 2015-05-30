*** Settings ***
Library           AutoItLibrary

*** Test Cases ***
Case-2-11-1
    [Tags]    RunA    RunAll
    log    case-2-11-1

Case-2-11-2
    [Tags]    RunB    RunAll
    log    case-2-11-2

Case-2-11-3
    [Tags]    RunA    RunB    RunAll
    log    case-2-11-3

Case-2-11-4
    [Tags]    RunAll
    log    case-2-11-4
