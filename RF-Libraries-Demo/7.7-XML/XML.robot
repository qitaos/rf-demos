*** Settings ***
Library           XML

*** Test Cases ***
Case1
    ${XML}    Parse Xml    <xml><robot>test</robot></xml>
    ${element}    Get Element    ${XML}    robot
    Element To String    ${element}
    Add Element    ${XML}    <auto id='4'>qitao</auto>
    Log Element    ${XML}
    ${elements}    Get Elements    ${XML}    .
    Log Element    ${elements[0]}
    ${child}    Get Child Elements    ${XML}
    ${count}    Get Element Count    ${XML}    auto
    ${text}    Get Element Text    ${XML}    auto
    Comment    Get Elements Texts
    ${attr}    Get Element Attribute    ${XML}    id    auto
    Comment    Get Element Attributes
    Set Element Attribute    ${XML}    id    8    auto
    Log Element    ${XML}
    Set Element Tag    ${XML}    rf    robot
    Log Element    ${XML}
    Set Element Text    ${XML}    settext    xpath=rf
    Log Element    ${XML}
    Save Xml    ${XML}    ${CURDIR}${/}save.xml
    ${copy}    Copy Element    ${XML}
    Remove Element    ${XML}    rf
    Log Element    ${XML}
    Remove Element Attribute    ${XML}    id    auto
    Log Element    ${XML}
    Clear Element    ${XML}
    Log Element    ${XML}
    Comment    Evaluate Xpath    ${XML}    count(xml/*)

Backup-Allkw
    Comment    Parse Xml
    Comment    Get Element
    Comment    Get Elements
    Comment    Get Element Count
    Comment    Get Element Text
    Comment    Get Elements Texts
    Comment    Get Element Attribute
    Comment    Get Element Attributes
    Comment    Get Child Elements
    Comment    Element Attribute Should Be
    Comment    Element Attribute Should Match
    Comment    Element Should Exist
    Comment    Element Should Not Exist
    Comment    Element Should Not Have Attribute
    Comment    Element Text Should Be
    Comment    Element Text Should Match
    Comment    Element To String
    Comment    Elements Should Be Equal
    Comment    Elements Should Match
    Comment    Set Element Attribute
    Comment    Set Element Tag
    Comment    Set Element Text
    Comment    Set Elements Attribute
    Comment    Set Elements Tag
    Comment    Set Elements Text
    Comment    Remove Element
    Comment    Remove Element Attribute
    Comment    Remove Element Attributes
    Comment    Remove Elements
    Comment    Remove Elements Attribute
    Comment    Remove Elements Attributes
    Comment    Clear Element
    Comment    Copy Element
    Comment    Log Element
    Comment    Save Xml
    Comment    Evaluate Xpath
    Comment    Add Element
