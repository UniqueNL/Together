class MessagesController < ApplicationController

  def destroy
    @message = Message.find(params[:id]).destroy
    flash[:success] = "message deleted"
    redirect_to root_path
  end
end
