# == Schema Information
#
# Table name: songs
#
#  id                 :integer          not null, primary key
#  artist_id          :integer          not null
#  title              :string           not null
#  description        :text
#  contents           :text             not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

FactoryGirl.define do
  factory :song do
    title 'People are from the stars'
    description 'A rockin tune'
    contents "lyric lyric lyric lyric lyric lyric lyric lyric lyric lyric lyric "
    artist
  end
end
