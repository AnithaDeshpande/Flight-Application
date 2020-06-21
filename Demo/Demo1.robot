*** Settings ***
Resource          User_Defined_Keywords.resource    # impoted rersource file at suite level

*** Variables ***
${variable1}      100    # 1st scalar variable
${variable2}      10    # 2nd Scalar variable
@{LVariable}      Anitha    Basavanna
&{DVariable}      Name=Anitha    Topic=Anitha

*** Test Cases ***
ScalarVariable
    [Documentation]    This Test cases comapres any two variable.
    ...    *True* _if variables are equal_
    ...    *False* _if variables are unequal_
    ...    Link is https://www.google.com
    Should Be Equal    ${variable1}    ${variable2}

ListVariable
    Should Not Be Equal As Strings    @{LVariable}{0}    @{LVariable}{1}

DictonaryVariables
    [Tags]    functional
    Should Be Equal As Strings    &{DVariable}[Name]    &{DVariable}[Topic]

UsingResourceFile
    CompareTwoVariables
