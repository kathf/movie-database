require 'rails_helper'

RSpec.describe Movie, type: :model do
  it { is_expected.to have_and_belong_to_many(:genres) }
  it { is_expected.to have_one(:director) }
  it { is_expected.to have_many(:castings) }
  it { is_expected.to have_many(:cast_members).through(:castings) }
end
