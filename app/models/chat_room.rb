class ChatRoom < ApplicationRecord
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_and_belongs_to_many :themes

  validates :title, presence: true, length: {minimum: 2, maximum: 20}
  validates :description, presence: true, length: {minimum: 5, maximum: 50}
end
