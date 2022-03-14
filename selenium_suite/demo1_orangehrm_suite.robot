*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}    # Chrome Driver
    Open Browser       url=https://opensource-demo.orangehrmlive.com       browser=chrome
    Maximize Browser Window
    Set Selenium Implicit wait      20s
    Input Text      id=txtUsername      Admin
    Input Password      id=txtPassword      admin123
    Click Element       id=btnLogin
    Page should Contain     My Info
    Click Element      id=welcome
    Click Element       partial link=Logout
TC2
    Append To Environment Variable    Path      ${EXECDIR}${/}driver${/}    # Chrome Driver
    Open Browser       url=https://opensource-demo.orangehrmlive.com       browser=chrome
    Maximize Browser Window
    Set Selenium Implicit wait      20s
    Input Text          id=txtUsername      Admin
    Input Password      id=txtPassword      admin123
    Click Element       id=btnLogin
    Click Element       id=menu_pim_viewMyDetails
    Click Element       partial link=Emergency Contacts
    Click Element       id=btnAddContact

    Input Text          name=emgcontacts[name]       Sat
    Input Text          name=emgcontacts[relationship]      Brother
    Input Text          name=emgcontacts[homePhone]       12345
    Input Text          name=emgcontacts[mobilePhone]     3232
    Input Text          name=emgcontacts[workPhone]       66666
    Click Element       id=btnSaveEContact
    Table Should Contain        id=emgcontact_list      Sat
    Table Should Contain        id=emgcontact_list      12345




