*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Logout of "CPMS" Application
    click link    xpath=//a[contains(text(), 'Logout')]