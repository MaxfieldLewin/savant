# == Schema Information
#
# Table name: song_fragments
#
#  id           :integer          not null, primary key
#  song_id      :integer          not null
#  offset_start :integer          not null
#  offset_end   :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'
require 'spec_helper'

RSpec.describe SongFragment, type: :model do
  describe "validations" do
    before(:all) do
      @song = create(:song)
      @fragment = @song.song_fragments.create(offset_start: 0, offset_end: 11)
    end

    subject { @fragment }

    it { should belong_to(:song) }
    it { should validate_presence_of(:song_id) }
    it { should validate_presence_of(:offset_start) }
    it { should validate_presence_of(:offset_end) }

    it "causes other fragments built on the exact same interval to be invalid" do
      expect( @song.song_fragments.build(offset_start: 0, offset_end: 11) ).not_to be_valid
    end

    it "causes other fragments built on a partially overlapping interval to be invalid" do
      expect( @song.song_fragments.build(offset_start: 6, offset_end: 16) ).not_to be_valid
    end

    it "does not prevent immediately adjacent fragments from being valid" do
      expect( @song.song_fragments.build(offset_start: 17, offset_end: 21) ).to be_valid
    end
  end

  describe "before validate actions" do

    before(:each) do
      @song = create(:song, contents: "aaaaa bbbb\nccc dd\n")

    it "adjusts the fragment offset_end to trim trailing spaces or newlines" do
      @fragmentOne = @song.song_fragments.build(offset_start: 0, offset_end: 5)
      @fragmentTwo = @song.song_fragments.build(offset_start: 6, offset_end: 10)

      @fragmentOne.valid?
      @fragmentTwo.valid?

      expect( @fragmentOne.offset_end ).to eq(4)
      expect( @fragmentTwo.offset_end ).to eq(9)
    end

    it "adjusts the fragment offset_start to trim leading spaces or newlines" do
      @fragmentOne = @song.song_fragments.build(offset_start: 5, offset_end: 9)
      @fragmentTwo = @song.song_fragments.build(offset_start: 10, offset_end: 13)

      @fragmentOne.valid?
      @fragmentTwo.valid?

      expect( @fragmentOne.offset_start ).to eq(6)
      expect( @fragmentTwo.offset_start ).to eq(11)
    end

    it "adjusts fragments with whitespace on both ends" do
      @fragment = @song.song_fragments.build(offset_start: 5, 14);

      @fragment.valid?

      expect( @fragment.offset_start ).to eq(6)
      expect( @fragment.offset_end ).to eq(13)
    end
  end
end
