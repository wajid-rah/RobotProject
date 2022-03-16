*** Variables ***

&{PERSONAL_DETAILS}     firstname=Wajid     lastname=Rahman     mobile=11111111

*** Test Cases ***
TC1
    Log To Console    ${PERSONAL_DETAILS}
    Log To Console    ${PERSONAL_DETAILS}[firstname]
    Log To Console    ${PERSONAL_DETAILS}[lastname]

TC2
    &{emp_dict}     Create Dictionary   empName=Wajid   company=LTS
    Log To Console    ${emp_dict}
    Log To Console    ${emp_dict}[empName]

TC3
    &{student_dict}     Create Dictionary   studentId=1001      StudentName=John        Percentage=72.2       mailId=john@gmail.com
    Log To Console    ${student_dict}
