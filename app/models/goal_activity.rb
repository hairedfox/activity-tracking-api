class GoalActivity < ApplicationRecord
  belongs_to :goal
  belongs_to :activity

  enum activity_type: {
    check: 1,
    counter: 2
  }
end
