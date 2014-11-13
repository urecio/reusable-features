Feature: Search
  As a user
  I want to search for something

  Background:
    Given I am on <a page with search>
    Examples:
    | search pages     |
    | my dashboard     |
    | the landing page |

  Scenario: Search with results
    When I fill in Search with a text that has results
    Then it should provide me some Auto completions results

  Scenario: Search without results
    When I fill in Search text with no results
    Then it should display "No results found"
    Then it should provide me some suggestions to fill in

  Scenario: Not enough characters
    When I fill in Search with text shorter than the minimun allowed
    Then it should display "Type more..."

  Scenario Outline: Choose a result
    Given I have search results
    When I <select> a result
    Then it should search the clicked result
    Examples:
      | select                 |
      | click on               |
      | tap keyboard to choose |
