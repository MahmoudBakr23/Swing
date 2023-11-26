require "rails_helper"

RSpec.feature "Login", :type => :feature do
  let(:user) { create(:user) } # The let method comes from RSpec to
  # define a helper object. # The create method comes from the FactoryBot gem.

  scenario 'user navigates to the login page and succesfully logs in', js: true do
    user
    visit root_path # Visit a specific URL.
    find('nav a', text: 'Login').click # Find an element using a CSS or XPath selector.
    fill_in 'user[email]', with: user.email # fills in the field by its name attribute.
    # fill_in 'Email', with: user.email # fills in the field by its label text.
    # fill_in :class, 'email', with: user.email # fills in the field by its class name.
    # fill_in :css, '.email', with: user.email # fills in the field by CSS selector.
    fill_in 'user[password]', with: user.password
    find('.login-button').click
    expect(page).to have_selector('#user-settings') # Check if there is an element on the page that matches the selector.
  end
end
