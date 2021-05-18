*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Add Channel org
   click link    xpath=//a[contains(text(),"Add Channel Org")]
   select from list by value    name=businessRelationshipId    1
   input text    xpath=//input[@type='text' and @name='chnlOrgCd']    2609
   input text    xpath=//input[@type='text' and @name='chnlOrgDes']    For Testing
   input text    xpath=//input[@type='text' and @name='chnlOrgLegalName']    For Testing
   select from list by value    name=chnlOrgLevelCd    Nat
   select from list by value    name=externalInd    N
   select from list by value    name=chnlOrgTypeCd    DL
   select from list by value    name=taxCalcProv    AB
   select from list by value    name=adminRegionId    10715173
   select from list by value    name=chnlMgmtOrgId    10715700
   input text    xpath=//input[@type='text' and @name='effectiveDate']    2021-05-18
   click button    xpath=//input[contains(@name,'saveButton')]
   sleep    5s