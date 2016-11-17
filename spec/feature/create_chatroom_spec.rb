require 'rails_helper'

feature 'Create a chatroom', js: true do
  scenario 'Creating a chatroom' do
    before { login_as user }
    let(:user) { create :user, email: "admin@test.com", password: "secret", admin: true }


    visit root_path

    # Enter description in the text field
    fill_in 'todo_title', with: 'Be Batman'

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Be Batman')
  end
end
