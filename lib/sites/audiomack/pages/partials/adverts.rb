require 'rubygems'
require 'taza/page'

module Audiomack
  class Adverts < ::Taza::Page
    element(:main_advert){ browser.div(:id => "cmn_interstitial") }
    element(:skip_advert){ browser.div(:id => "cmn_fullscreen_continue") }

  end
end
