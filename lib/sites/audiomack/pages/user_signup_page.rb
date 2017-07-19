require 'rubygems'
require 'taza/page'

module Audiomack
  class UserSignupPage < ::Taza::Page
    element(:get_started_button) { browser.p(:class, "get-started")}
    element(:signup_form) { browser.div(:id, 'signup-modal') }
    element(:artist_name_field) { browser.input(:name, "artist_name") }
    element(:email_field) { browser.input(:name, "email") }
    element(:password_field) { browser.input(:name, "password") }
    element(:confirm_password_field) { browser.input(:name, "password2") }
    element(:agree_terms) { browser.checkbox(:name, "agree_to_terms") }
    element(:signup_button) { browser.input(:value, "Sign Up") }
  end
end
