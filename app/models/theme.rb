class Theme < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_and_belongs_to_many :chat_rooms
end
