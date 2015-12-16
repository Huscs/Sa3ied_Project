Feature: Request a help
As a help seeker,
I want to request a help

Scenario: Successful request a help
Given I seek help
When I press request a help button on the home page
Then I should fillup the help request form
And I should receive a call from a volunteer