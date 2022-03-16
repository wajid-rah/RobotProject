*** Variables ***

&{PERSONAL_DETAILS}     firstname=Wajid     lastname=Rahman     mobile=11111111

*** Test Cases ***
TC1
    Log To Console    ${PERSONAL_DETAILS}
    Log To Console    ${PERSONAL_DETAILS}[firstname]
    Log To Console    ${PERSONAL_DETAILS}[lastname]