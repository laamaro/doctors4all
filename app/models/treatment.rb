class Treatment < ApplicationRecord
  belongs_to :user
  has_many :appointments

  has_one_attached :photo
  validates :address, :start_date, :end_date, :specialty, :price, :user, presence: true
end
