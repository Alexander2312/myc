class Lease < ApplicationRecord
  belongs_to :user
  belongs_to :property
  has_many :condition_reports, dependent: :destroy
end
