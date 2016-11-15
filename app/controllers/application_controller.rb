class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index
    @chat_rooms = ChatRoom.all
  end
end
