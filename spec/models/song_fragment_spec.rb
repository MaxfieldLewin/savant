require 'rails_helper'
require 'spec_helper'

RSpec.describe SongFragment, type: :model do
  describe "validations" do
    before(:all) do
      @song = create(:song)
      @fragment = @song.song_fragments.create(offset_start: 0, offset_end: 10)
    end

    subject { @fragment }

    it { should belong_to(:song) }
    it { should validate_presence_of(:song_id) }
    it { should validate_presence_of(:offset_start) }
    it { should validate_presence_of(:offset_end) }

    it "causes other fragments built on the same interval to be invalid" do
      expect( @song.song_fragments.build(offset_start: 0, offset_end: 10) ).not_to be_valid
    end


  end
end
