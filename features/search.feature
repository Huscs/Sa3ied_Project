Feature: search volunteers
As a volunteers team leader, 
I want to search on volunteers group 
and find the volunteer whose rating above X.

Background:

  Given I am on home page

Scenario: Successful volunteers search
When I fill out the search field with ""
And I press Search
Then I should see the top rated volunteers with rating grater than or equle "" if exist