*** Settings ***
Library  SeleniumLibrary
Library    Telnet


*** Variables ***

*** Test Cases ***
login_test
      Open Browser   https://opensource-demo.orangehrmlive.com/  edge
       Maximize Browser Window
       Sleep    5
       Input Text   //input[@placeholder='Username']  Admin
       Input Text   //input[@placeholder='Password']   admin123
       Click Button   //button[@type='submit']
       Sleep    5
       Title Should Be    orangehrm
       close browser
     
test_case1 
       open Browser   https://opensource-demo.orangehrmlive.com/  edge
       Maximize Browser Window
       Sleep    5
       Input Text   //input[@placeholder='Username']  Admin
       Input Text   //input[@placeholder='Password']   admin123
       Click Button   //button[@type='submit']
       Sleep    5
     
      Click Element    //body/div[@id='app']/div[1]/div[1]/aside[1]/nav[1]/div[2]/ul[1]/li[1]/a[1]/span[1]
      sleep  2
      Click Element    //button[normalize-space()='Add']
      Wait Until Element Is Visible    //div[contains (text(),'-- Select --')]  timeout=10
      Wait Until Element Is Enabled    //div[contains (text(),'-- Select --')]  timeout=10
      Click Element    //div[contains (text(),'-- Select --')] 
      Click Element    //span[contains(text(),'Admin')]
      Sleep    3
      Click Element    //div[contains (text(),'-- Select --')] 
      sleep  3
      Click Element    //span[contains(text(),"Enabled")] 
      Sleep    3  

      Input Text    //input[@placeholder='Type for hints...']    'Jhansi'
      Sleep    5
      Input Text    //div[@class='oxd-form-row']//div[@class='oxd-grid-2 orangehrm-full-width-grid']//div[@class='oxd-grid-item oxd-grid-item--gutters']//div[@class='oxd-input-group oxd-input-field-bottom-space']//div//input[@class='oxd-input oxd-input--active']  "adminlatha"
      Sleep    4    
      Input Text   //div[@class='oxd-grid-item oxd-grid-item--gutters user-password-cell']//div[@class='oxd-input-group oxd-input-field-bottom-space']//div//input[@type='password']   jhansi@123
      Sleep    3
      Input Text    //div[@class='oxd-grid-item oxd-grid-item--gutters']//div[@class='oxd-input-group oxd-input-field-bottom-space']//div//input[@type='password']    jhansi@123
      Sleep    3
      Click Button    //button[normalize-space()='Save']
      Sleep    2
      Click Element   //i[@class='oxd-icon bi-caret-down-fill oxd-userdropdown-icon'] 
      Sleep    5
      Click Element    //a[normalize-space()='Logout']
      Sleep   3
      Close Browser
Test_case2:
       Open Browser   https://opensource-demo.orangehrmlive.com/  edge
       Maximize Browser Window
       Sleep    5
       Input Text   //input[@placeholder='Username']  Admin
       Input Text   //input[@placeholder='Password']   admin123
       Click Button   //button[@type='submit']
       Sleep    5
     
      Click Element    //body/div[@id='app']/div[1]/div[1]/aside[1]/nav[1]/div[2]/ul[1]/li[2]/a[1]/span[1]
      Sleep    3
      Click Button   //body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/button[1]
      Sleep   3
      Input Text     //body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/input[1]    jhansi
      Sleep    3
      Input Text     //body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[1]/form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/div[2]/input[1]    eswar
      sleep     3
      Input Text    //input[@placeholder='Last Name']    latha
      Sleep    2
      Input Text    //div[@class="oxd-form-row"]//div[@class="oxd-grid-2 orangehrm-full-width-grid"]//div[@class="oxd-grid-item oxd-grid-item--gutters"]//div[@class="oxd-input-group oxd-input-field-bottom-space"]//input[@class="oxd-input oxd-input--active"]  0777
      sleep   3
      Click Element  //div[@class="orangehrm-employee-form"]//div[@class="oxd-form-row user-form-header"]//div[@class="oxd-switch-wrapper"]//span[@class="oxd-switch-input oxd-switch-input--active --label-right"]
      Sleep    2
      Input Text    //body/div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']/div[@class='orangehrm-background-container']/div[@class='orangehrm-card-container']/form[@class='oxd-form']/div[@class='orangehrm-employee-container']/div[@class='orangehrm-employee-form']/div[@class='oxd-form-row']/div[1]/div[1]/div[1]/div[2]/input[1]   jhansilatha
      Sleep    3     
      Input Text    //body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[1]/form[1]/div[1]/div[2]/div[4]/div[1]/div[1]/div[1]/div[2]/input[1]    Jhansi@123
      Sleep    3
      Input Text    //body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[1]/form[1]/div[1]/div[2]/div[4]/div[1]/div[2]/div[1]/div[2]/input[1]     Jhansi@123
      Sleep    3
      Click Button    //body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[1]/form[1]/div[2]/button[2]
      Sleep    3
Testcase_3:
          Open Browser   https://opensource-demo.orangehrmlive.com/  edge
       Maximize Browser Window
       Sleep    5
       Input Text   //input[@placeholder='Username']  Admin
       Input Text   //input[@placeholder='Password']   admin123
       Click Button   //button[@type='submit']
       Sleep    5
     
      Click Element    //body/div[@id='app']/div[1]/div[1]/aside[1]/nav[1]/div[2]/ul[1]/li[2]/a[1]/span[1]
      Sleep    3
      Click Element   //header/div[2]/nav[1]/ul[1]/li[4]
      Sleep    2
      Click Button    //body/div[@id='app']/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/button[1]