class Treatment < ApplicationRecord
  belongs_to :user
  has_many :appointments

  validates :address, :start_date, :end_date, :specialty, :price, :user, presence: true
end
