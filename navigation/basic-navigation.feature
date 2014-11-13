Feature: Navigation
  As a user
  I want to navigate on the website

  Scenario: Homepage logged in
    Given I am logged in
    When I go to the home url
    Then I am redirected to my dashboard

  Scenario: Homepage unlogged
    Given I am not logged in
    When I go to the home url
    Then I am on the landing page

  Scenario: About
    Given I am anywhere on the website
    When I go to the about page
    Then I am on the about page

  Scenario: Privacy
    Given I am anywhere on the website
    When I go to the privacy policy page
    Then I am on the privacy policy page

  Scenario Outline: Results
    Given I am on <pages with search> for search
    When I search something
    Then I am redirected on the result page
    Examples:
      | search pages      |
      | my dashboard      |
      | the landing page  |

