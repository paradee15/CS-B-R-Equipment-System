*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    10.199.66.227
${BROWSER}    chrome
${HOME URL}    http://${SERVER}/SoftEn2020/Sec02/2nd%20Group/cs-equipments/home.php
${ADD UNSUCCESSFULLY URL}    http://${SERVER}/SoftEn2020/Sec02/2nd%20Group/cs-equipments/addForm.php
${DELAY}    0.3
${TITLE HOME}    Home
${TITLE ADD}     Add Equipment

*** Test Cases ***
Open Event Home Page 1
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Unsuccess No Equipment ID
	Input Text    ename    HP Mouse
	Input Text    etype    Mouse
	Click Button    add
    Handle Alert    action=ACCEPT
	Location Should Contain    ${ADD UNSUCCESSFULLY URL}
	Title Should Be    ${TITLE ADD}
    [Teardown]    Close Browser
	
	
Open Event Home Page 2
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Unsuccess No Equipment Name
	Input Text    eid    M00003
	Input Text    etype    Mouse
	Click Button    add
    Handle Alert    action=ACCEPT
	Location Should Contain    ${ADD UNSUCCESSFULLY URL}
	Title Should Be    ${TITLE ADD}
    [Teardown]    Close Browser
	
	
Open Event Home Page 3
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Unsuccess No Equipment Type
	Input Text    eid    M00004
	Input Text    ename    HP Mouse
	Click Button    add
    Handle Alert    action=ACCEPT
	Location Should Contain    ${ADD UNSUCCESSFULLY URL}
	Title Should Be    ${TITLE ADD}
    [Teardown]    Close Browser
	
	
Open Event Home Page 4
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Unsuccess No Equipment ID And Name
	Input Text    etype    Mouse
	Click Button    add
    Handle Alert    action=ACCEPT
	Location Should Contain    ${ADD UNSUCCESSFULLY URL}
	Title Should Be    ${TITLE ADD}
    [Teardown]    Close Browser
	
	
Open Event Home Page 5
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Unsuccess No Equipment ID And Type
	Input Text    ename    HP Mouse
	Click Button    add
    Handle Alert    action=ACCEPT
	Location Should Contain    ${ADD UNSUCCESSFULLY URL}
	Title Should Be    ${TITLE ADD}
    [Teardown]    Close Browser
	
	
Open Event Home Page 6
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Unsuccess No Equipment Name And Type
	Input Text    eid    K00005
	Click Button    add
    Handle Alert    action=ACCEPT
	Location Should Contain    ${ADD UNSUCCESSFULLY URL}
	Title Should Be    ${TITLE ADD}
    [Teardown]    Close Browser
	
	
Open Event Home Page 7
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Unsuccess No Equipment ID Name And Type
	Click Button    add
    Handle Alert    action=ACCEPT
	Location Should Contain    ${ADD UNSUCCESSFULLY URL}
	Title Should Be    ${TITLE ADD}
    [Teardown]    Close Browser
	
	
Open Event Home Page 8
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Go To Add Equipments
    Click Button    add

Add Equipments Unsuccess Over Equipment ID
	Input Text    eid    K000002
	Input Text    ename    HP Mouse
	Input Text    etype    Mouse
	Click Button    add
    Handle Alert    action=ACCEPT
	Location Should Contain    ${ADD UNSUCCESSFULLY URL}
	Title Should Be    ${TITLE ADD}
    [Teardown]    Close Browser