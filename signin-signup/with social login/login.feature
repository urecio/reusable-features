Feature: Login
  As an unlogged user
  I want to login on the website to have more features

  Background:
    Given an unlogged user
    And an email "example@example.com"
    And a password "secret"
    And I’m on the homepage

  Scenario: Classic login
    When I fill in my email
    And I fill in my password
    And I click on Login
    Then it should display my name
    And it should remove the login form
    And I should be logged in

  Scenario Outline: Social Login
    When I click on <social login> to login
    Then it should display my name
    And it should remove the login form
    And I should be logged in
  Examples:
    | social login        |
    | login with Facebook |
    | login with Google   |

  Scenario: Invalid Login
    When I fill in my email
    And I fill in my password
    And I click on Login
    Then it should display an error message

  Scenario: Validations
    When I fill in email anything but not an email address
    And I click on Login
    Then it should display an error message
