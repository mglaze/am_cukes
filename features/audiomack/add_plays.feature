Feature: AudioMack Plays

Scenario: Add Plays from Artist Page
 Given I want to play the artist <artist> album <album>
 When I click each song in the playlist

Scenario: New AudioMack User
  Given I am a new audiomack user
  When I want to play the artist <artist> album <album>
  And I click each song in the playlist
  Then I favorite the album

Scenario: Delete Audiomack Account
  Given I am an existing Audiomack user
  When I want to delete my account
  Then my account is deleted
