class Treatment < ApplicationRecord
  belongs_to :user
  has_many :appointments

  has_one_attached :photo
<<<<<<< HEAD
  validates :address, :availability, :specialty, :price, :user, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
=======
  validates :address, :start_date, :end_date, :specialty, :price, :user, presence: true
>>>>>>> master
end
