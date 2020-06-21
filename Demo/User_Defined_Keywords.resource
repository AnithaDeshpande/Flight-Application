*** Variables ***
${RVariable1}     100    # this is to test resource file
${RVariable2}     100    # this to test resource file

*** Keywords ***
CompareTwoVariables
    Should Be Equal As Integers    ${RVariable1}    ${RVariable2}
