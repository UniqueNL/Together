class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :chatrooms

  def chatrooms
    @chat_rooms = ChatRoom.all
    @themes = Theme.all
  end
end
