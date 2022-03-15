*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.medibuddy.in/
    Click Element       xpath=//button[text()='Not Now']
    Click Element       link=For Employer
    Switch Window       MediBuddy LaunchPad


    Input Text      id=getInTouchName    Wajid
    Input Text      id=getInTouchEmail      wajid@yahoo.com
    Input Text      id=getInTouchMobile     9876543210
    Input Text    id=getInTouchEmpCount    3
    Click Element    xpath=//button[text()='Get in Touch']
    Close Window

