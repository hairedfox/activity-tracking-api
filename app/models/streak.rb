class Streak < ApplicationRecord
  belongs_to :goal_activity

  validates :streak, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :achieved_at, presence: true
end
