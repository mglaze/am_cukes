$LOAD_PATH << File.expand_path('../../../lib/sites', __FILE__)
$PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '../..'))
Dir["#{$PROJECT_ROOT}/lib/sites/*.rb"].each { |file| require file}
require 'rspec'
require 'taza'
require 'cucumber'
require 'watir-webdriver'
require 'pry'
require 'pry-nav'
require 'faker'
require 'httparty'


# Default Settings
ENV['TAZA_ENV'] ||= 'isolation'
ENV['BROWSER'] ||= 'chrome'
Watir::always_locate = true
