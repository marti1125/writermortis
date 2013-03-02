Given /^the following users exist:$/ do |table|
    table.hashes.each do |user|
        @user = User.create :email => user[:email], :password => user[:password]
    end
end

When /^I am on the homepage$/ do
    visit '/'
end

When /^I click "(.*?)"$/ do |arg1|
    click_link arg1
end

Then /^I should see "(.*?)"$/ do |arg1|
    page.should have_content arg1
end

Then /^I fill in "(.*?)" with "(.*?)"$/ do |form, value|
    fill_in form, :with => value
end

When /^I push "(.*?)"$/ do |arg1|
    click_button arg1
end

When /^I am logged in$/ do
    visit '/accounts/login'
    fill_in "user_email", :with => "test@example.com"
    fill_in "user_password", :with => "testpass"
    click_button "Sign in"
end