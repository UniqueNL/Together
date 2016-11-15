class RegistrationsController < Devise::RegistrationsController
  before_action :chatrooms

  def chatrooms
    @chat_rooms = ChatRoom.all
  end

  private

    def sign_up_params
    params.require(:user).permit(:nickname, :firstname, :lastname, :email, :password, :password_confirmation)
    end

    def account_update_params
    params.require(:user).permit(:nickname, :firstname, :lastname, :email, :password, :password_confirmation, :current_password)
    end
end
