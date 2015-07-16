require 'rails_helper'
require 'spec_helper'

RSpec.describe SongFragment, type: :model do
  describe "validations" do
    subject { build(:song_fragment) }
    it { should belong_to(:song) }
    it { should validate_presence_of(:song_id) }
    it { should validate_presence_of(:offset_start) }
    it { should validate_presence_of(:offset_end) }

    describe "custom validations" do

      it "is invalid if the interval is the same as another fragment on the same song" do
        expect( build(:song_fragment) ).not_to be_valid
      end

    end
  end
end
