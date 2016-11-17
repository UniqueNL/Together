class ChatRoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chat_rooms = ChatRoom.all
  end

  def new
    @chat_room = ChatRoom.new
  end

  def show
    @chat_room = ChatRoom.includes(:messages).find_by(id: params[:id])
    @message = Message.new
    @chat_rooms = ChatRoom.all
  end

  def create
    @chat_room = current_user.chat_rooms.build(chat_room_params) unless current_user.blank?
    if @chat_room.save
      flash[:success] = 'Chat room added!'
      redirect_to chat_rooms_path
    else
      render 'new'
    end
  end

  def edit
    @chat_room = ChatRoom.find(params[:id])
  end

  def update
    @chat_room = ChatRoom.find(params[:id])

    if @chat_room.update_attributes(chat_room_params)
      redirect_to @chat_room
    else
      render 'edit'
    end
  end

  def destroy
    @chat_room = ChatRoom.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to root_path
  end

  private

  def chat_room_params
    params.require(:chat_room).permit(:title, :description, theme_ids: [])
  end
end
