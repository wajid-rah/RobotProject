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
    Create File    E:${/}Temp${/}My_Folder${/}notes.txt      Wajid Rahman
    Copy File    E:${/}Temp${/}My_Folder${/}notes.txt     E:${/}Temp${/}notes_copy.txt
    Sleep   5s
    Remove File    E:${/}Temp${/}My_Folder${/}notes.txt
    Remove Directory    E:${/}Temp${/}My_Folder

TC3
    Create Directory    E:${/}robot_frameworks${/}robot_suite${/}My_Folder

TC4
    Create Directory     ${EXECDIR}${/}My_Folder
    Create File    ${EXECDIR}${/}My_Folder${/}note.txt   Wajid Rahman
    File Should Exist    ${EXECDIR}${/}My_Folder${/}note.txt