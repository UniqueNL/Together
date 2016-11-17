require 'rails_helper'
require 'capybara'

feature 'INTEGRATION TEST: Edit profile', js: true do
  let(:user) { create :user, email: "admin@test.com", password: "secret" }
  before { login_as user }

  scenario 'Going to the edit profile page' do
    visit root_path
    # Enter description in the text field
    click_link('Edit profile')
    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Delete my account')
  end
end
