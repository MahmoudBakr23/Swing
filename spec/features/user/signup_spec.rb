require "rails_helper"

RSpec.feature "Signup", :type => :feature do
  let(:user) { build(:user) } # The build method comes from the FactoryBot. It creates and not save the instance.

  scenario 'user navigates to the signup page and succesfully signs up', js: true do
    visit root_path
    find('nav a', text: 'Signup').click
    fill_in 'Name', with: user.name # fills in the field by its label text.
    fill_in 'Email', with: user.email # fills in the field by its label text.
    fill_in 'Password', with: user.password # fills in the field by its label text.
    fill_in 'Password confirmation', with: user.password_confirmation # fills in the field by its label text.
    find('.sign-up-button').click
    expect(page).to have_content(user.name)
  end
end
