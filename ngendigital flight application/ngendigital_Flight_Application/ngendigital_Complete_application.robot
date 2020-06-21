*** Settings ***
Library           SeleniumLibrary
Resource          CommonKeywords.robot

*** Test Cases ***
Login Screen
    Login And Navigation to URL
    Change To Iframe
    Default Username and Password
    [Teardown]    Close Browser
