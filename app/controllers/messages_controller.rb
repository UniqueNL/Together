class MessagesController < ApplicationController
  def show
    @message = Message.all.order_by(:body)
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    redirect_to :back
  end
end
