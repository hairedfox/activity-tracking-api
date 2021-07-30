class GoalActivity < ApplicationRecord
  belongs_to :goal
  belongs_to :activity
  has_one :target, dependent: :destroy
  has_many :counters, dependent: :destroy
  has_many :streaks, dependent: :destroy

  enum activity_type: {
    check: 1,
    counter: 2
  }
end
