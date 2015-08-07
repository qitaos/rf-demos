*** Settings ***
Library           Collections

*** Test Cases ***
Case1-List
    ${tuple}    Evaluate    (u'a',u'b',u'c',u'd')
    ${conlist}    Convert To List    ${tuple}
    Log    ${conlist[2]}
    Append To List    ${conlist}    e    f
    Log    ${conlist}
    Insert Into List    ${conlist}    1    q
    Log    ${conlist}
    ${combineList}    Combine Lists    ${conlist}    ${conlist[2:5]}
    Set List Value    ${conlist}    0    w
    Log    ${conlist}
    Remove Values From List    ${conlist}    d    e
    Log    ${conlist}
    Remove From List    ${conlist}    0
    Log    ${conlist}
    ${combineList}    Remove Duplicates    ${combineList}
    ${get}    Get From List    ${conlist}    -1
    ${getslice}    Get Slice From List    ${conlist}    1
    ${count}    Count Values In List    ${conlist}    b
    ${getindex}    Get Index From List    ${conlist}    f
    ${copy}    Copy List    ${combineList}
    Reverse List    ${combineList}
    Log List    ${combineList}
    Sort List    ${combineList}
    Log List    ${combineList}

Case2-Dict
    ${dict}    Create Dictionary    a=1    b=2
    Set To Dictionary    ${dict}    a=3    c=4
    Log Dictionary    ${dict}
    ${keys}    Get Dictionary Keys    ${dict}
    ${values}    Get Dictionary Values    ${dict}
    ${items}    Get Dictionary Items    ${dict}
    ${get}    Get From Dictionary    ${dict}    a
    Remove From Dictionary    ${dict}    a
    Log    ${dict}
    Keep In Dictionary    ${dict}    b
    Log    ${dict}

Backup-Allkw
    Comment    Convert To List
    Comment    Append To List
    Comment    Insert Into List
    Comment    Combine Lists
    Comment    Set List Value
    Comment    Remove Values From List
    Comment    Remove From List
    Comment    Remove Duplicates
    Comment    Get From List
    Comment    Get Slice From List
    Comment    Count Values In List
    Comment    Get Index From List
    Comment    Copy List
    Comment    Reverse List
    Comment    Sort List
    Comment    List Should Contain Value
    Comment    List Should Not Contain Value
    Comment    List Should Not Contain Duplicates
    Comment    Lists Should Be Equal
    Comment    List Should Contain Sub list
    Comment    Log List
    Comment    Create Dictionary
    Comment    Set To Dictionary
    Comment    Remove From Dictionary
    Comment    Keep In Dictionary
    Comment    Get Dictionary Keys
    Comment    Get Dictionary Values
    Comment    Get Dictionary Items
    Comment    Get From Dictionary
    Comment    Dictionary Should Contain Key
    Comment    Dictionary Should Not Contain Value
    Comment    Dictionary Should Not Contain Key
    Comment    Dictionary Should Contain Item
    Comment    Dictionary Should Contain Value
    Comment    Dictionaries Should Be Equal
    Comment    Dictionary Should Contain Sub Dictionary
    Comment    Log Dictionary
    Comment    Should Contain Match
    Comment    Should Not Contain Match
    Comment    Get Matches
    Comment    Get Match Count
