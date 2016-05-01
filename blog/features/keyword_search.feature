Feature: Keyword Search

Background:
    Given the following dreams exist:
      | title  | content  |
      | title1 | testish  |
      | title2 | blah     |

Scenario: search for an existing dream by keyword

    Given I am on the home page

    When I fill in "search_box" with "testish"
    And I press "search_btn"
    Then I should see "title1"
    And I should not see "title2"
    And I should not see "blah"

Scenario: search for a non-existent dream by keyword

    Given I am on the home page

    When I fill in "search_box" with "magic"
    And I press "search_btn"
    Then I should see "There are no dreams containing the term magic."
    And I should not see "title1"
    And I should not see "test"
    And I should not see "title2"
    And I should not see "blah"

