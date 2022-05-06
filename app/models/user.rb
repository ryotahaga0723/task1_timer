class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  validates :password, length: { minimum: 6 ,maximum: 255}

  has_and_belongs_to_many :cookings
end
