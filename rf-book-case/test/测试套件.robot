*** Settings ***
Library           String
Library           ../../Lib/site-packages/robot/libraries/Collections.py
Resource          newresource.txt

*** Test Cases ***
case
    log    ${val1}
