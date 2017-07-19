@signin
Feature: AudioMack Followers

Scenario: Create New User
  Given I am logged in as a user
  When I want to follow <artist>
  |artist|
  Then I should see that I have followed the user
