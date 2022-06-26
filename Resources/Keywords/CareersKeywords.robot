*** Settings ***
Resource    ../PO/Careers.robot
*** Keywords ***
Click on Check our open position button
    Careers.Check_our_open_positions_btn

Check Join Us URl
    Careers.Join_us_URl

Select item from location DDL
    [Arguments]     ${city}
    Careers.Locations_DDL       ${city}

Click on Automation Engineer link
     Careers.Automation_Engineer_Link

Verify that 4 main sections are shown on page
    Careers.Sections_txt

Verify page contains apply btton
    Careers.ApplyButton_verfication

Click on Apply button
     Careers.Apply_btn

insert my name value
    [Arguments]    ${name}
    Careers.Name_txt        ${name}

insert my email value
    [Arguments]    ${email}
    Careers.Email_txt   ${email}

Upload my CV
    Careers.Upload_CV_btn

Click send button
    Careers.Send_btn

Click on agreement button
    Careers.Argreement_checkbox

validate wrong email valiation message
        Careers.wrongEmail_validation_message

validate missing mandatroy field message
    Careers.Mandatroy_field_validation_message

Click on close button
    Careers.Close_btn

logging to console
    Careers.Logging_console