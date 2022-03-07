class Treatment < ApplicationRecord
  belongs_to :user
  has_many :appointments
  has_one_attached :photo
  validates :address, :availability, :specialty, :price, :user, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
