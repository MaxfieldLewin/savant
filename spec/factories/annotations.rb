# == Schema Information
#
# Table name: annotations
#
#  id                 :integer          not null, primary key
#  song_fragment_id   :integer          not null
#  contents           :text             not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

FactoryGirl.define do
  factory :annotation do
    
  end

end
