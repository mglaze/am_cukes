require 'rubygems'
require 'taza/page'

module Audiomack
  class ArtistAlbumPage < ::Taza::Page
    element(:player){ browser.div(:class, "player-wrapper") }
    element(:playlist){ browser.div(:id,"playlist").divs(:class, "song-wrap") }
    element(:download){ browser.a(:id, "download-song") }
    element(:search_box){ browser.input(:class, "search search-autosuggest") }

    def play_music_random
      browser.scroll.to [500,500]
      playlist.first.click
      playlist.sort_by{rand}.each do |song|
        view = song.div.wd.location_once_scrolled_into_view.values
        browser.scroll.to(view)
        Watir::Wait.until { song.visible? }
        song.click if song.div.visible?
        sleep rand(15..68)
      end
    end
  end
end
