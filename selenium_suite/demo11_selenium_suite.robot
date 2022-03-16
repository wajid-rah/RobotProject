*** Settings ***
Library     SeleniumLibrary

Test Teardown   Close Browser

*** Test Cases ***
TC1
    Open Browser    browser=headlesschrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    https://www.google.com
    ${title}    Get Title
    Log To Console    ${title}
    
    ${location}     Get Location
    Log To Console    ${location}