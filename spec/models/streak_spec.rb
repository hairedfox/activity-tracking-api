require 'rails_helper'

RSpec.describe Streak, type: :model do
  it { is_expected.to belong_to(:goal_activity) }

  it { is_expected.to validate_presence_of(:streak) }
  it { is_expected.to validate_numericality_of(:streak).only_integer.is_greater_than_or_equal_to(0) }
  it { is_expected.to validate_presence_of(:achieved_at) }
end
