class CreateLeases < ActiveRecord::Migration[5.2]
  def change
    create_table :leases do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :property, foreign_key: true
      t.references :user, foreign_key: true



      t.timestamps
    end
  end
end
