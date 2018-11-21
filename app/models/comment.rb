class Comment < ApplicationRecord
  belongs_to :room_element
  belongs_to :condition_report
  belongs_to :user

  mount_uploader :photo, PhotoUploader
  validates :text_comment, presence: true, allow_blank: false
end
