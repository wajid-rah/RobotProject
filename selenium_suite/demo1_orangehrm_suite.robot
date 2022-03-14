*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}    # Chrome Driver
    Open Browser       url=https://opensource-demo.orangehrmlive.com       browser=chrome
    Maximize Browser Window
    Set Selenium Implicit wait      20s
    Input Text      id=txtUsername      Admin
    Input Password      id=txtPassword      admin123
    Click Element       id=btnLogin
    Page should Contain     My Info
    Click Element      id=welcome
    Click Element       partial link=Logout




