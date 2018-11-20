class CreateRoomElementApprovals < ActiveRecord::Migration[5.2]
  def change
    create_table :room_element_approvals do |t|
      t.boolean :tenant_approval, default: false
      t.boolean :owner_approval, default: false
      t.references :condition_report, foreign_key: true
      t.references :room_element, foreign_key: true

      t.timestamps
    end
  end
end
