*** Settings ***
Library    SeleniumLibrary
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