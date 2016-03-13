Feature: View Dream
  As a user.
  I want to view dreams posted to the DreamCasters community.
  So that I can view dreams.

  Scenario: View All Dreams
    Given the following dreams exist:
    | title             | text              |
    | this is a title 1 | this is text 1    |
    | this is a title 2 | this is text 2    |

    And I am on the home page

    Then I should see "this is a title 1"
    And I should see "this is a title 2"
    And I should not see "this is text 1"
    And I should not see "this is text 2"
