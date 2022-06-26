*** Settings ***
Resource    ../PO/Company.robot
*** Keywords ***
Verify that correct URL loads
    Company.Company_URL_verification

Verify that leadership section is exist
     company.leadership_section

Click on facebook link
    company.Facebook_Link

Verify correct company facebook page URL
    company.CompanyFacebookProfile_URL

Verify company profile picture appears on the page
    company.CompanyProfile_image


