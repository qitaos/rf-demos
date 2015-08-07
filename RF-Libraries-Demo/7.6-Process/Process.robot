*** Settings ***
Library           Process

*** Test Cases ***
Case1
    ${result}    Run Process    python    -c    print "robot"
    Log    ${result.stdout}
    Run Process    python    -c    print "rf"    alias=rf
    ${presult}    Get Process Result    rf
    Log    ${presult.stdout}
    Start Process    python    alias=py1
    ${pid}    Get Process Id
    ${pobj}    Get Process Object
    ${isrun}    Is Process Running    py1
    Process Should Be Running    py1
    Send Signal To Process    2    py1
    Process Should Be Stopped
    Start Process    python    alias=py2
    Start Process    ping    alias=ping
    ${wait}    Wait For Process    ping
    Switch Process    py2
    Terminate Process    ping
    Terminate All Processes

Backup-Allkw
    Comment    Run Process
    Comment    Start Process
    Comment    Is Process Running
    Comment    Process Should Be Running
    Comment    Process Should Be Stopped
    Comment    Wait For Process
    Comment    Terminate Process
    Comment    Terminate All Processes
    Comment    Send Signal To Process
    Comment    Get Process Id
    Comment    Get Process Object
    Comment    Get Process Result
    Comment    Switch Process
