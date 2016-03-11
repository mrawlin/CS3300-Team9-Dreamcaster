Feature: display list of the dreams

     As a developer
     So users can browse the list of dreams
     I want to see dreams posted by users

Background: dreams have been added to the database
   
    Given the following dreams exist:

   |title                |text             |
   | Nightmare, Falling  | I fell off of a skyscraper towards earth. I tried to fly but failed. Woke up right before I hit the ground. |
   | Confusing, Lost     | I was lost in this fog forever, screaming for anyone....until someone started chasing me |
   | Weird, Clown        | I was a clown at my little brothers birthday. He and his friends were laughing at me when I noticed I was naked. |



   And I am on the Dreams home page

Scenario: view all dreams
  When I click on "Dream List"
  Then I should see a list of all the dreams that have been submitted by users

Scenario: Add new dream
  When I click on "New Dream"
  Then I should see the page to create a new dream

Scenario: User login
  When I login as a registered user
  Then I should see that I am logged into my account
