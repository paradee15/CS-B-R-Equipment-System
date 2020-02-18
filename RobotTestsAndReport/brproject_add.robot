*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    10.199.66.227
${BROWSER}    chrome
${HOME URL}    http://${SERVER}/SoftEn2020/Sec02/2nd%20Group/cs-equipments/home.php
${UNSUCCESS URL}    http://${SERVER}/SoftEn2020/Sec02/2nd%20Group/cs-equipments/addForm.php
${DELAY}    0.3
${TITLE HOME}    Home

*** Test Cases ***
Open Event Home Page 1
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Success
	Input Text    eid    K00010
	Input Text    ename    Logitech Keyboard
	Input Text    etype    Keyboard
	Click Button    add
    Handle Alert    action=ACCEPT
	Handle Alert    action=ACCEPT
	Location Should Contain    ${HOME URL}
	Title Should Be    Home
    [Teardown]    Close Browser
	

Open Event Home Page 2
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Success
	Input Text    eid    MM0002
	Input Text    ename    Logitech Mouse
	Input Text    etype    Mouse
	Click Button    add
    Handle Alert    action=ACCEPT
	Handle Alert    action=ACCEPT
	Location Should Contain    ${HOME URL}
	Title Should Be    Home
    [Teardown]    Close Browser
	
	
Open Event Home Page 3
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Success
	Input Text    eid    000002
	Input Text    ename    HP Mouse
	Input Text    etype    Mouse
	Click Button    add
    Handle Alert    action=ACCEPT
	Handle Alert    action=ACCEPT
	Location Should Contain    ${HOME URL}
	Title Should Be    Home
    [Teardown]    Close Browser
	
	
Open Event Home Page 4
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Success
	Input Text    eid    Mouse0
	Input Text    ename    HP Mouse
	Input Text    etype    Mouse
	Click Button    add
    Handle Alert    action=ACCEPT
	Handle Alert    action=ACCEPT
	Location Should Contain    ${HOME URL}
	Title Should Be    Home
    [Teardown]    Close Browser