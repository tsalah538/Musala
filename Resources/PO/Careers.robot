*** Settings ***
Library  SeleniumLibrary
Library    collections
*** Variables ***
${Wait}     120
*** Keywords ***

Check_our_open_positions_btn
    wait until element is visible           //span[@data-alt='Check our open positions']    ${Wait}
    click element        //span[@data-alt='Check our open positions']

Join_us_URl
     switch window   	Join Us | Musala Soft
    ${X}    get location
    should be equal as strings    ${X}  https://www.musala.com/careers/join-us/

Locations_DDL
    [Arguments]    ${city}
    wait until element is visible    //select[@id='get_location']    ${Wait}
    select from list by index    //select[@id='get_location']     ${city}

Automation_Engineer_Link
    wait until element is visible    //h2[normalize-space()='Automation QA Engineer']        ${Wait}
    click element    //h2[normalize-space()='Automation QA Engineer']

Sections_txt
    wait until page contains    General description     ${Wait}
    page should contain    General description
    page should contain     Requirements
    page should contain    Responsibilities
    page should contain    What we offer

ApplyButton_verfication
    page should contain element    //input[@value='Apply']

Apply_btn
    wait until element is visible    //input[@value='Apply']        ${Wait}
    click element    //input[@value='Apply']


Name_txt
    [Arguments]    ${name}
    wait until element is visible    //input[@name='your-name']        ${Wait}
    input text       //input[@name='your-name']    ${name}

Email_txt
    [Arguments]    ${Email}
    wait until element is visible    //input[@name='your-email']    ${Wait}
    input text    //input[@name='your-email']       ${Email}

Upload_CV_btn
     choose file       //input[@name='uploadtextfield']           ${exec_dir}//Resources//SampleFiles//Test.pdf

Send_btn
    wait until element is visible    //input[@value='Send']       ${Wait}
    click element    //input[@value='Send']

Argreement_checkbox
    wait until element is visible    //input[@name='adConsentChx']      ${Wait}
    click element    //input[@name='adConsentChx']

wrongEmail_validation_message
    wait until page contains        The e-mail address entered is invalid.      ${Wait}
    page should contain     The e-mail address entered is invalid.

Mandatroy_field_validation_message
    wait until page contains    The field is required.      ${Wait}
    page should contain    The field is required.

Close_btn
    wait until element is visible    //button[@class='close-form']      ${Wait}
    click element    //button[@class='close-form']

Logging_console
    ${q}    get length    card-jobsHot__title
    log     ${q}
    FOR     ${ELEMENT}       IN RANGE    1    ${q}

   ${X}   get text     (//h2[contains(@class,'card-jobsHot__title')])[${ELEMENT}]
   ${Y}     get text    ((//a[@class='card-jobsHot__link'])[${ELEMENT}]
    log to console   Position : ${X}
    log to console   More info : ${Y}
   END
