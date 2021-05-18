*** Settings ***
Resource    ../CPMS Resources/CommonCPMS.robot
Resource    ../CPMS Resources/PO/CPMSLogin.robot
Resource    ../CPMS Resources/PO/CPMSLogout.robot
Resource    ../CPMS Resources/PO/SearchOrg.robot
Resource    ../CPMS Resources/PO/AddSalesRep.robot
Resource    ../CPMS Resources/PO/AddAttributes.robot


Test Setup    Begin CPMS test
Test Teardown    End CPMS test

*** Variables ***
${BROWSER} =    firefox
${URL} =    http://supplypartnermanagement-ps101.tmi.telus.com/cpms/loginShow.do?selectedLanguage=en
*** Test Cases ***
User should be able to "Add New Sales Rep" in CPMS
    CPMSLogin.Login to "CPMS" Application
    SearchOrg.Search Channel org
    AddSalesRep.Add Sales Rep
    AddSalesRep.Add Attribute
    AddSalesRep.Add training indicator
    AddSalesRep.Add Address
    AddSalesRep.Add Phone Number
    AddSalesRep.Add Electronic Address
    CPMSLogout.Logout of "CPMS" Application


