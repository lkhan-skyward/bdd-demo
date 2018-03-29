@sprint23
Feature: Verify login and logout functionality


  @ORPHAN
  Scenario Outline: Sign in without MFA and the logout

    When I click on the sign in button
    And I enter my username "<username>" and password "<password>" to login on the front end
    Then I am logged in successfully to "<dashboard>" dashboard
    And Header menu should change to My Account from Submit and Manage Data
    When I click my account inside the header
    Then I should see Sign Out submenu link
    When I click Sign Out link
    Then I should see Sign Out Submission Warning modal window
    Then I click on Cancel button
    When I click my account inside the header
    And I click Sign Out link
    Then I should see Sign Out Submission Warning modal window
    When I click SIGN OUT button
    Then I should see You are logged out on the page
    And I should be redirected to logout confirmation page
    Examples:
      | username | password | dashboard |
      | test     | test     | account   |
      | test     | test     | regisry   |

