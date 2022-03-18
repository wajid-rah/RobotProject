*** Settings ***
Library     SeleniumLibrary
Library     AutoRecorder

*** Test Cases ***
TC1
    [Documentation]     Validation whether user gets error message for mobile no. or not.
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.medibuddy.in/
    Click Element       xpath=//button[text()='Not Now']
    Click Element       link=For Employer
    Switch Window       MediBuddy LaunchPad
    Input Text      id=getInTouchName    abc
    Input Text      id=getInTouchEmail      abc@yahoo.com
    Input Text      id=getInTouchMobile     12345
    Input Text    id=getInTouchEmpCount    3
    Input Text    id=getInTouchDesignation    employee
    Click Element    xpath=//button[text()='Get in Touch']
    Element Text Should Be      //div[contains(text(), 'digits')]       Mobile Number should be 10 digits
    [Teardown]      Close Browser


