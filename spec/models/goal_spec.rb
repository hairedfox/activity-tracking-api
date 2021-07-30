require 'rails_helper'

RSpec.describe Goal, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:goal_activities) }
  it { is_expected.to have_many(:activities).through(:goal_activities) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_length_of(:name).is_at_least(6).is_at_most(255) }
  it { is_expected.to validate_presence_of(:due_date) }
end
