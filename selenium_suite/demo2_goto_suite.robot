*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***

TC1
    Open Browser    https://www.goto.com/meeting        browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Element    id=truste-consent-button
    Click Element    link=Get a Demo
    Input Text    xpath=//input[@data-sc-field-name='firstName']    John
    Input Text    xpath=//input[@data-sc-field-name='lastName']   wick
    Input Text    xpath=//input[@data-sc-field-name="email"]    john@gmail.com
    Select From List By Label       xpath=//Select[@data-sc-field-name="employees"]     500 - 999
    click Element       xpath=//input[@class="goto-form__submit"]


