FactoryGirl.define do
  factory :song_fragment do
    association :song, factory: :song, strategy: :build
    offset_start 0
    offset_end  10
  end
end
