class Treatment < ApplicationRecord
  before_save :specialty_capitalize
  belongs_to :user
  has_many :appointments
  has_one_attached :photo
  validates :address, :start_date, :end_date, :specialty, :price, :user, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def specialty_capitalize
    self.specialty = self.specialty.capitalize
  end
end
