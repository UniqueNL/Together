class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room
  validates :body, presence: true, length: {minimum: 2, maximum: 1000}
  after_create_commit { MessageBroadcastJob.perform_later(self) }

  def hours
    created_at.strftime('%H:%M')
  end

  def seconds
    created_at.strftime(':%S')
  end

  def mentioned?
    body.downcase.include?(user.nickname.downcase)
  end
end
