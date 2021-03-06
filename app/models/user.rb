class User < ApplicationRecord
  has_secure_password
  has_many :reservations
  has_many :restaurants

  validates :first_name, :last_name, :email, :phone, presence: true
  validates :email, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
