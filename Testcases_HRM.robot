*** Settings ***
Library  SeleniumLibrary
Library    String
Resource   Resources.robot
Resource    orangeHRM.robot
Test Setup  start browser and maximize
Test Teardown  Close Browser

*** Variables ***
${browser}   edge
${url}     https://opensource-demo.orangehrmlive.com/  


*** Test Cases ***
login_test
   Enter username password click 
test_case1
   Enter username password click
   In admin adduser and loggedout
test_case2
   Enter username password click
   Sleep    4
   Enter into the pim module
   Sleep    3
   Adding the employee details
   Sleep    3
   create login credentials
   Sleep    3
test_case3
   Enter username password click
   Sleep    3
   Enter into the leave module
   sleep  3
   Add entitlement

test_case4
   Enter username password click
   Sleep    3
   Generating the leave reports