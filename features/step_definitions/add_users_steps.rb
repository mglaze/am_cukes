Given(/^I am on the signup page$/) do
  @visitor.go_to_signup_page
end

When(/^I want to create a new AudioMack user$/) do
  @visitor.signup_user(@new_user)
end

Then(/^I should see I am logged in as the new user$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
