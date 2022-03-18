*** Settings ***
Library     SeleniumLibrary
Library     AutoItLibrary


*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Sleep    5s
    Go To    url=https://john:john234@softwaretesting.com  ## NOT Working

TC2
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s

    Go To    url=https://softwaretesting.com
    Sleep   5s
    Send    Wajid   ## wherever the cursor is placed, it will typed
    Sleep   1s
    Send    {TAB}
    Sleep    1s
    Send    pass234
    Send    {ENTER}