*** Settings ***
Documentation     new Suite
Library           SeleniumLibrary
Library           ExcelLibrary

*** Test Cases ***
Excel Read Operations
    Open Excel Document    C:/Users/Havish/AppData/Local/Programs/Python/Udemy Ride Projects/Demo/ExcelDemo123.xlsx    doc_id=docid
    @{Cities}    Get List Sheet Names
    Log To Console    @{Cities}
    ${TextField}    Read Excel Cell    2    3
    Log    ${TextField}
    @{Rows}    Read Excel Column    2
    FOR    ${RowValue}    IN    @{Rows}
    Log    ${RowValue}
    END
    Close current Excel Document

Excel Write Operation
    Create Excel Document    Write Operation
    Save Excel Document    write operation.xlsx
