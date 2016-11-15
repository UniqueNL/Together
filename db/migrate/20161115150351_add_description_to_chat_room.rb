class AddDescriptionToChatRoom < ActiveRecord::Migration[5.0]
  def change
    add_column :chat_rooms, :description, :text
  end
end
