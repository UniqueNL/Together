class RegistrationsController < Devise::RegistrationsController
  before_action :chatrooms

  def chatrooms
    @chat_rooms = ChatRoom.all
  end
end
