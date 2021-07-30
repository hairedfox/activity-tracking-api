class Activity < ApplicationRecord
  has_many :goal_activities, dependent: :destroy
  has_many :goals, through: :goal_activities

  validates :name, presence: true, length: { minimum: 6, maximum: 255 }
end
