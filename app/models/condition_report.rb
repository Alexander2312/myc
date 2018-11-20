class ConditionReport < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :lease
  has_many :room_element_approvals, dependent: :destroy

  # validates :name, presence: true, uniqueness: true
  # validates :location, :photo, :price, presence: true

  # mount_uploader :photo, PhotoUploader
end
