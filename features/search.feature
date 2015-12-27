Feature: search volunteers
As a volunteers team leader, 
I want to search on volunteers group 
and find the volunteer whose rating above X.

Background:

  Given I am on home page

Scenario: Successful volunteers search
Then I should see "Search volunteers based on rating"
When I fill out the search field with "1"
And I press "Search"
Then I should go to volunteers page and I see Volunteers List
