require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create :user }
  let(:chat_room) { create :chat_room, user: user }

  describe "creating a user" do
    describe "firstname" do
      it "is valid with first name" do
        user = User.new(firstname: "Sam")
        user.valid?
        expect(user.errors).not_to have_key(:firstname)
      end

      it "is invalid without first name" do
        user = User.new(firstname: "")
        user.valid?
        expect(user.errors).to have_key(:firstname)
      end
    end

    describe "lastname" do
      it "is valid with last name" do
        user = User.new(lastname: "Sam")
        user.valid?
        expect(user.errors).not_to have_key(:lastname)
      end

      it "is invalid without last name" do
        user = User.new(lastname: "")
        user.valid?
        expect(user.errors).to have_key(:lastname)
      end
    end

    describe "nickname" do
      it "is valid with nickname" do
        user = User.new(nickname: "Sam")
        user.valid?
        expect(user.errors).not_to have_key(:nickname)
      end

      it "is invalid without nickname" do
        user = User.new(nickname: "")
        user.valid?
        expect(user.errors).to have_key(:nickname)
      end
    end

    describe "email" do
      it "is valid with email" do
        user = User.new(email: "someone@someone.nl")
        user.valid?
        expect(user.errors).not_to have_key(:email)
      end

      it "is invalid without email" do
        user = User.new(email: "")
        user.valid?
        expect(user.errors).to have_key(:email)
      end
    end

    describe "password" do
      it "is valid with password" do
        user = User.new(password: "dassaddasda")
        user.valid?
        expect(user.errors).not_to have_key(:password)
      end

      it "is invalid without password" do
        user = User.new(password: "")
        user.valid?
        expect(user.errors).to have_key(:password)
      end
    end
  end
end
