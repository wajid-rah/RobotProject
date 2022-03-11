*** Test Cases ***
TC1 print My Name
    Log To Console    Wajid Rahman
    Log To Console    Hello world

TC2 
    Log To Console    Hello Wajid
    Log     Hello everyone

TC3 
    ${session_name}   Set Variable   Robot Session
    Log To Console    ${session_name}
    Log To Console    Session name is ${session_name}

# In tc4, store 25 and 26 in var1 and var2
TC4
    ${var1}     Set Variable   25
    ${var2}     Set Variable   26
    Log To Console    ${var1}+${var2}  # simply concatenation
    ${result}   Evaluate    ${var1}+${var2}     # Computing
    Log To Console    ${result}
    
TC5
    ${radius}   Set Variable    10
    ${area}     Evaluate    3.14 * ${radius} *${radius}
    Log To Console    ${area}
    