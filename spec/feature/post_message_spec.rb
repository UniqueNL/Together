require 'rails_helper'
require 'capybara'

feature 'INTEGRATION TEST: Posting a message', js: true do
  let(:user) { create :user, email: "admin@test.com", password: "secret" }
  let!(:chat_room) {create :chat_room, user: user, title: "channel" }
  before { login_as user }
  #
  # scenario 'posted in a chatroom' do
  #   visit chat_room_path(chat_room)
  #   sleep(1)
  #   # Enter description in the text field
  #   # Expect the new task to be displayed in the list of tasks
  #   expect(page).to have_content(chat_room.title)
  #
  #   fill_in 'formMessageInput', with: "testing\n"
  #   sleep(1)
  #   expect(page).to have_content("testing")
  # end


  # RSPEC DOESNT RECOGNIZE ACTIONCABLE.
end
