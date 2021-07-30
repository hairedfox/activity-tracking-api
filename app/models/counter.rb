class Counter < ApplicationRecord
  belongs_to :goal_activity

  validates :unit, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0}
end
