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
    Input Password    id=input_password     password
    Click Element    id=input_go
    Element Should Contain    //div[contains(text(),'Access denied for user')]      Access denied for user

