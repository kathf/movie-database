require 'rails_helper'

RSpec.describe Director, type: :model do
  it { is_expected.to belong_to(:movie) }
end
