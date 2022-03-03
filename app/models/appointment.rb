class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :treatment

  validates :date, :user, :treatment, presence: true
end
