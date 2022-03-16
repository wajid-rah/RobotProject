*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Collections
*** Variables ***
${MY_NAME}      Wajid Rahman
@{COLORS}      red  yellow  blue    green

*** Test Cases ***
TC1
    Set Local Variable    ${name}   ABCD
    Log To Console    ${name}
    
    ${val}      Set Variable    CDE
    Log To Console    ${val}
    Log To Console    ${MY_NAME}

TC2 
    Log To Console    ${MY_NAME}
   
TC3
    Log To Console    ${COLORS}     # dont use @
    Log To Console    ${COLORS}[0]
    ${count}    Get Length    ${COLORS}
    
TC4
    ${fruits}   Create List     apple   banana    mango     pineapple
    Remove Values From List    ${fruits}    mango
    Log To Console    ${fruits}

    Append To List    ${fruits}     orange
    Log To Console    ${fruits}

    Insert Into List    ${fruits}    2    JackFruit
    Log To Console    ${fruits}
    
    Sort List    ${fruits}
    Log List    ${fruits}