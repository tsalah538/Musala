*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Wait}     60
*** Keywords ***
Name_txt
    [Arguments]     ${Name}
    Wait Until Element Is Visible    //input[@name='your-name']     ${Wait}
    Input Text    //input[@name='your-name']    ${Name}

Email_txt
    [Arguments]     ${Email}
    Wait Until Element Is Visible    //input[@name='your-email']   ${Wait}
    Input Text   //input[@name='your-email']   ${Email}

Mobile_txt
     [Arguments]     ${Mobile}
    Wait Until Element Is Visible    //input[@name='mobile-number']  ${Wait}
    Input Text   //input[@name='mobile-number']   ${Mobile}

Subject_txt
    [Arguments]      ${Subject}
    Wait Until Element Is Visible    //input[@name='your-subject']  ${Wait}
    Input Text   //input[@name='your-subject']     ${Subject}

Message_txt
    [Arguments]      ${Message}
    Wait Until Element Is Visible    //textarea[@name='your-message']  ${Wait}
    Input Text   //textarea[@name='your-message']  ${Message}


captcha_checkbox

    Wait Until Element Is Visible    //*[@id="recaptcha-anchor"]  ${Wait}
    Click Element    //*[@id="recaptcha-anchor"]

Send_btn
    Wait Until Element Is Visible    //input[@value='Send']     ${Wait}
    Click Element    //input[@value='Send']

EmailValidation_message
    Wait Until Page Contains    The e-mail address entered is invalid.      ${Wait}
    Page Should Contain    The e-mail address entered is invalid.
