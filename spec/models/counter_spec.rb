require 'rails_helper'

RSpec.describe Counter, type: :model do
  it { is_expected.to belong_to(:goal_activity) }

  it { is_expected.to validate_presence_of(:unit) }
  it { is_expected.to validate_presence_of(:quantity) }
  it { is_expected.to validate_numericality_of(:quantity).is_greater_than_or_equal_to(0).only_integer }
end
