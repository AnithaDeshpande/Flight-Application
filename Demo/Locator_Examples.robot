*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Name_Locator
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Input Text    name:FirstName    Anitha
    Sleep    2
    Input Text    name:LastName    basavanna
    Sleep    2
    Close Browser

Class_Locator
    Open Browser    https://facebook.com    chrome
    Maximize Browser Window
    Sleep    2
    Input Text    class:inputtext.login_form_input_box    Anitha
    Sleep    2
    Input Text    name:pass    basavanna
    Sleep    2
    Close Browser

ID_Locator
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Sleep    2
    Page Should Contain List    id:FromCity
    Click Element    id:FromCity
    Sleep    2
    Select From List By Index    id:FromCity    0    1    2    3
    Sleep    2
    Capture Page Screenshot
    Close Browser

x_path_locator
    Open Browser    https://facebook.com    chrome
    Maximize Browser Window
    Sleep    2
    Input Text    xpath://*[@id="email"]    Anitha
    Sleep    2
    Input Text    xpath://*[@id="pass"]    basavanna
    Sleep    2
    Close Browser

CSS_Selector
    Open Browser    https://facebook.com    chrome
    Maximize Browser Window
    Sleep    2
    Input Text    css:#email    Anitha
    Sleep    2
    Input Text    css:#pass    basavanna
    Sleep    2
    Close Browser

Absolute_And_Relative
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Click Element    xpath:/html/body/fieldset[3]/input[1]
    Sleep    2
    Click Element    xpath://input[@value='por']
    Sleep    2
    Close Browser

Text_in_Xpath
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Element Text Should Be    xpath://option[text()='Toronto']    Toronto
    Sleep    2
    Close Browser

contains_keyword_in_xpath
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Click Element    xpath://input[contains(@value,'bmw')]
    Sleep    2
    Close Browser

Starts_with_xpath
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Click Element    xpath://input[starts-with(@value,'b')]
    Sleep    2
    Close Browser

Xpath_with_index
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Click Element    xpath://input[@type='checkbox' and @value='por']
    Sleep    2
    Click Element    xpath://input[@type='checkbox'][2]
    Sleep    2
    Close Browser

xpath_with_siblings
    [Documentation]    /html/body/descendant::input[@value='bmw'] \ : to locate the node input who is a descendant of body whose value is 'bmw'.
    ...
    ...
    ...
    ...
    ...
    ...
    ...    //input[@value='por']/preceding-sibling::*[2] : to lacate the checkbox immediately before the checkbox correcsponding to porsche
    ...
    ...
    ...
    ...    //input[@value='merc']/following-sibling::*[2]: to locate the checkobox immediately after the checkbox corresponding to mercedis
    ...
    ...
    ...    //input[@value='merc']/preceding-sibling::input[@value='bmw']: \ TO locate the checkobox before the checkbox corresponding to mercedes and has the value 'bmw'
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    Click Element    xpath:/html/body/descendant::input[@value='bmw']
    Sleep    2
    click element    xpath://input[@value='por']/preceding-sibling::*[2]
    Sleep    2
    Click Element    xpath://input[@value='merc']/following-sibling::*[2]
    Sleep    2
    Click Element    xpath://input[@value='merc']/preceding-sibling::input[@value='bmw']
    Sleep    2
    Close Browser

CSS_locator
    [Documentation]    css:select[id='FromCity'].
    ...
    ...
    ...    css:select#FromCity
    ...
    ...
    ...    css:#FromCity
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Sleep    2
    Select Frame    id=iframe-015
    Click Element    css:div.popup
    Sleep    2
    Close Browser
