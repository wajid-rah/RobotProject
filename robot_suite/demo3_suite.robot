*** Settings ***
Library     OperatingSystem

*** Test Cases ***

TC1
    Log To Console    ${CURDIR}
    Log To Console    ${EXECDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${TEMPDIR}
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}
    
TC2
    Create Directory    E:${/}Temp${/}My_Folder
    Create File    E:${/}Temp${/}notes.txt      Wajid Rahman
    Copy File    E:${/}Temp${/}notes.txt     E:${/}Temp${/}destination.txt
    Remove File    E:${/}Temp${/}destination.txt
    Remove Directory    E:${/}Temp${/}My_Folder