*** Settings ***
Library           DateTime

*** Variables ***
${Var1}           5    # Assignment
${Var2}           5    # assign1

*** Test Cases ***
Assi1
    Should Be Equal As Integers    ${Var1}    ${Var2}
    Open
    [Teardown]

Assi2
    ${date}=    Get Current Date    Local    result_format=datetime

Assi3
    Log To Console    Hello World
