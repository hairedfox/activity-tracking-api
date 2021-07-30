require 'rails_helper'

RSpec.describe GoalActivity, type: :model do
  it { is_expected.to belong_to(:goal) }
  it { is_expected.to belong_to(:activity) }
  it { is_expected.to have_one(:target) }
  it { is_expected.to have_many(:counters) }

  it { is_expected.to define_enum_for(:activity_type).with_values(check: 1, counter: 2) }
end
