Feature: rate volunteer
As a help seeker 
I want to rate the volunteer who offer me a help, 
So I can contribute and improve service quality.

Scenario:
Given I am on home page
When I follow "Rate a Volunteer"
Then I should see Rate Volunteer
When I fill out email and score with valid data
And I press Rate
Then I should see Volunteer has been rated

