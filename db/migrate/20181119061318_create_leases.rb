class CreateLeases < ActiveRecord::Migration[5.2]
  def change
    create_table :leases do |t|
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
