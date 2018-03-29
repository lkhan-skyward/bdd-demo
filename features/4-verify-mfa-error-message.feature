@sprint23
Feature: Verify MFA Error Message


  Background:
    Given I am on QPP home page


  @ORPHAN
  Scenario Outline: Verify invalid MFA response

    When I click on the sign in button
    Then I enter my username "<username>" and password "<password>" to login on the front end
    Then I should land on page "<pages>"
    Then I enter invalid MFA code
    Then I should see error message "<errorMessage>" displayed on MFA page
    Examples:
      | username  | password | pages               | errorMessage                         |
      | test | test | /login/confirm-code | Your verification code is incorrect. |

