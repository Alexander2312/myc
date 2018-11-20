class Comment < ApplicationRecord
	belongs_to :room_elements, dependent: :destroy
	belongs_to :condition_reports
end
