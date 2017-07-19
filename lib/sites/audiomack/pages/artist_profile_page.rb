require 'rubygems'
require 'taza/page'

module Audiomack
  class ArtistProfilePage < ::Taza::Page
    element(:follow_artist){browser.a(:class => "follow-artist")}
    element(:track_feed){browser.div(:class => "feed")}
    
    def get_track_list
      track_feed.each {|track| track.play}
    end
  end
end
