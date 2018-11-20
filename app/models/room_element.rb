class RoomElement < ApplicationRecord
  belongs_to :room
  has_many :comments, dependent: :destroy
  has_many :room_element_approvals, dependent: :destroy
end
