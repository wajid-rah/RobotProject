*** Settings ***
Library     SeleniumLibrary
Library     AutoItLibrary


*** Test Cases ***
TC1
    Open Browser    browser=chrome      executable_path=${EXECDIR}${/}driver${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Selenium Speed    1s

    Go To    url=https://www.ilovepdf.com/pdf_to_word

    Click Element    xpath=//span[contains(text(),'Select PDF file')]
    Sleep   1s
    Control Focus   Open    ${EMPTY}    Edit1
    Sleep    1s
    Control Set Text    Open    ${EMPTY}    Edit1   E:${/}newTest.pdf

    Control Click   Open    ${EMPTY}    Button1

    Element Text Should Be    //span[@class="file__info__name"]    newTest.pdf


