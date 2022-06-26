*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Wait}     120
*** Keywords ***
ContuctUs_Btn
    Wait Until Element Is Visible    //span[@data-alt='Contact us']         ${Wait}
    wait until element is enabled    //span[@data-alt='Contact us']         ${Wait}
    Click Element    //span[@data-alt='Contact us']

Compay_link
    wait until element is visible    (//a[@class='main-link'][normalize-space()='Company'])[4]      ${Wait}
    click element    (//a[@class='main-link'][normalize-space()='Company'])[4]

Careers_link
    wait until element is visible    //ul[@id='menu-main-nav-1']//a[@class='main-link'][normalize-space()='Careers']        ${Wait}
    click element    //ul[@id='menu-main-nav-1']//a[@class='main-link'][normalize-space()='Careers']