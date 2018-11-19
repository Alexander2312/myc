class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :text_comment
      t.string :photo

      t.timestamps
    end
  end
end
