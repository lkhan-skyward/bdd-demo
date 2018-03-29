@regression @smoketest @login
Feature: Verify Account Locked Out Message


  Background:
    Given User is on "login" page


  @ORPHAN
  Scenario Outline: Sign in with user that have expired password

    When I enter my username "<username>" and password "<password>" to login on the front end
    Then I should land on page "<pages>"
    And I should see error message "<message>" displayed on logIn page
    Examples:
      | username | password | pages                 | message                |
      | test     | test     | /login/unlock-account | Your account is locked |

