require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_many(:goals) }
  it { is_expected.to have_one(:active_goal) }

  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email) }
  it { is_expected.to validate_length_of(:email).is_at_most(255) }
  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to validate_length_of(:password).is_at_least(6) }
  it { is_expected.to validate_presence_of(:nickname) }
  it { is_expected.to validate_length_of(:nickname).is_at_least(6).is_at_most(255) }
end
