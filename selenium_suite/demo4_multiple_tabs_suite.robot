*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.db4free.net/
    Click Element    partial link=phpMyAdmin
    Switch Window   phpMyAdmin
    Input Text    id=input_username    ss
    Input Password    id=input_password     abc1234
    Click Element    id=input_go

    Element Should Contain    //div[contains(text(),'Access')]      Access denied for user
    [Teardown]      Close Browser

