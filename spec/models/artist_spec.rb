require 'rails_helper'
require 'spec_helper'
RSpec.describe Artist, type: :model do
  describe "validations" do
    subject { build(:artist) }
    it { should validate_presence_of(:name) }
  end
end
