*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   https://nasscom.in/nasscom-membership
    Click Element    id=edit-field-membership-type-und-1203
    Click Element    id=edit-field-business-focus-inst-und-970
    Click Element    id=edit-field-business-focus-inst-und-968
    Input Text    xpath=//input[@id='edit-title']    LT
    Input Text      xpath=//textarea[@id='edit-field-address-line-1-und-0-value']   20 Chennai
    Select From List By Label    xpath=//select[@id='edit-field-state-member-und']      Tamil Nadu
    Select From List By Label    xpath=//select[@id='edit-field-city-membership-und']    Chennai
    Click Element    xpath=//input[@id='edit-field-mode-of-payment-und-0']
    Click Element    xpath=//input[@id='edit-field-code-of-conduct-und-0']
    [Teardown]      Close Browser