*** Settings ***
Library           SeleniumLibrary

*** Keywords ***
Login And Navigation to URL
    Open Browser    https://ngendigital.com/demo-application    chrome
    Element Text Should Be    xpath://span[contains(text(),'Login to Flight Application')]    Login to Flight Application

Change To Iframe
    Select Frame    id=iframe-015

Object On Web Page
    Element Text Should Be    xpath://div[@class='box']/h1    My Account
    Page Should Contain Element    xpath://input[@type='email']
    Page Should Contain Element    xpath://input[@type='password']
    Page Should Contain Element    xpath://div[@name='SignIn']
    Page Should Contain Element    xpath://*[@id="btn2"]
    Page Should Contain Element    xpath://u[contains(text(),'Click Here!')]
    Page Should Contain Element    xpath://p[contains(text(),'Forgot your password?')]

Default Username and Password
    Element Attribute Value Should Be    xpath://input[@type='email']    value    email
    Element Attribute Value Should Be    xpath://input[@type='password']    value    password

Empty Username
