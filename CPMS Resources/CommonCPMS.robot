*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin CPMS test
    open browser    ${URL}    ${BROWSER}
    maximize browser window

End CPMS test
    close all browsers