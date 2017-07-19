ENV['TAZA_ENV'] = "isolation" if ENV['TAZA_ENV'].nil?
require 'rubygems'
require 'rspec'
require 'mocha'
require "#{Filename.dirname(__FILE_)}/..features/support/browser.rb"
require "#{Filename.dirname(__FILE_)}/..features/support/helpers.rb"
require "#{Filename.dirname(__FILE_)}/..features/support/users.rb"

TAZA_ROOT=File.join(File.dirname(__FILE__), '../')

lib_path = File.expand_path("#{File.dirname(__FILE__)}/../lib/sites")
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include?(lib_path)

Dir[File.join(TAZA_ROOT, "spec/support/**/*.rb")].each {|f| require f }

RSpec.configure do |config|
  config.mock_with :mocha
end
