*** Settings ***
Library     SeleniumLibrary

#Test Teardown       Close Browser

*** Test Cases ***
TC1 Sign Up
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed      1s
    Go To    url=https://www.royalcaribbean.com/account/
    Click Element   partial link=Create an account
    Input Text    xpath=//input[@data-placeholder="First name/Given name"]    Wajid
    Input Text      xpath=//input[@data-placeholder="Last name/Surname"]     Rahman
    Click Element    xpath=//span[contains(text(),'Month')]
    Click Element    xpath=//span[contains(text(),'April')]

    Click Element    xpath=//span[contains(text(),'Day')]
    Scroll Element Into View    xpath=//span[contains(text(),'26')]     ##  requires scrolling  otherwise it shows not interactable
    Click Element    xpath=//span[contains(text(),'26')]
    Input Text      xpath=//input[@data-placeholder="Year"]     1992

    Click Element    //span[contains(text(),'Country/Region of residence')]
    Scroll Element Into View    //span[contains(text(),' India ')]
    Click Element    xpath=//span[contains(text(),' India ')]

    Input Text      //input[@data-placeholder="Email address"]      abc9876@yahoo.com

    Click Element    xpath=//span[contains(text(),'Select one security question')]
    Click Element    //span[contains(text(),' What elementary school did you go to? ')]

    Input Text    //input[@data-placeholder="Answer"]    KGF
    Click Element    //span[@class='mat-checkbox-inner-container mat-checkbox-inner-container-no-side-margin']
    Click Element   //button[contains(text(),' Done ')]
    Element Text Should Be    //span[contains(text(),'Password is required.')]    Password is required.








