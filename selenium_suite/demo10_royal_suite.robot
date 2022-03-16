*** Settings ***
Library     SeleniumLibrary

Test Teardown       Close Browser

*** Test Cases ***
TC1 Sign Up
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://www.royalcaribbean.com/account/
    Click Element   partial link=Create an account
    Input Text    xpath=//input[@data-placeholder="First name/Given name"]    Wajid
    Input Text      xpath=//input[@data-placeholder="Last name/Surname"]     Rahman
    Click Element    xpath=//span[contains(text(),'Month')]
    Click Element    xpath=//span[contains(text(),'April')]

    Click Element    xpath=//span[contains(text(),'Day')]
    Click Element    xpath=//span[contains(text(),'4')]

    Input Text      xpath=//input[@data-placeholder="Year"]     1992

    Sleep   5s


