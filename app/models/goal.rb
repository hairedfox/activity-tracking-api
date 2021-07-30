class Goal < ApplicationRecord
  belongs_to :user
  has_many :goal_activities, dependent: :destroy
  has_many :activities, through: :goal_activities

  validates :name, presence: true, length: { minimum: 6, maximum: 255 }
  validates :due_date, presence: true

  scope :active, -> { where(active: true) }
end
