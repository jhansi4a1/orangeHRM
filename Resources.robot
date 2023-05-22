*** Settings ***
Library   SeleniumLibrary
Variables  locators of orangeHRM.py


*** Variables ***
${url}     https://opensource-demo.orangehrmlive.com/
${browser}   edge


*** Keywords ***
start browser and Maximize
     Open Browser   ${url}   ${browser}
      Maximize Browser Window
      Sleep    3
Enter username password click
     Input Text    ${Username_login}  Admin
     Sleep   3
     Input Text   ${Password_login}   admin123
     Sleep    3
     Click Button  ${loginbutton}
     Sleep    2
     Title Should Be    OrangeHRM
In admin adduser and loggedout
    Click Element    ${addelement}
      sleep  2
      Click Element    ${button1}
      Wait Until Element Is Visible    ${selectelement}   timeout=10
      Wait Until Element Is Enabled    ${selectelement}   timeout=10
      Click Element    ${selectelement} 
      Click Element    ${selectadmin}
      Sleep    3
      Click Element    ${selectelement2}
      sleep  3
      Click Element    ${selectenable}
      Sleep    3  

      Input Text    ${name1}    'Jhansi'
      Sleep    3
      Input Text      ${adminname}  "adminlatha"
      Sleep    4    
      Input Text   ${admin_password}   jhansi@123
      Sleep    3
      Input Text    ${confrm_password}    jhansi@123
      Sleep    3
      Click Button    ${save_button}
      Sleep    4
      Click Element   ${element}
      Sleep    5
      Click Element    ${logout}
      Sleep   3


Enter into the pim module
     Click Element       ${pim}
      Sleep    3
      Click Button        ${addemployee}
      Sleep   3
Adding the employee details
      Input Text         ${employee_firstname}   jhansi
      Sleep    3
      Input Text     ${employee_middlename}   eswar
      sleep     3
      Input Text    ${employee_lastname}   latha
      Sleep    2
     Input Text    ${employee_id}  0777
      sleep   3
create login credentials
      Click Element    ${radiobutton}
      Sleep    2
      Input Text    ${name}   jhansilatha
      Sleep    3     
      Input Text    ${password1}   Jhansi@123
      Sleep    3
      Input Text      ${conpassword2}    Jhansi@123
      Sleep    3
      Click Button    ${save_button2}
      Sleep    3