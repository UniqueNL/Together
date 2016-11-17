require 'rails_helper'

RSpec.describe Message, type: :model do
  let(:user) { create :user }
  let(:chat_room) { create :chat_room, user: user }

  describe "creating a message" do
    describe "text in body" do
      it "is valid between 2 and 1000 characters" do
        message = Message.new(body: "Hi there!", user: user, chat_room: chat_room )
        message.valid?
        expect(message.errors).to be_empty
      end

      it "is invalid over 1000 characters" do
        message = Message.new(body: Faker::Lorem.sentence(1001), user: user, chat_room: chat_room )
        message.valid?
        expect(message.errors).to have_key(:body)
      end

      it "is invalid below 2 characters" do
        message = Message.new(body: Faker::Lorem.characters(1), user: user, chat_room: chat_room )
        message.valid?
        expect(message.errors).to have_key(:body)
      end
    end

    describe "containing user" do
      it "is valid with user" do
        message = Message.new(user: user)
        message.valid?
        expect(message.errors).not_to have_key(:user)
      end

      it "is invalid without user" do
        message = Message.new()
        message.valid?
        expect(message.errors).to have_key(:user)
      end
    end

    describe "containing chatroom" do
      it "is valid with chatroom" do
        message = Message.new(chat_room: chat_room)
        message.valid?
        expect(message.errors).not_to have_key(:chat_room)
      end

      it "is invalid without chatroom" do
        message = Message.new()
        message.valid?
        expect(message.errors).to have_key(:chat_room)
      end
    end
  end
end
