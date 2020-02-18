*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    10.199.66.227
${BROWSER}    chrome
${HOME URL}    http://${SERVER}/SoftEn2020/Sec02/2nd%20Group/cs-equipments/home.php
${DELAY}    0.3
${TITLE HOME}    Home
${TITLE CHANGESTATUS}    statusChangeForm

*** Test Cases ***
Open Event Home Page 1
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Lock Equipments Above
    Click link    Lock
    Handle Alert    action=ACCEPT
    Location Should Contain    ${HOME URL}
    Title Should Be    ${TITLE HOME}
    [Teardown]    Close Browser
	

Open Event Home Page 2
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Unlock Equipments Above
    Click link    Unlock
    Handle Alert    action=ACCEPT
    Location Should Contain    ${HOME URL}
    Title Should Be    ${TITLE HOME}
    [Teardown]    Close Browser