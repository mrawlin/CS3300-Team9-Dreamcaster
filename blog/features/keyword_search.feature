Feature: Keyword Search

Background:
    Given the following dreams exist:
      | title  | text     |
      | title1 | test     |
      | title2 | blah     |

Scenario: search for an existing dream by keyword
    When I enter "test" in the search input
    Then I should see "title1"
    And I should not see "test"
    And I should not see "title2"
    And I should not see "blah"

Scenario: search for a non-existent dream by keyword
    When I enter "magic" in the search input
    Then I should see "No Dreams Found"
    And I should not see "title1"
    And I should not see "test"
    And I should not see "title2"
    And I should not see "blah"

