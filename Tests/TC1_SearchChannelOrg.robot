*** Settings ***
Resource    ../CPMS Resources/CommonCPMS.robot
Resource    ../CPMS Resources/PO/CPMSLogin.robot
Resource    ../CPMS Resources/PO/CPMSLogout.robot
Resource    ../CPMS Resources/PO/SearchOrg.robot

Test Setup    Begin CPMS test
Test Teardown    End CPMS test

*** Variables ***
${BROWSER} =    firefox
${URL} =    http://supplypartnermanagement-ps101.tmi.telus.com/cpms/loginShow.do?selectedLanguage=en
*** Test Cases ***
User should be able to "Search Channel Org" in CPMS
    [Documentation]    This is my first robot test
    [Tags]    Sanity
    log    Executing test: channel org search
    CPMSLogin.Login to "CPMS" Application
    SearchOrg.Search Channel org
    CPMSLogout.Logout of "CPMS" Application

