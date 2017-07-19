require 'rubygems'
require 'taza/page'

module Audiomack
  class Header < ::Taza::Page
    element(:search_box){ browser.input(:class, "search search-autosuggest") }
    element(:submit_search){ browser.input(:class, "submit-button") }

    def artist_search(artist)
      search_box.send_keys(artist)
      submit_search.click
    end
  end
end
