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

FactoryGirl.define do
  factory :song_fragment do
    association :song
    offset_start 0
    offset_end  10
  end
end
