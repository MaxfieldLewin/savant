require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    subject { build(:song) }
    it { should validate_presence_of(:title) }
    it { should belong_to(:artist) }
    it { should validate_uniqueness_of(:title).scoped_to(:artist_id)}
  end
end
