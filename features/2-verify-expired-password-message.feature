@regression @smoketest
Feature: Verify Expired Password Message


  Background:
    Given User is on "login" page


  @ORPHAN
  Scenario Outline: Sign in with user that have expired password

    When I enter my username "<username>" and password "<password>" to login on the front end
    Then I should land on page "<pages>"
    Then I should see error message "<errorMessage>" displayed on logIn page
    Examples:
      | username   | password   | pages                 | errorMessage              |
      | test | test | /login/reset-password | Your password is expired. |

