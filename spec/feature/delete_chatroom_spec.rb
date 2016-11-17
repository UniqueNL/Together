require 'rails_helper'
require 'capybara'

feature 'INTEGRATION TEST: Delete a chatroom', js: true do
  let(:user) { create :user, email: "admin@test.com", password: "secret", admin: true }
  let(:chat_room) { create :chat_room, title: "channel", user: user}
  before { login_as user }

  scenario 'Going to the chatroom' do
    # visit chat_rooms_path
    # click_link(chat_room.title)
    # sleep(2)
    # click_link('Delete channel')
    # expect(page).not_to have_content(chat_room.title)

    # NOT WORKING YET. CANT FIND THE LINK DELETE CHANNEL.
  end
end
