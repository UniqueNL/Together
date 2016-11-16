class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates_presence_of :nickname, :firstname, :lastname
  validates_uniqueness_of :nickname

  def name
    if nickname
      nickname
    elsif firstname
      firstname
    else
      email
    end
  end

  def has_profile?
    profile.present?
  end

end
