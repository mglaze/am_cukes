module Taza
  class Browser

    def self.create_watir_webdriver(params)
      # set proxy in support/browser.rb and select at random
      case params[:browser]
      when 'chrome'
        caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "--headless", "--screenshots", "--hide-scrollbars"]})
        driver = Selenium::WebDriver.for(params[:browser].to_sym, desired_capabilities: caps)
        Watir::Browser.new driver
      when 'firefox'
        Watir::Browser.new(params[:browser])
      end
    end
  end
end
