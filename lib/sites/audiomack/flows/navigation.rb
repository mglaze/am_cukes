require 'rubygems'

module Audiomack
  class Audiomack
    def base_url
      Taza::Settings.site_file('audiomack')[:url]
    end

    def go_to_artist_page(artist)
      browser.goto "#{base_url}/artist/#{artist}"
    end

    def go_to_album_page(artist, album)
      browser.goto "#{base_url}/album/#{artist}/#{album}"
    end

    def go_to_signup_page
      browser.goto "#{base_url}/account/create"
    end
  end
end
