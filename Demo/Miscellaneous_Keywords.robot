*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Miscellaneous keyword
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    Sleep    2
    Assign Id To Element    xpath://table/tbody/tr[4]/td[3]    am
    ${TextField}    Get Text    am
    Log To Console    ${TextField}
    Capture Page Screenshot
    Sleep    2
    Current Frame Should Contain    This is a label
    Sleep    2
    Element Attribute Value Should Be    xpath://input[@value='por']    name    car
    [Teardown]    Close Browser
