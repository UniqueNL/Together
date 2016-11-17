require 'rails_helper'

RSpec.describe ChatRoom, type: :model do
  describe "creating a chatroom" do
    let(:user) { create :user }
    let(:chat_room) { create :chat_room, user: user }

    describe "making a title" do
      it "is valid between 3 and 20 characters" do
        chatroom = ChatRoom.new(title: "Hoi!")
        chatroom.valid?
      end

      it "is invalid over 20 characters" do
        chatroom = ChatRoom.new(title: "Hoi! This is just a test to see if it exceeds the 20 characters.")
        chatroom.valid?
        expect(chatroom.errors).to have_key(:title)
      end

      it "is invalid below 2 characters" do
        chatroom = ChatRoom.new(title: "H")
        chatroom.valid?
        expect(chatroom.errors).to have_key(:title)
      end

      it "is invalid with a blank field" do
        chatroom = ChatRoom.new(title: "")
        chatroom.valid?
        expect(chatroom).to be_invalid
      end
    end

    describe "description" do
      it "is valid (5-50 characters)" do
        chatroom = ChatRoom.new(description: Faker::Lorem.characters(14))
        chatroom.valid?
      end

      it "is invalid with a blank field" do
        chatroom = ChatRoom.new(description: "")
        chatroom.valid?
        expect(chatroom.errors).to have_key(:description)
      end

      it "is invalid with 3 characters" do
        chatroom = ChatRoom.new(description: "Hoi")
        chatroom.valid?
        expect(chatroom.errors).to have_key(:description)
      end

      it "is invalid over 50 characters" do
        chatroom = ChatRoom.new(description: Faker::Lorem.characters(51))
        chatroom.valid?
        expect(chatroom.errors).to have_key(:description)
      end
    end

    describe "linking to user" do
      it "is linked" do
        user = User.new()
        chatroom = ChatRoom.new(user: user)
        chatroom.valid?
      end

      it "is not linked" do
        chatroom = ChatRoom.new()
        chatroom.valid?
        expect(chatroom.errors).to have_key(:user)
      end
    end

    describe "check if all validations work" do
      it "is correct" do
        chatroom = ChatRoom.new(title: "Chatroom", description: "Testing the description", user: user)
        chatroom.valid?
        expect(chatroom.errors).to be_empty
      end
    end
  end
end
