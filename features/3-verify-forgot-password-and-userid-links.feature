@regression @login @sprint23
Feature: Verify Forgot password and userID links


  Background:
    Given User is on "login" page

 
  Scenario: Verify forgot password and userID links

    When I click on the sign in button
    When I click on Forgot Password link
    Then User should be redirected to a new tab with page "https://portal.cms.gov/wps/portal/unauthportal/eidm/forgotpassword" URL
    When I click on the sign in button
    When I click on Forgot User ID link
    Then User should be redirected to a new tab with page "https://portal.cms.gov/wps/portal/unauthportal/eidm/forgotuserid" URL

