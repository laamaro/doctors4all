class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :appointments
  has_many :treatments

  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: true
  validates :first_name, uniqueness: { scope: :last_name, message: 'This name is already in use.' }
end
