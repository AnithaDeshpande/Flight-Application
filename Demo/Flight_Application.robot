*** Settings ***
Library           SeleniumLibrary
Library           ExcelLibrary
Resource          Commonly_Used_Keywords.txt

*** Test Cases ***
ExcelFlightApplication
    Open Browser	\	\	\	    https://www.expedia.com/?pwaLob=wizard-hotel-pwa-v2    chrome
    Maximize Browser Window
    LginToFlightApplicationUsingExcel
    [Teardown]    Close Browser
