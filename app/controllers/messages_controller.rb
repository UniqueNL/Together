class MessagesController < ApplicationController

  def destroy
    @messages = ChatRoom.messages
    @messages.destroy
    
    redirect_to root_path
  end
end
