FactoryGirl.define do
  factory :song_fragment do
    association :song
    offset_start 0
    offset_end  10
  end
end
