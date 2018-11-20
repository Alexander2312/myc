class Property < ApplicationRecord
	belongs_to :user
	has_many :leases
	has_many :rooms
end
