*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Login to "CPMS" Application
    input text   id=username  x222472
    input text   id=password  Passw0rd
    click button  css=.button
    wait until page contains    channel partner management system
    sleep    8s

