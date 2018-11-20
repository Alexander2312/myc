class Property < ApplicationRecord
  belongs_to :user
  has_many :leases, dependent: :destroy
  has_many :rooms, dependent: :destroy
end
