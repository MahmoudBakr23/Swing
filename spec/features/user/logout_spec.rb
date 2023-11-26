require "rails_helper"

RSpec.feature "Login", :type => :feature do
  let(:user) { create(:user) }

  scenario 'user navigates to the login page and succesfully logs in', js: true do
# using the built-in devise method sign_in
    sign_in user

    visit root_path

# testing the login funcionality
    # find('nav a', text: 'Login').click
    # fill_in 'Email', with: user.email
    # fill_in 'Password', with: user.password
    # find('.login-button').click

    expect(page).to have_content(user.name)
    find('#user-settings').click
    find('li a', text: 'Log out').click
    expect(page).to have_content('Login')
  end
end
