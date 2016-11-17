class CreateChatroomsThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :chatrooms_themes do |t|
      t.belongs_to :chat_room, index: true
      t.belongs_to :theme, index: true
    end
  end
end
