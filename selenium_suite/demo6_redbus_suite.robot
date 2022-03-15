*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To   https://www.redbus.in/
    Click Element    xpath=//i[@id='i-icon-profile']
    Click Element   xpath=//li[@id='signInLink']
    Select Frame    xpath=//iframe[@class='modalIframe']    # //iframe[contains(@src,'login')]

    Input Text    //input[@id='mobileNoInp']    12345
    Unselect Frame
