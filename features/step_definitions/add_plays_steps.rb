Given(/^I am on the "([^"]*)" artist page$/) do |artist|
  @visitor.go_to_artist_page(artist)
end

When(/^I want to play the artist "([^"]*)" album "([^"]*)"$/) do |artist, album|
  @visitor.wait_for_ajax
  @visitor.go_to_album_page(artist, album)
  @visitor.hide_search_box
end

Then(/^I click each song in the playlist$/) do
  @visitor.artist_album_page.play_music_random
end
