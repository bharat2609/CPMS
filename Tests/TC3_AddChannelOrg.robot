*** Settings ***
Resource    ../CPMS Resources/CommonCPMS.robot
Resource    ../CPMS Resources/PO/CPMSLogin.robot
Resource    ../CPMS Resources/PO/CPMSLogout.robot
Resource    ../CPMS Resources/PO/SearchOrg.robot
Resource    ../CPMS Resources/PO/AddChannelOrg.robot

Test Setup    Begin CPMS test
Test Teardown    End CPMS test

*** Variables ***
${BROWSER} =    firefox
${URL} =    http://supplypartnermanagement-ps101.tmi.telus.com/cpms/loginShow.do?selectedLanguage=en
*** Test Cases ***
User should be able to "Add New Channel Org" in CPMS
    CPMSLogin.Login to "CPMS" Application
    sleep    8s
    AddChannelOrg.Add Channel org
    CPMSLogout.Logout of "CPMS" Application