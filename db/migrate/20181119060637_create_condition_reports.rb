class CreateConditionReports < ActiveRecord::Migration[5.2]
  def change
    create_table :condition_reports do |t|
      t.datetime :date_of_creation
      t.datetime :date_of_update

      t.timestamps
    end
  end
end
