class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :text_comment
      t.string :photo
      t.references :condition_report, foreign_key: true
      t.references :user, foreign_key: true
      t.references :room_element, foreign_key: true
      t.string :state

      t.timestamps
    end
  end
end
