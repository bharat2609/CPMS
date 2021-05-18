*** Settings ***
Library    Selenium2library

*** Variables ***


*** Keywords ***
Search Channel org
    input text    css=table.bgtbllgreen:nth-child(2) > tbody:nth-child(1) > tr:nth-child(5) > td:nth-child(2) > input:nth-child(1)  04420
    click button    css=table.bgtbllgreen:nth-child(3) > tbody:nth-child(1) > tr:nth-child(6) > td:nth-child(1) > input:nth-child(2)
    sleep    3s