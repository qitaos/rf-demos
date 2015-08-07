*** Settings ***
Library           OperatingSystem

*** Test Cases ***
Case1-Env
    ${output}    Run    df -h
    ${rc}    Run and Return RC    df -h
    ${rcandoutput}    Run and Return RC and Output    df -h
    ${path}    Get Environment Variable    PATH
    Set Environment Variable    TEST    ride
    ${test}    Get Environment Variable    TEST
    Append To Environment Variable    TEST    robot
    ${envs}    Get Environment Variables
    Remove Environment Variable    TEST
    Log Environment Variables

Case2-File
    Create Binary File    ${CURDIR}${/}bin.txt    \xe4\xb8\xad\xe6\x96\x87
    ${bin}    Get Binary File    ${CURDIR}${/}bin.txt
    Create File    ${CURDIR}${/}file.txt    中文内容
    ${file}    Get File    ${CURDIR}${/}file.txt
    ${file-size}    Get File Size    ${CURDIR}${/}file.txt
    Append To File    ${CURDIR}${/}file.txt    \n自动化测试\n测试指南
    ${grep}    Grep File    ${CURDIR}${/}file.txt    测试
    Log File    ${CURDIR}${/}file.txt
    Touch    ${CURDIR}${/}touch.txt
    Move File    ${CURDIR}${/}bin.txt    ${CURDIR}${/}bin2.txt
    Comment    Move Files
    Copy File    ${CURDIR}${/}bin2.txt    ${CURDIR}${/}touch.txt
    Comment    Copy Files
    Remove File    ${CURDIR}${/}bin2.txt
    Remove Files    ${CURDIR}${/}touch.txt    ${CURDIR}${/}file.txt

Case3-Directory
    Create Directory    ${CURDIR}${/}dir1
    Touch    ${CURDIR}${/}dir1/touch.txt
    Create Directory    ${CURDIR}${/}dir1${/}subdir
    Copy Directory    ${CURDIR}${/}dir1    ${CURDIR}${/}dir2
    Move Directory    ${CURDIR}${/}dir2    ${CURDIR}${/}dir3
    Empty Directory    ${CURDIR}${/}dir3
    ${list}    List Directory    ${CURDIR}
    ${listfile}    List Files In Directory    ${CURDIR}${/}dir1
    ${listdir}    List Directories In Directory    ${CURDIR}${/}dir1
    ${countitem}    Count Items In Directory    ${CURDIR}${/}dir1
    ${countfile}    Count Files In Directory    ${CURDIR}${/}dir1
    ${countdir}    Count Directories In Directory    ${CURDIR}
    Remove Directory    ${CURDIR}${/}dir3
    Empty Directory    ${CURDIR}${/}dir1
    Remove Directory    ${CURDIR}${/}dir1

Case4-Path
    ${path}    Join Path    ${CURDIR}    test
    ${paths}    Join Paths    ${CURDIR}    /usr    test
    ${normalpath}    Normalize Path    ${CURDIR}..${/}7.3-String
    ${split}    Split Path    ${CURDIR}
    ${split}    Split Extension    ${CURDIR}${/}sample.txt
    ${time}    Get Modified Time    ${CURDIR}
    Set Modified Time    ${CURDIR}${/}sample.txt    NOW - 1day
    ${time}    Get Modified Time    ${CURDIR}${/}sample.txt

Backup-Allkw
    Comment    Run
    Comment    Run and Return RC
    Comment    Run and Return RC and Output
    Comment    Start Process
    Comment    Switch Process
    Comment    Read Process Output
    Comment    Stop Process
    Comment    Stop All Processes
    Comment    Get File
    Comment    Get File Size
    Comment    Get Binary File
    Comment    Grep File
    Comment    Log File
    Comment    Should Exist
    Comment    Should Not Exist
    Comment    File Should Exist
    Comment    File Should Not Exist
    Comment    Directory Should Exist
    Comment    Directory Should Not Exist
    Comment    Wait Until Removed
    Comment    Wait Until Created
    Comment    Directory Should Be Empty
    Comment    Directory Should Not Be Empty
    Comment    File Should Be Empty
    Comment    File Should Not Be Empty
    Comment    Create File
    Comment    Create Binary File
    Comment    Append To File
    Comment    Remove File
    Comment    Remove Files
    Comment    Empty Directory
    Comment    Create Directory
    Comment    Remove Directory
    Comment    Move File
    Comment    Move Files
    Comment    Copy File
    Comment    Copy Files
    Comment    Copy Directory
    Comment    Move Directory
    Comment    Get Environment Variable
    Comment    Set Environment Variable
    Comment    Append To Environment Variable
    Comment    Remove Environment Variable
    Comment    Environment Variable Should Be Set
    Comment    Environment Variable Should Not Be Set
    Comment    Get Environment Variables
    Comment    Log Environment Variables
    Comment    Join Path
    Comment    Join Paths
    Comment    Normalize Path
    Comment    Split Path
    Comment    Split Extension
    Comment    Get Modified Time
    Comment    Set Modified Time
    Comment    List Directory
    Comment    List Files In Directory
    Comment    List Directories In Directory
    Comment    Count Items In Directory
    Comment    Count Files In Directory
    Comment    Count Directories In Directory
    Comment    Touch
