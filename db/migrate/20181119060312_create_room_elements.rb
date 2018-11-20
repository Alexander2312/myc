class CreateRoomElements < ActiveRecord::Migration[5.2]
  def change
    create_table :room_elements do |t|
      t.string :name
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
