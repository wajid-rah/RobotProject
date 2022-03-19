*** Settings ***
Library     SeleniumLibrary
Test Teardown   Close Browser

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    https://google.com
    ${link_cout}    Get Element Count    tag=a
    Log To Console    ${link_cout}