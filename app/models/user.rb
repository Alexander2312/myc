class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :leases, dependent: :destroy
  has_many :condition_reports, through: :leases
  has_many :properties, dependent: :destroy
  has_many :comments, dependent: :destroy

  #after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
