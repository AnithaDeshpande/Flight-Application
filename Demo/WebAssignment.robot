*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Assin1
    Open Browser    https://ngendigital.com/practice    chrome
    Maximize Browser Window
    Select Frame    id=iframe-015
    sleep    5
    Select Radio Button    flight    flighthotel
    Input Text    name=FirstName    Anitha
    Input Text    name=LastName    Basavanna
    Sleep    5
    Close Browser
