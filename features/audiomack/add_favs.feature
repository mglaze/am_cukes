@signin
Feature: AudioMack Favorites

Scenario: Add Favorite to Album
  Given I am logged in as a user
  When I want to add a favorite the album <album>
  Then the artist should have a new favorite
