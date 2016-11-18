require 'rails_helper'
require 'capybara'

feature 'INTEGRATION TEST: Create a chatroom', js: true do
  let(:user) { create :user, email: "admin@test.com", password: "secret", admin: true }

  before { login_as user }

  scenario 'by filling in the form' do

    visit new_chat_room_path

    fill_in 'chatroom_title', with: "thema1"
    fill_in 'chatroom_description', with: "Description"
    find(:xpath, 'input[type="checkbox"]').first.click
    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    expect(page).to have_content('thema1')
  end
end

feature 'INTEGRATION TEST: Cant create a chatroom as normal user', js: true do
  let(:user) { create :user, email: "admin@test.com", password: "secret", admin: false }

  before { login_as user }

  scenario 'by filling in the form' do
    visit new_chat_room_path

    expect(page).not_to have_content('chatroom_title')
  end
end
