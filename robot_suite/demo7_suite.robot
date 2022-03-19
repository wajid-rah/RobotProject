*** Settings ***
Library     ../python_file/my_script.py

*** Test Cases ***
TC1
    ${name}     Get My Name
    Log To Console    ${name}

    ${output}    Add Two Number    12    18
    Log To Console    ${output}
