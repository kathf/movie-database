require 'rails_helper'

RSpec.describe Casting, type: :model do
  it { is_expected.to belong_to(:movie) }
  it { is_expected.to belong_to(:cast_member) }
end
