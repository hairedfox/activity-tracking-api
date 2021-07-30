class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: true }, email: true, length: { maximum: 255 }
  validates :password, length: { minimum: 6 }
  validates :nickname, presence: true, length: { minimum: 6, maximum: 255 }
end
