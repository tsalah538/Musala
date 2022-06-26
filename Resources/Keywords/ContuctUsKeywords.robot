*** Settings ***
Library  SeleniumLibrary
Resource   ../PO/MainPage.robot
Resource    ../PO/Contuct_Us.robot
*** Variables ***
${Wait}     60
*** Keywords ***
Insert Name value
    [Arguments]     ${Name}
    Name_txt    ${Name}

Insert email value
    [Arguments]      ${Email}
    Email_txt   ${Email}

Insert mobile number value
    [Arguments]     ${Mobile}
    Mobile_txt      ${Mobile}

Insert subject value
    [Arguments]     ${Subject}
    Subject_txt      ${Subject}

Insert message value
    [Arguments]   ${Message}
    Message_txt      ${Message}

Click on captcha checkbox
    captcha_checkbox

Click on send button
    Send_btn

Validae wrong email message
    EmailValidation_message