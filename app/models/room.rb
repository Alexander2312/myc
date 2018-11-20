class Room < ApplicationRecord
  belongs_to :property
  has_many :room_elements, dependent: :destroy
end
