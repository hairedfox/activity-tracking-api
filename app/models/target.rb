class Target < ApplicationRecord
  belongs_to :goal_activity

  validates :expected_number, presence: true, numericality: { only_integer: true }
end
