class Comment < ApplicationRecord
  belongs_to :room_element
  belongs_to :condition_report
  belongs_to :user

  validates :text_comment, presence: true, allow_blank: false
  mount_uploader :photo, PhotoUploader
end
