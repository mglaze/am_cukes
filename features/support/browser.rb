module Taza
  class Browser

    def self.create_watir_webdriver(params)
      # set proxy in support/browser.rb and select at random
      if params[:browser] == "firefox"
        profile = Selenium::WebDriver::Firefox::Profile.new
        profile.proxy = Selenium::WebDriver::Proxy.new :http => params[:proxies].values.sample
        browser = Watir::Browser.new :firefox, :profile => profile
      end
      browser
    end
  end
end
