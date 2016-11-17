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
    nickname
  end

  def is_admin?
    admin
  end

  def has_profile?
    profile.present?
  end

end
