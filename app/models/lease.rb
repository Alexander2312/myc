class Lease < ApplicationRecord
	belongs_to :user
	has_many :condition_reports
end
