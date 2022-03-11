*** Settings ***
Library     DateTime

*** Test Cases ***
TC1
    ${current_date}     Get Current Date    # not using Set variable
    Log To Console      ${current_date}