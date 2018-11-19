class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :square_meter
      t.boolean :furnished

      t.timestamps
    end
  end
end
