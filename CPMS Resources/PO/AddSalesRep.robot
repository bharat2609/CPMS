*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Add Sales Rep
    click link    css=body > table:nth-child(3) > tbody:nth-child(1) > tr:nth-child(1) > td:nth-child(1) > table:nth-child(2) > tbody:nth-child(1) > tr:nth-child(26) > td:nth-child(4) > a:nth-child(1)
    input text    css=table.bgtbllgreen > tbody:nth-child(1) > tr:nth-child(10) > td:nth-child(2) > input:nth-child(1)    CPMS1
    input text    css=table.bgtbllgreen > tbody:nth-child(1) > tr:nth-child(10) > td:nth-child(4) > input:nth-child(1)    USER1
    select from list by index    name=position    4
    select from list by value   name=language    EN
    click button    css=table.bgtbllgreen > tbody:nth-child(1) > tr:nth-child(18) > td:nth-child(1) > input:nth-child(2)
    sleep    8s

Add Attribute
    wait until page contains    Attributes
    click element    xpath=//div[contains(text(),'Attributes')]/..//u[contains(text(),'Edit')]
    click element    xpath=//select[contains(.,'Administrative') and @name='dummyAvailable']/option[4]
    click button    xpath=//input[contains(@name,'addbutton')]
    click button    xpath=//input[contains(@name,'saveButton')]
    sleep    8s

Add training indicator
    click link    xpath=//a[@href='/cpms/CourseShowAction.do']
    wait until page contains    Edit Training
    click element    xpath=//select[contains(.,'C')]/option[2]
    click button    xpath=//input[contains(@name,'saveButton')]
    sleep    8s

Add Address
    click link    xpath=//a[contains(., 'Add Address')]
    wait until page contains    Add/Edit Address
    click element    xpath=//select[@name='reasonTypeCode']/option[2]
    click element    xpath=//select[@name='addressFormatCode']/option[4]
    input text    xpath=//input[@type='text' and @name='streetNumber']    710
    input text    xpath=//input[@type='text' and @name='streetName']    GRANVILLE ST GT
    click element    xpath=//select[@name='reasonTypeCode']/option[2]
    click element    xpath=//select[@name='cityName']/option[19]
    click element    xpath=//select[@name='provinceCode']/option[15]
    click element    xpath=//select[@name='countryCode']/option[9]
    input text    xpath=//input[@type='text' and @name='postalCode']    V6C1W6
    click button    xpath=//input[contains(@name,'saveButton')]
    sleep    8s

Add Phone Number
    click link   xpath=//a[contains(., 'Add Phone')]
    wait until page contains    Add/Edit Phone Number
    click element    xpath=//select[@name='reasonTypeCode']/option[2]
    click element    xpath=//select[@name='phoneTypeCode']/option[3]
    input text    xpath=//input[@type='text' and @name='npa']    437
    input text    xpath=//input[@type='text' and @name='nxx']    344
    input text    xpath=//input[@type='text' and @name='nnnn']    6535
    click button    xpath=//input[contains(@name,'saveButton')]
    sleep    8s

Add Electronic Address
    click link    //a[contains(., 'Add Electronic')]
    wait until page contains    Add/Edit Electronic Address
    click element    xpath=//select[@name='reasonTypeCode']/option[2]
    click element    xpath=//select[@name='elecAddressTypeCode']/option[2]
    input text    xpath=//input[@type='text' and @name='elecAddressTxt']    bharat_gaurav.malviya@telus.com
    click button    xpath=//input[contains(@name,'saveButton')]
    sleep    8s