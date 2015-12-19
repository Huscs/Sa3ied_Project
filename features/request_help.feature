Feature: Request a help
As a help seeker I want to request a help
So, volunteers know my location
then come to fix my car.

Background:

  Given I am on create location page

Scenario: Successful request a help

When I fill out the form with the following attributes:
      | Location    | Riyadh                  |
      | Address     | King Abdullah road      |
      | Description | out of gas              |
      | Latitude    | 24.751228               |
      | Longitude   | 46.71993699999999       |
      
    And I click the Create Location button
    Then I should see Location was successfully created