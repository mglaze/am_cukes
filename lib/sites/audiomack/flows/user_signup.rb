require 'rubygems'

module Audiomack
  class Audiomack

    def signup_user(user)
      user_signup_page.get_started_button.click
      user_signup_page.signup_form.wait_until_present
      user_signup_page.artist_name_field.send_keys(user[:user][:name])
      user_signup_page.email_field.send_keys(user[:user][:email])
      user_signup_page.password_field.send_keys(user[:user][:password])
      user_signup_page.confirm_password_field.send_keys(user[:user][:password])
      user_signup_page.agree_terms.click
      user_signup_page.signup_button.click
    end

  end
end
