*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Wait}     120
*** Keywords ***
Company_URL_verification
    ${X}    get location
    should be equal as strings    ${X}  https://www.musala.com/company/

LeaderShip_section
    wait until element is visible    //section[@class='company-members']        ${Wait}
    page should contain element    //section[@class='company-members']

Facebook_Link
    wait until element is visible    //span[@class='musala musala-icon-facebook']       ${Wait}
    click element    //span[@class='musala musala-icon-facebook']

CompanyFacebookProfile_URL
    switch window   Musala Soft - Home | Facebook
    wait until element is visible    //img[@data-imgperflogname='profileCoverPhoto']     ${Wait}
    ${X}    get location
    should be equal as strings    ${X}  https://www.facebook.com/MusalaSoft?fref=ts

CompanyProfile_image
    wait until element is visible    (//*[name()='image'])[1]   ${Wait}
    element should be visible    (//*[name()='image'])[1]