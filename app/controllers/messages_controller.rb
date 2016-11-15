class MessagesController < ApplicationController

  def destroy
    Message.find(params[:id]).destroy
  end
end
