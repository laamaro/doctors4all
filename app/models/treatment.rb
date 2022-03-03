class Treatment < ApplicationRecord
  belongs_to :user
  has_many :appointments

  validates :address, :availability, :specialty, :price, :user, presence: true
end
