class MessagesController < ApplicationController

  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    redirect_to :back
  end
end
