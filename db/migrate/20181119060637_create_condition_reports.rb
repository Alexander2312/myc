class CreateConditionReports < ActiveRecord::Migration[5.2]
  def change
    create_table :condition_reports do |t|
      t.boolean :owner_signed, default: false
      t.boolean :tenant_signed, default: false
      t.references :lease, foreign_key: true

      t.timestamps
    end
  end
end
