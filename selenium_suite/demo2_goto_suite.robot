*** Settings ***
Library     OperatingSystem
Library     SeleniumLibrary

*** Test Cases ***

TC1
    Append To Environment Variable    path      ${EXECDIR}${/}driver${/}
    Open Browser    https://www.goto.com/meeting        browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Click Element    id=truste-consent-button
    Click Element    link=Try Free
    Input Text    name=FirstName    John
    Input Text    name=LastName   wick
    Input Text    id=login__email    john@gmail.com
    Select From List By Label    id=CompanySize     100 - 249
    Click Element   link=Start My Trial
