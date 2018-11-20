class RoomElementApproval < ApplicationRecord
  belongs_to :condition_report
  belongs_to :room_element
end
