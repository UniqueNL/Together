require 'rails_helper'
require 'capybara'

feature 'INTEGRATION TEST: Edit profile', js: true do
  let(:user) { create :user, email: "admin@test.com", password: "secret" }
  before { login_as user }

  scenario 'Going to the edit profile page' do
    visit root_path
    
    click_link('Edit profile')

    expect(page).to have_content('Delete my account')
  end
end
