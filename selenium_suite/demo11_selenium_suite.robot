*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Go To    https://www.google.com
    ${title}    Get Title
    Log To Console    ${title}
    
    ${location}     Get Location
    Log To Console    ${location}
    
    Press Keys    name=q    Hello World
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ARROW_DOWN
    Press Keys    None    ENTER

TC2
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s
    Go To    https://www.myntra.com
    Mouse Over    xpath=//span[text()='Profile']
    Click Element    xpath=//a[text()='login / Signup']


TC3
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Set Selenium Speed    1s
    Go To    https://nasscom.in/
    Mouse Over    xpath=//a[text()='Membership']
    Click Element    xpath=//a[text()='Members Listing']
