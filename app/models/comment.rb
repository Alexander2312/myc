class Comment < ApplicationRecord
  belongs_to :room_element
  belongs_to :condition_report
  belongs_to :user

  validates :state, presence: true
  mount_uploader :photo, PhotoUploader
end
