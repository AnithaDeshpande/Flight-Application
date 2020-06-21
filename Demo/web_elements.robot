*** Settings ***
Library           SeleniumLibrary
Resource          Commonly_Used_Keywords.txt

*** Variables ***
${firstNameXpath}    xpath://input[@name='FirstName']
@{Cities}         # list variable
${City}           ${EMPTY}
@{Cars}
${Car}            ${EMPTY}
${TextField}      ${EMPTY}
@{Rows}
${RowValue}       ${EMPTY}

*** Test Cases ***
Text_box
    [Documentation]    log level types:
    ...
    ...    Debug-- provides screenshot
    ...
    ...    Warn-provides source
    ...
    ...    none: povides none
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    Sleep    2
    Page Should Contain Textfield    ${firstNameXpath}    field cannot found    warn
    Sleep    2
    Input Text    ${firstNameXpath}    Anitha
    Sleep    2
    Textfield Value Should Be    ${firstNameXpath}    Anitha    wrong value inputted
    Sleep    2
    Clear Element Text    ${firstNameXpath}
    Sleep    2
    [Teardown]    Close Browser

Button
    Open Browser    https://www.facebook.com/    chrome
    Maximize Browser Window
    Input Text    css:#email    anitha.deshpande5@gmail.com
    Sleep    2
    Input Password    css:#pass    Basavan!tha123
    Sleep    2
    Click Button    xpath://input[@value='Log In']
    Sleep    2
    Execute Javascript    window.open()
    Switch Window    locator=New
    Go To    https://ngendigital.com/practice
    Sleep    5
    Select Frame    id=iframe-015
    Wait Until Page Contains    Button Example
    Click Button    xpath://input[@value='Click Me']
    Sleep    2
    Wait Until Page Contains Element    css:#myButton
    Sleep    2
    [Teardown]    Close Browser

ngenButton
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    Sleep    2
    Click Button    xpath://input[@value='Click Me']
    Sleep    2
    [Teardown]    Close Browser

Checkbox
    [Documentation]    manual TC:
    ...
    ...    Verify the page contains the checkbox bmw.
    ...    if it contains then select the checkbox
    ...    confirm through the script whether the checkbox is selected.
    ...    if confirmed, then unselect it.
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    Sleep    2
    Page Should Contain Checkbox    xpath://input[@value='bmw']    failure    debug
    Select Checkbox    xpath://input[@value='bmw']
    Sleep    2
    Checkbox Should Be Selected    xpath://input[@value='bmw']
    Unselect Checkbox    xpath://input[@value='bmw']
    Sleep    2
    [Teardown]    Close Browser

List
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    Sleep    2
    Page Should Contain List    css:#FromCity
    Sleep    2
    @{Cities}    Get List Items    css:#FromCity
    Sleep    2
    FOR    ${City}    IN    @{Cities}
    Log    ${City}
    END
    Sleep    2
    List Selection Should Be    css:#FromCity    Toronto
    Select From List By Index    css:#FromCity    1
    Sleep    2
    Select From List By Value    css:#FromCity    ord
    Sleep    2
    Select From List By Label    css:#FromCity    London
    Sleep    2
    [Teardown]    Close Browser

MultiList
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    Sleep    2
    Page Should Contain List    xpath://select[@name='cars']
    @{Cars}    Get List Items    xpath://select[@name='cars']
    FOR    ${Car}    IN    @{Cars}
    Log    ${Car}
    END
    Sleep    2
    Select From List By Index    xpath://select[@name='cars']    1
    Sleep    2
    Select From List By Label    xpath://select[@name='cars']    Fiat
    Sleep    2
    Select From List By Value    xpath://select[@name='cars']    audi
    [Teardown]    Close Browser

RadioButton
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    Sleep    2
    Page Should Contain Radio Button    xpath://input[@value='flight']
    Sleep    2
    Select Radio Button    flight    flighthotel
    Sleep    2
    Radio Button Should Be Set To    flight    flighthotel
    Sleep    2
    [Teardown]    Close Browser

Image
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Click Image    xpath://*[@id="n-52555261-navBarId"]/div[1]/div/a/img
    Sleep    2
    Title Should Be    Next Gen Digital
    Sleep    2
    [Teardown]    Close Browser

Table
    [Documentation]    Validate the following steps:
    ...
    ...    1.Table should be present on web page.
    ...
    ...    2."country" column should be present in the table
    ...
    ...    3. canada should be present in the table(in cell)
    ...
    ...    4. a column should have a value- Justin
    ...
    ...    5. a row should have value chancellor
    ...
    ...    6.verify that theresa may is present at the third row and compare2 \ strings are equal
    ...
    ...
    ...
    ...    more posssible scenarios
    ...
    ...
    ...    run a for loop and get text from all the rows and store in a list
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    Sleep    2
    Page Should Contain Element    xpath:/html/body/fieldset[7]/table    fail    info
    Table Should Contain    xpath:/html/body/fieldset[7]/table    Country
    Sleep    2
    Table Cell Should Contain    xpath:/html/body/fieldset[7]/table    2    3    Canada
    Table Column Should Contain    xpath:/html/body/fieldset[7]/table    1    Justin Trudeau
    Sleep    2
    Table Row Should Contain    xpath:/html/body/fieldset[7]/table    5    Chancellor
    Sleep    2
    ${TextField}    Get Text    xpath://tbody/tr[4]/td[1]
    Log To Console    ${TextField}
    Sleep    2
    Should Be Equal As Strings    ${TextField}    Theresa May
    Sleep    2
    [Teardown]    Close Browser

Table1
    [Documentation]    run a for loop and get text from all the rows and store in a list
    ...
    ...
    ...    hint
    ...
    ...    iteratre through all the rows using xpath
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    Page Should Contain Element    xpath:/html/body/fieldset[7]/table
    @{Rows}    Get Text    xpath:/html/body/fieldset[7]/table/tbody/tr[2]
    FOR    ${RowValue}    IN    @{Rows}
    Log    ${RowValue}
    Sleep    2
    [Teardown]    Close Browser

FlightApplication
    Open Browser    https://www.expedia.com/?pwaLob=wizard-hotel-pwa-v2    chrome
    Maximize Browser Window
    Sleep    2
    Login To fligh Application    anitha.deshpande5@gmail.com    Basavanitha123
    Sleep    2
    [Teardown]    Close Browser

icommerceagent
    Open Browser    https://tsticommerceagent.pfsweb.com/    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=ifmMiddle
    Input Text    xpath://input[@type='text']    anitha
    Sleep    2
    Input Password    xpath://input[@type='password']    abce
    Sleep    2
    Click Element    xpath://input[@value='Log In']
    Sleep    2
    Page Should Contain Element    xpath://td[@class='errMsg']
    Sleep    2
    ${TextField}    Get Text    xpath://td[@class='errMsg']
    Sleep    2
    Log To Console    ${TextField}
    Sleep    2
    [Teardown]    Close Browser
