require 'rails_helper'

RSpec.describe CastMember, type: :model do
  it { is_expected.to have_many(:castings) }
  it { is_expected.to have_many(:movies).through(:castings) }
end
