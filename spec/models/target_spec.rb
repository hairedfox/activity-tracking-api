require 'rails_helper'

RSpec.describe Target, type: :model do
  it { is_expected.to belong_to(:goal_activity) }

  it { is_expected.to validate_presence_of(:expected_number) }
  it { is_expected.to validate_numericality_of(:expected_number).only_integer }
end
