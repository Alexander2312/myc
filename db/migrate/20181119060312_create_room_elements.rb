class CreateRoomElements < ActiveRecord::Migration[5.2]
  def change
    create_table :room_elements do |t|
      t.string :name
      t.string :text_comment
      t.boolean :approved

      t.timestamps
    end
  end
end
