class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :square_meter
      t.boolean :furnished, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
