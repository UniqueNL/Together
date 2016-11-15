class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy


  def name
    if nickname
      nickname
    else
      firstname + " " + lastname
    end
  end

  def has_profile?
    profile.present?
  end

end
