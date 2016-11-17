require 'rails_helper'
require 'capybara'

feature 'Create a chatroom', js: true do
  let(:user1) { create :user, email: "admin@test.com", password: "secret", admin: true }
  let(:user2) { create :user, email: "admin@test.com", password: "secret" }

  before { login_as user }

  scenario 'by filling in the form' do

    visit new_chat_room_path
    # Enter description in the text field

    fill_in 'chatroom_title', with: "thema1"
    fill_in 'chatroom_description', with: "Description"
    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('thema1')
  end

  scenario 'is not possible for non-admin' do

    visit new_chat_room_path
    # Enter description in the text field

    fill_in 'chatroom_title', with: "thema1"
    fill_in 'chatroom_description', with: "Description"
    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('thema1')
  end
end
