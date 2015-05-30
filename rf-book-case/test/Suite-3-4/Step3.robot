*** Settings ***
Resource          testflow.robot

*** Test Cases ***
Case4
    登录验证流程    http://127.0.0.1:7272/html/    demo    mode    Login succeeded

Case5
    登录验证流程    http://127.0.0.1:7272/html/    demo    wrong    Login failed
