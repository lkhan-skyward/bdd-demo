@regression @login @sprint23
Feature: Verify invalid user name and password message


  Background:
    Given I am on QPP home page

 
  @ORPHAN
  Scenario Outline: Verify invalid userName or password response

    When I click on the sign in button
    Then I enter my username "<username>" and password "<password>" to login on the front end
    Then I should land on page "<pages>"
    Then I should see error message "<errorMessage>" displayed on logIn page
    Examples:
      | username    | password        | pages  | errorMessage                                           |
      | invalidUser | invalidPassword | /login | The username or password you entered could be invalid. |

