FactoryGirl.define do
  factory :song_fragment do
    sequence :song do |n|
      build(:song, id: n)
    end

    offset_start 0
    offset_end  10
  end
end
