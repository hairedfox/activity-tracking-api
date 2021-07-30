class User < ApplicationRecord
  has_many :goals, dependent: :destroy
  has_one :active_goal, -> { active }, class_name: 'Goal', inverse_of: :user

  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: true }, email: true, length: { maximum: 255 }
  validates :password, length: { minimum: 6 }
  validates :nickname, presence: true, length: { minimum: 6, maximum: 255 }
end
