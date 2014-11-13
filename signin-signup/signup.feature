Feature: Signup
  As an anonymous
  I want to signup on the website to have more features

  Background:
    Given an anonymous user
    And an email
    And an username
    And a password
    And I am on the homepage

  Scenario Outline: Social signup
    When I click on <social login> to login
    Then it should display my name
    And it should remove the login form
    And I should be logged in
    Examples:
      | social login        |
      | login with Facebook |
      | login with Google   |

  Scenario: Signup
    When I fill in my email
    And I fill in my username
    And I fill in my password
    And I click on Signup
    Then it should redirect me to my new dashboard
    And I should be logged in

