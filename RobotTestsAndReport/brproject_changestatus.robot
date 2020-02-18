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
Open Event Home Page
	Open Browser    ${HOME URL}    ${BROWSER}
	Set Selenium Speed    ${DELAY}
	Location Should Be    ${HOME URL} 

Change Equipments Above From Available To Unavailable
    Click button    change
	Title Should Be    ${TITLE CHANGESTATUS}
    Select From List By Label    newStatus    unavailable
	Click button    Change
    Location Should Contain    ${HOME URL}
    Title Should Be    ${TITLE HOME}
    [Teardown]    Close Browser